import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';
import 'package:reminder_app/domain/auth/i_auth_facade.dart';
import 'package:reminder_app/domain/auth/i_user_repository.dart';
import 'package:reminder_app/domain/auth/user.dart';
import 'package:reminder_app/domain/auth/value_objects.dart';
import 'package:reminder_app/domain/core/error.dart';
import 'package:reminder_app/domain/core/value_objects.dart';
import 'package:reminder_app/domain/nutrition/i_nutrition_repository.dart';
import 'package:reminder_app/domain/nutrition/nutrition.dart';
import 'package:reminder_app/domain/nutrition/nutrition_failures.dart';
import 'package:reminder_app/domain/nutrition/value_objects.dart';
import 'package:reminder_app/injectable.dart';
import 'package:reminder_app/presentation/nutrition/misc/nutrients_presentation_classes.dart';

part 'nutrition_form_event.dart';

part 'nutrition_form_state.dart';

part 'nutrition_form_bloc.freezed.dart';

@injectable
class NutritionFormBloc extends Bloc<NutritionFormEvent, NutritionFormState> {
  final INutritionRepository _iNutritionRepository;

  NutritionFormBloc(this._iNutritionRepository)
      : super(NutritionFormState.initial());

  @override
  Stream<NutritionFormState> mapEventToState(
    NutritionFormEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield e.initialNutritionOption.fold(
          () => state,
          (initialNutrition) => state.copyWith(
            nutrition: initialNutrition,
            isEditing: true,
          ),
        );
      },
      nutritionNameChanged: (e) async* {
        yield state.copyWith(
          nutrition:
              state.nutrition.copyWith(nutritionName: NutritionName(e.nameStr)),
          saveFailureOrSuccessOption: none(),
        );
      },
      nutritionDateTimeChanged: (e) async* {
        yield state.copyWith(
          nutrition: state.nutrition.copyWith(
            nutritionDateTime: NutritionDateTime(e.dateTimeInt),
          ),
          saveFailureOrSuccessOption: none(),
        );
      },
      nutrientsListChanged: (e) async* {
        yield state.copyWith(
          nutrition: state.nutrition.copyWith(
            nutrientsList: NutrientsList(
              e.nutrientsList.map(
                (primitive) => primitive.toDomain(),
              ),
            ),
          ),
          saveFailureOrSuccessOption: none(),
        );
      },
      nutritionSaved: (e) async* {
        Either<NutritionFailure, Unit> failureOrSuccess;

        final userOption = await getIt<IAuthFacade>().getSignInUser();
        final user = userOption.getOrElse(() => throw NotAuthenticatedError());
        final userFirestoreOption = await getIt<IUserRepository>().read();
        final userFirestore = userFirestoreOption.fold(
            () => User.empty().copyWith(emailAddress: user.emailAddress),
            (user) => user);

        yield state.copyWith(
          isSaving: true,
          saveFailureOrSuccessOption: none(),
        );

        if (state.nutrition.failureOption.isNone()) {
          failureOrSuccess = state.isEditing
              ? await _iNutritionRepository.update(state.nutrition)
              : await _iNutritionRepository.create(
                  state.nutrition.copyWith(
                      userId: UniqueId.withUniqueString(
                        user.id.getOrCrash(),
                      ),
                      userName: userFirestore.userName.getOrCrash() == ''
                          ? UserName(user.emailAddress.getOrCrash())
                          : UserName(userFirestore.userName.getOrCrash())),
                );
        }

        yield state.copyWith(
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
