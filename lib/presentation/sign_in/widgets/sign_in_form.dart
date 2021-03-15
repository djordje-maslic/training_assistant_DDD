import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reminder_app/application/auth/auth_bloc.dart';
import 'package:reminder_app/application/auth/signIn/sign_in_form_bloc.dart';
import 'package:reminder_app/presentation/routes/router.gr.dart';
import 'package:shimmer/shimmer.dart';

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureUnitOption.fold(
          () {},
          (either) => either.fold(
            (f) => ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: f.map(
                  canceledByUser: (_) => const Text('Canceled'),
                  serverError: (_) => const Text('Server error'),
                  emailAlreadyInUse: (_) => const Text('Email already in use'),
                  invalidEmailAndPasswordCombination: (_) =>
                      const Text('⚠Invalid Email and Password combination'),
                ),
              ),
            ),
            (_) {
              ExtendedNavigator.of(context).push(Routes.splashPage);
              context
                  .read<AuthBloc>()
                  .add(const AuthEvent.userCheckRequested());
            },
          ),
        );
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            autovalidateMode: state.showErrorMessages
                ? AutovalidateMode.always
                : AutovalidateMode.disabled,
            child: ListView(
              children: [
                Shimmer.fromColors(
                  period: const Duration(milliseconds: 4000),
                  baseColor: Colors.amber,
                  highlightColor: Colors.yellowAccent,
                  child: const Text(
                    'TA🤸‍♂',
                    style: TextStyle(fontSize: 130, color: Color(0xffaaa9ad)),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  key: const Key('sign in email text form field'),
                  autocorrect: false,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    prefixIcon: Icon(Icons.mail),
                  ),
                  onChanged: (value) {
                    context
                        .read<SignInFormBloc>()
                        .add(SignInFormEvent.emailChanged(value));
                  },
                  validator: (_) => context
                      .read<SignInFormBloc>()
                      .state
                      .emailAddress
                      .value
                      .fold(
                          (f) => f.maybeMap(
                              invalidEmail: (_) => 'Invalid Email',
                              orElse: () => null),
                          (_) => null),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  autocorrect: false,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    prefixIcon: Icon(Icons.lock),
                  ),
                  onChanged: (value) => context
                      .read<SignInFormBloc>()
                      .add(SignInFormEvent.passwordChanged(value)),
                  validator: (_) => context
                      .read<SignInFormBloc>()
                      .state
                      .password
                      .value
                      .fold(
                          (f) => f.maybeMap(
                              shortPassword: (_) => 'Short Password',
                              orElse: () => null),
                          (_) => null),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          context.read<SignInFormBloc>().add(
                              const SignInFormEvent
                                  .signInWithEmailAndPasswordPressed());
                        },
                        child: const Text('SIGN IN'),
                      ),
                    ),
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          context.read<SignInFormBloc>().add(
                              const SignInFormEvent
                                  .registerWithEmailAndPasswordPressed());
                        },
                        child: const Text('REGISTER'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Stack(
                  children: [
                    Shimmer.fromColors(
                        period: const Duration(milliseconds: 4000),
                        baseColor: Colors.amber,
                        highlightColor: Colors.yellowAccent,
                        child: Container(
                          height: 50,
                          color: Colors.black,
                        )),
                    GestureDetector(
                      onTap: () {
                        context.read<SignInFormBloc>().add(
                              const SignInFormEvent.signInWithGooglePressed(),
                            );
                      },
                      child: const Padding(
                        padding: EdgeInsets.only(left: 110, top: 14),
                        child: Text(
                          'Sign In With Google',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                if (state.isSubmitting) ...[
                  const SizedBox(
                    height: 8,
                  ),
                  const LinearProgressIndicator(),
                ],
              ],
            ),
          ),
        );
      },
    );
  }
}
