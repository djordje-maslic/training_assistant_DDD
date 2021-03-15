import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:reminder_app/application/auth/auth_bloc.dart';
import 'package:reminder_app/application/auth/signIn/sign_in_form_bloc.dart';
import 'package:reminder_app/domain/auth/i_auth_facade.dart';
import 'package:reminder_app/domain/auth/user.dart';
import 'package:reminder_app/domain/auth/value_objects.dart';
import 'package:reminder_app/domain/core/value_objects.dart';

class MocIAuthFacade extends Mock implements IAuthFacade {}

class MocUser extends Mock implements User {}

void main() {
  group(
    "sign in bloc test",
        () {
      SignInFormBloc signInFormBloc;
      AuthBloc authBloc;
      MocIAuthFacade mocIAuthFacade;
      final User user = User(
          id: UniqueId.withUniqueString('1234567'),
          emailAddress: EmailAddress('djordje@djordje.com'),
          userName: UserName('djordje'),
          userDateOfBirth: UserDateOfBirth(1234567),
          userGender: UserGender(input: true),
          exerciseDistanceUnit: ExerciseDistanceUnit('km'),
          exerciseWeightUnit: ExerciseWeightUnit('kg'),
          userHeightUnit: UserHeightUnit('cm'),
          userWeightUnit: UserWeightUnit('kg'),
          nutritionWeightUnit: NutritionWeightUnit('g'),
          nutritionVolumeUnit: NutritionVolumeUnit('l'));
      Option<User> getUser;
      IAuthFacade iAuthFacade;
      setUp(
            () async {
          mocIAuthFacade = MocIAuthFacade();
          signInFormBloc = SignInFormBloc(mocIAuthFacade);
          authBloc = AuthBloc(mocIAuthFacade);
          getUser = await iAuthFacade?.getSignInUser();
        },
      );

      test("sign in form initial state", () {
        expect(
            signInFormBloc.state,
            SignInFormState(
              emailAddress: EmailAddress(''),
              password: Password(''),
              isSubmitting: false,
              showErrorMessages: false,
              authFailureUnitOption: none(),
            ));
      });
      blocTest(
        "sign in form email change",
        build: () {
          return signInFormBloc;
        },
        act: (bloc) async {
          await bloc
              .add(const SignInFormEvent.emailChanged('djordje@djordje.com'));
        },
        expect: [
          SignInFormState(
            emailAddress: EmailAddress('djordje@djordje.com'),
            password: Password(''),
            isSubmitting: false,
            showErrorMessages: false,
            authFailureUnitOption: none(),
          )
        ],
      );

      blocTest(
        "sign in form password change",
        build: () {
          return signInFormBloc;
        },
        act: (bloc) async {
          await bloc.add(const SignInFormEvent.passwordChanged('4567'));
        },
        expect: [
          SignInFormState(
            emailAddress: EmailAddress(''),
            password: Password('4567'),
            isSubmitting: false,
            showErrorMessages: false,
            authFailureUnitOption: none(),
          )
        ],
      );

      blocTest(
        "sign in form register with email and password",
        build: () {
          return signInFormBloc;
        },
        act: (bloc) async {
          await bloc
              .add(const SignInFormEvent.emailChanged('djordje@djordje.com'));
          await bloc.add(const SignInFormEvent.passwordChanged('1234567'));
          await bloc
              .add(const SignInFormEvent.registerWithEmailAndPasswordPressed());
        },
        expect: [
          SignInFormState(
            emailAddress: EmailAddress('djordje@djordje.com'),
            password: Password(''),
            isSubmitting: false,
            showErrorMessages: false,
            authFailureUnitOption: none(),
          ),
          SignInFormState(
            emailAddress: EmailAddress('djordje@djordje.com'),
            password: Password('1234567'),
            isSubmitting: false,
            showErrorMessages: false,
            authFailureUnitOption: none(),
          ),
          SignInFormState(
            emailAddress: EmailAddress('djordje@djordje.com'),
            password: Password('1234567'),
            isSubmitting: true,
            showErrorMessages: false,
            authFailureUnitOption: none(),
          ),
          SignInFormState(
            emailAddress: EmailAddress('djordje@djordje.com'),
            password: Password('1234567'),
            isSubmitting: false,
            showErrorMessages: true,
            authFailureUnitOption: none(),
          ),
        ],
      );

      blocTest(
        "auth sign out bloc test",
        build: () {
          return authBloc;
        },
        act: (bloc) async {
          await bloc.add(const AuthEvent.signOut());
        },
        expect: [const AuthState.unauthenticated()],
      );

      blocTest(
        "auth user check requested bloc test",
        build: () {
          when(mocIAuthFacade.getSignInUser())
              .thenAnswer((_) async => optionOf(user));

          return authBloc;
        },
        act: (bloc) async {
          await bloc.add(const AuthEvent.userCheckRequested());
        },
        expect: [
          AuthState.authenticated(
              user: User(
                  id: UniqueId.withUniqueString('1234567'),
                  emailAddress: EmailAddress('djordje@djordje.com'),
                  userName: UserName('djordje'),
                  userDateOfBirth: UserDateOfBirth(1234567),
                  userGender: UserGender(input: true),
                  exerciseDistanceUnit: ExerciseDistanceUnit('km'),
                  exerciseWeightUnit: ExerciseWeightUnit('kg'),
                  userHeightUnit: UserHeightUnit('cm'),
                  userWeightUnit: UserWeightUnit('kg'),
                  nutritionWeightUnit: NutritionWeightUnit('g'),
                  nutritionVolumeUnit: NutritionVolumeUnit('l')))
        ],
      );

      tearDown(() {
        signInFormBloc.close();
        authBloc.close();
      });
    },
  );
}
