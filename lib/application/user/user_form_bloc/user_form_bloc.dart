import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:reminder_app/domain/auth/i_auth_facade.dart';
import 'package:reminder_app/domain/auth/i_user_repository.dart';
import 'package:reminder_app/domain/auth/user.dart';
import 'package:reminder_app/domain/auth/user_failure.dart';
import 'package:reminder_app/domain/auth/value_objects.dart';
import 'package:reminder_app/domain/core/error.dart';
import 'package:reminder_app/domain/core/value_objects.dart';
import 'package:reminder_app/injectable.dart';

part 'user_form_event.dart';

part 'user_form_state.dart';

part 'user_form_bloc.freezed.dart';

@injectable
class UserFormBloc extends Bloc<UserFormEvent, UserFormState> {
  UserFormBloc(this._iUserRepository) : super(UserFormState.initial());

  final IUserRepository _iUserRepository;

  @override
  Stream<UserFormState> mapEventToState(
    UserFormEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield e.initialUserOption.fold(
          () => state,
          (initialUser) => state.copyWith(
            user: initialUser,
            isEditing: true,
          ),
        );
      },
      userNameChanged: (e) async* {
        yield state.copyWith(
            user: state.user.copyWith(userName: UserName(e.nameStr)),
            saveFailureOrSuccessOption: none());
      },
      userDateOfBirthChanged: (e) async* {
        yield state.copyWith(
            user: state.user.copyWith(
              userDateOfBirth: UserDateOfBirth(e.userDateOfBirthInt),
            ),
            saveFailureOrSuccessOption: none());
      },
      userGenderChanged: (e) async* {
        yield state.copyWith(
            user: state.user.copyWith(
              userGender: UserGender(input:e.genderBool),
            ),
            saveFailureOrSuccessOption: none());
      },
      userSaved: (e) async* {
        Either<UserFailure, Unit> failureOrSuccess;

        final userOption = await getIt<IAuthFacade>().getSignInUser();
        final user = userOption.getOrElse(() => throw NotAuthenticatedError());

        yield state.copyWith(
          isSaving: true,
          saveFailureOrSuccessOption: none(),
        );

        if (state.user.failureOption.isNone()) {
          failureOrSuccess = state.isEditing
              ? await _iUserRepository.update(state.user)
              : await _iUserRepository.create(
                  state.user.copyWith(
                      id: UniqueId.withUniqueString(
                        user.id.getOrCrash(),
                      ),
                      emailAddress:
                          EmailAddress(user.emailAddress.getOrCrash())),
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
