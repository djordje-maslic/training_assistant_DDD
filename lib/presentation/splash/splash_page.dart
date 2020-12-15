import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reminder_app/application/auth/auth_bloc.dart';
import 'package:reminder_app/application/exercise/exercise_watcher/exercise_watcher_bloc.dart';
import 'package:reminder_app/injectable.dart';
import 'package:reminder_app/presentation/routes/router.gr.dart';
import 'package:reminder_app/presentation/splash/widgets/splash_body.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ExerciseWatcherBloc>(
      create: (context) => getIt<ExerciseWatcherBloc>()
        ..add(const ExerciseWatcherEvent.watchAllStarted()),
      child: Scaffold(
          endDrawer: Drawer(
            child: ListView(
              children: [
                DrawerHeader(
                    child: IconButton(
                  icon: const Icon(Icons.account_circle),
                  onPressed: () {
                    // TODO: complete user
                  },
                )),
                IconButton(
                    icon: const Icon(Icons.fitness_center),
                    onPressed: () {
                      context.read<AuthBloc>().state.map(
                            initial: (_) {},
                            authenticated: (_) => ExtendedNavigator.of(context)
                                .pushExerciseOverviewPage(),
                            unauthenticated: (_) =>
                                ExtendedNavigator.of(context).pushSignIn(),
                          );

                      // ExtendedNavigator.of(context).pushSplashPage();
                    })
              ],
            ),
          ),
          appBar: AppBar(
            leading: const Card(
              color: Colors.white,
              child: Center(
                  child: Text(
                '🏋️‍♀️A',
                style: TextStyle(
                    color: Colors.amber,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )),
            ),
            title: const Text('Home'),
          ),
          body: SplashBody()),
    );
  }
}
