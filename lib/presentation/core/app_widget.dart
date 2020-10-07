import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reminder_app/application/signIn/sign_in_form_bloc.dart';
import 'package:reminder_app/injectable.dart';
import 'package:reminder_app/presentation/splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider<SignInFormBloc>(create: (context) => getIt())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(
            primaryColor: Colors.blue,
            accentColor: Colors.lightBlue,
            inputDecorationTheme: InputDecorationTheme(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8)))),
        title: 'Material App',
        home:SplashPage(),
      ),
    );
  }
}
