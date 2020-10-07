import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reminder_app/application/signIn/sign_in_form_bloc.dart';

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureUnitOption.fold(
          () {},
          (either) => either.fold(
            (f) => FlushbarHelper.createError(
              message: f.map(
                  canceledByUser: (_) => 'Canceled',
                  serverError: (_) => 'Server error',
                  emailAlreadyInUse: (_) => 'Email already in use',
                  invalidEmailAndPasswordCombination: (_) =>
                      'Invalid Email and Password combination'),
            ).show(context),
            (_) => () {
              // TODO: navigate
            },
          ),
        );
      },
      builder: (context, state) {

        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(autovalidateMode: state.showErrorMessages ? AutovalidateMode.always : AutovalidateMode.disabled ,
            child: ListView(
              children: [
                const Text(
                  'TA🤸‍♂',
                  style: TextStyle(fontSize: 130),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  autocorrect: false,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    prefixIcon: Icon(Icons.mail),
                  ),
                  onChanged: (value) {
                    context
                        .bloc<SignInFormBloc>()
                        .add(SignInFormEvent.emailChanged(value));
                  },
                  validator: (_) => context
                      .bloc<SignInFormBloc>()
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
                      .bloc<SignInFormBloc>()
                      .add(SignInFormEvent.passwordChanged(value)),
                  validator: (_) => context
                      .bloc<SignInFormBloc>()
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
                      child: FlatButton(
                        onPressed: () {
                          context.bloc<SignInFormBloc>().add(const SignInFormEvent
                              .signInWithEmailAndPasswordPressed());
                        },
                        child: const Text('SIGN IN'),
                      ),
                    ),
                    Expanded(
                      child: FlatButton(
                        onPressed: () {
                          context.bloc<SignInFormBloc>().add(const SignInFormEvent
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
                RaisedButton(
                  onPressed: () {
                    context.bloc<SignInFormBloc>().add(
                          const SignInFormEvent.signInWithGooglePressed(),
                        );
                  },
                  color: Colors.lightBlue,
                  child: const Text(
                    'REGISTER WITH GOOGLE',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
               const SizedBox(
                 height: 8,
               ),
               if (state.isSubmitting) ...[
                 const SizedBox(
                   height: 8,
                 ),
                 const LinearProgressIndicator(
                   value: null,
                 )
               ],
              ],
            ),
          ),
        );
      },
    );
  }
}
