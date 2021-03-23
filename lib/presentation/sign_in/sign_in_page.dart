import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reminder_app/application/auth/signIn/sign_in_form_bloc.dart';
import 'package:reminder_app/injectable.dart';
import 'package:reminder_app/presentation/sign_in/widgets/sign_in_form.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:  const Icon(Icons.assignment_ind_sharp)
           ,
        backgroundColor: Colors.black,
        shadowColor: Colors.yellowAccent,
        title:const Text('Sign In')
           ,
      ),
      body: BlocProvider(
        create: (context) => getIt<SignInFormBloc>(),
        child: SignInForm(),
      ),
    );
  }
}
