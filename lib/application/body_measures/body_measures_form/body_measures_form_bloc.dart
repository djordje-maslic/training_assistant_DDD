import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:reminder_app/domain/auth/i_auth_facade.dart';
import 'package:reminder_app/domain/body_measures/body_measures.dart';
import 'package:reminder_app/domain/body_measures/body_measures_failures.dart';
import 'package:reminder_app/domain/body_measures/i_body_measures_repository.dart';
import 'package:reminder_app/domain/body_measures/value_objects.dart';
import 'package:reminder_app/domain/core/error.dart';
import 'package:reminder_app/domain/core/value_objects.dart';
import 'package:reminder_app/injectable.dart';

part 'body_measures_form_bloc.freezed.dart';

part 'body_measures_form_event.dart';

part 'body_measures_form_state.dart';

@injectable
class BodyMeasuresFormBloc
    extends Bloc<BodyMeasuresFormEvent, BodyMeasuresFormState> {
  final IBodyMeasuresRepository _iBodyMeasuresRepository;

  BodyMeasuresFormBloc(this._iBodyMeasuresRepository)
      : super(BodyMeasuresFormState.initial());

  @override
  Stream<BodyMeasuresFormState> mapEventToState(
    BodyMeasuresFormEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield e.initialBodyMeasuresOption.fold(
            () => state,
            (initialBodyMeasures) => state.copyWith(
                  bodyMeasures: initialBodyMeasures,
                  isEditing: true,
                ));
      },
      bodyMeasuresDateChanged: (e) async* {
        yield state.copyWith(
          bodyMeasures: state.bodyMeasures.copyWith(
            bodyMeasuresDate: MeasuresDate(e.dateInt),
          ),
          saveFailureOrSuccessOption: none(),
        );
      },
      bodyMeasuresWeightChanged: (e) async* {
        yield state.copyWith(
          bodyMeasures: state.bodyMeasures.copyWith(
            bodyMeasuresWeight: UserWeight(e.weightDouble),
          ),
          saveFailureOrSuccessOption: none(),
        );
      },
      bodyMeasuresHeightChanged: (e) async* {
        yield state.copyWith(
          bodyMeasures: state.bodyMeasures.copyWith(
            bodyMeasuresHeight: UserHeight(e.heightDouble),
          ),
          saveFailureOrSuccessOption: none(),
        );
      },
      bodyMeasuresSaved: (e) async* {
        Either<BodyMeasuresFailure, Unit> failureOrSuccess;

        final userOption = await getIt<IAuthFacade>().getSignInUser();
        final user = userOption.getOrElse(() => throw NotAuthenticatedError());

        yield state.copyWith(
          isSaving: true,
          saveFailureOrSuccessOption: none(),
        );

        if (state.bodyMeasures.failureOption.isNone()) {
          failureOrSuccess = state.isEditing
              ? await _iBodyMeasuresRepository.update(state.bodyMeasures)
              : await _iBodyMeasuresRepository.create(
                  state.bodyMeasures.copyWith(
                    userId: UniqueId.withUniqueString(
                      user.id.getOrCrash(),
                    ),
                  ),
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
