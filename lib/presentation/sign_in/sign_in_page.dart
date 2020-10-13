import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reminder_app/application/signIn/sign_in_form_bloc.dart';
import 'package:reminder_app/injectable.dart';
import 'package:reminder_app/presentation/sign_in/widgets/sign_in_form.dart';
import 'package:shimmer/shimmer.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading:Shimmer.fromColors( baseColor: Colors.amber,
          highlightColor: Colors.yellowAccent,
          period: const Duration(seconds: 8),child: const Icon( Icons.assignment_ind_sharp)),
        backgroundColor: const Color(0xffaaa9ad),
        shadowColor: Colors.yellowAccent,
        title: Shimmer.fromColors(
            baseColor: Colors.amber,
            highlightColor: Colors.yellowAccent,
            period: const Duration(seconds: 5),
            child: const Text('Sign In')),
      ),
      body: BlocProvider(
        create: (context) => getIt<SignInFormBloc>(),
        child: SignInForm(),
      ),
    );
  }
}
