import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reminder_app/application/auth/auth_bloc.dart';
import 'package:reminder_app/application/exercise/exercise_actor/exercise_actor_bloc.dart';
import 'package:reminder_app/application/exercise/exercise_watcher/exercise_watcher_bloc.dart';
import 'package:reminder_app/injectable.dart';
import 'package:reminder_app/presentation/routes/router.gr.dart';


class ExerciseOverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ExerciseWatcherBloc>(
          create: (context) => getIt<ExerciseWatcherBloc>()
            ..add(const ExerciseWatcherEvent.watchAllStarted()),
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
                          'Unexpected error occured while deleting, please contact support.',
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
          appBar: AppBar(
            title: const Text('Exercises'),
            leading: IconButton(
                icon: const Icon(Icons.exit_to_app),
                onPressed: () {
                  context.read<AuthBloc>().add(const AuthEvent.signOut());
                }),
            actions: [
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {},
              )
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              // TODO: navigate to note form page
            },
            child: const Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
