import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:reminder_app/domain/auth/auth_failure.dart';
import 'package:reminder_app/domain/auth/i_auth_facade.dart';
import 'package:reminder_app/domain/auth/value_objects.dart';


part 'sign_in_form_event.dart';

part 'sign_in_form_state.dart';

part 'sign_in_form_bloc.freezed.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _iAuthFacade;

  SignInFormBloc(this._iAuthFacade) : super(SignInFormState.initial());

  @override
  Stream<SignInFormState> mapEventToState(
    SignInFormEvent event,
  ) async* {
    yield* event.map(
      emailChanged: (e) async* {
        yield state.copyWith(
            emailAddress: EmailAddress(e.emailStr),
            authFailureUnitOption: none());
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
            password: Password(e.passwordStr), authFailureUnitOption: none());
      },
      registerWithEmailAndPasswordPressed: (e) async* {
        yield* _performActionOnAuthFacadeWithEmailAndPassword(
            _iAuthFacade.registerWithEmailAndPassword);
      },
      signInWithEmailAndPasswordPressed: (e) async* {
        yield* _performActionOnAuthFacadeWithEmailAndPassword(
            _iAuthFacade.signInWithEmailAndPassword);
      },
      signInWithGooglePressed: (e) async* {
        yield state.copyWith(
          isSubmitting: true,
          authFailureUnitOption: none(),
        );
        final failureOrSuccess = await _iAuthFacade.signInWithGoogle();
        yield state.copyWith(
          isSubmitting: false,
          authFailureUnitOption: some(failureOrSuccess),
        );
      },
    );
  }

  Stream<SignInFormState> _performActionOnAuthFacadeWithEmailAndPassword(
      Future<Either<AuthFailure, Unit>> Function(
              {@required EmailAddress emailAddress,
              @required Password password})
          forwardedCall) async* {
    Either<AuthFailure, Unit> failureOrSuccess;
    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();
    if (isEmailValid && isPasswordValid) {
      yield state.copyWith(isSubmitting: true, authFailureUnitOption: none());
      failureOrSuccess = await forwardedCall(
          emailAddress: state.emailAddress, password: state.password);
    }
    yield state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        authFailureUnitOption: optionOf(failureOrSuccess));
  }
}
