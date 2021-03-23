import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reminder_app/application/auth/auth_bloc.dart';
import 'package:reminder_app/application/user/user_watcher/user_watcher_bloc.dart';
import 'package:reminder_app/injectable.dart';
import 'package:reminder_app/presentation/router/app_router.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final AppRouter _appRouter = AppRouter();

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AuthBloc>()
            ..add(
              const AuthEvent.userCheckRequested(),
            ),
        ),
        BlocProvider(
          create: (context) => getIt<UserWatcherBloc>()
            ..add(
              const UserWatcherEvent.watchUser(),
            ),
        ),
      ],
      child: MaterialApp(
       onGenerateRoute: _appRouter.onGenerateRoute ,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(
          primaryColor: Colors.amber,
          accentColor: Colors.amber,
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
              backgroundColor: Colors.amber),
        ),
        title: 'Material App',
      ),
    );
  }
}
