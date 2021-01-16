import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reminder_app/application/auth/auth_bloc.dart';
import 'package:reminder_app/application/exercise/exercise_actor/exercise_actor_bloc.dart';
import 'package:reminder_app/application/exercise/exercise_watcher/exercise_watcher_bloc.dart';
import 'package:reminder_app/injectable.dart';
import 'package:reminder_app/presentation/core/logo_painter.dart';
import 'package:reminder_app/presentation/exercise/exercise_overview/widgets/exercise_overview_body_widget.dart';
import 'package:reminder_app/presentation/routes/router.gr.dart';

class ExerciseOverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ExerciseWatcherBloc>(
          create: (context) => getIt<ExerciseWatcherBloc>()
            ..add(const ExerciseWatcherEvent.watchUsersExercises()),
        ),
        BlocProvider<ExerciseActorBloc>(
            create: (context) => getIt<ExerciseActorBloc>()),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              state.maybeMap(
                unauthenticated: (_) {
                  ExtendedNavigator.of(context).replace(Routes.signIn);
                },
                orElse: () {},
              );
            },
          ),
          BlocListener<ExerciseActorBloc, ExerciseActorState>(
              listener: (context, state) {
            state.maybeMap(
                deleteFailure: (state) {
                  FlushbarHelper.createError(
                    message: state.exerciseFailure.map(
                      unexpected: (_) =>
                          'Unexpected error occurred while deleting, please contact support.',
                      insufficientPermission: (_) =>
                          'Insufficient permissions ❌',
                      unableToUpdate: (_) => 'Impossible error',
                    ),
                    duration: const Duration(seconds: 5),
                  ).show(context);
                },
                orElse: () {});
          })
        ],
        child: Scaffold(
          backgroundColor: Colors.amber,
          endDrawer: Drawer(
            child: ListView(
              children: [
                DrawerHeader(
                  child: Column(
                    children: [
                      context.watch<AuthBloc>().state.map(
                            initial: (_) => const Text(''),
                            authenticated: (authUser) => FlatButton(
                              onPressed: () {
                                ExtendedNavigator.of(context)
                                    .pushUserOverviewPage();
                              },
                              child: Column(
                                children: [
                                  const Icon(
                                    Icons.account_circle,
                                    size: 80,
                                    color: Colors.amber,
                                  ),
                                  Text(
                                    authUser.user.emailAddress.getOrCrash(),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text(
                                    'View Profile',
                                    style: TextStyle(color: Colors.blueAccent),
                                  ),
                                ],
                              ),
                            ),
                            unauthenticated: (_) => Column(
                              children: [
                                const Icon(
                                  Icons.account_circle,
                                  size: 80,
                                  color: Colors.amber,
                                ),
                                RaisedButton(
                                  onPressed: () {
                                    ExtendedNavigator.of(context).pushSignIn();
                                  },
                                  child: const Text('Sign in/ Register'),
                                ),
                              ],
                            ),
                          ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    color: Colors.grey,
                    onPressed: () {
                      context.read<AuthBloc>().state.map(
                        initial: (_) {},
                        authenticated: (_) => ExtendedNavigator.of(context)
                            .pushSplashPage(),
                        unauthenticated: (_) =>
                            ExtendedNavigator.of(context).pushSignIn(),
                      );
                    },
                    child: Row(
                      children: const [Icon(Icons.home), Text('Home')],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    color: Colors.amber,
                    onPressed: () {
                      context.read<AuthBloc>().state.map(
                            initial: (_) {},
                            authenticated: (_) => ExtendedNavigator.of(context)
                                .pushExerciseOverviewPage(),
                            unauthenticated: (_) =>
                                ExtendedNavigator.of(context).pushSignIn(),
                          );
                    },
                    child: Row(
                      children: const [
                        Icon(Icons.fitness_center),
                        Text('Exercises')
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    color: Colors.cyan,
                    onPressed: () {
                      context.read<AuthBloc>().state.map(
                            initial: (_) {},
                            authenticated: (_) => ExtendedNavigator.of(context)
                                .pushMealOverviewPage(),
                            unauthenticated: (_) =>
                                ExtendedNavigator.of(context).pushSignIn(),
                          );
                    },
                    child: Row(
                      children: const [Icon(Icons.restaurant), Text('Meals')],
                    ),
                  ),
                ),
              ],
            ),
          ),
          appBar: AppBar(
            leading: const CustomPaint(
              painter: LogoPainter(),
            ),
            title: const Text('Exercises'),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              ExtendedNavigator.of(context)
                  .pushExerciseFormPage(editedExercise: null);
            },
            child: const Icon(Icons.add),
          ),
          body: ExerciseOverviewBody(),
        ),
      ),
    );
  }
}
