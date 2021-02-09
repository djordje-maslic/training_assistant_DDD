import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reminder_app/application/auth/auth_bloc.dart';
import 'package:reminder_app/application/exercise/exercise_watcher/exercise_watcher_bloc.dart';
import 'package:reminder_app/injectable.dart';
import 'package:reminder_app/presentation/core/drawer.dart';
import 'package:reminder_app/presentation/core/logo_painter.dart';
import 'package:reminder_app/presentation/splash/widgets/splash_body.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ExerciseWatcherBloc>(
          create: (context) => getIt<ExerciseWatcherBloc>()
            ..add(const ExerciseWatcherEvent.watchAllStarted()),
        ),
      ],
      child: Scaffold(
        backgroundColor: Colors.amber[200],
        endDrawer: DrawerCore(),
        appBar: AppBar(
          actions: [
            Builder(builder: (context) {
              return IconButton(
                  icon: context.watch<AuthBloc>().state.maybeMap(
                      orElse: () => const Icon(Icons.account_circle),
                      unauthenticated: (_) => const Icon(Icons.account_circle),
                      authenticated: (state) {
                        return SizedBox(child: CircleAvatar(backgroundColor: Colors.indigo[100],
                            child: Text(state.user.emailAddress
                                .getOrCrash()
                                .substring(0, 1)),
                          ),
                        );
                      }),
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  });
            })
          ],
          leading: const CustomPaint(
            painter: LogoPainter(),
          ),
          title: const Text('Home'),
        ),
        body: SplashBody(),
      ),
    );
  }
}
