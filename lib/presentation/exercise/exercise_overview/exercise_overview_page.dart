import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reminder_app/application/auth/auth_bloc.dart';
import 'package:reminder_app/application/exercise/exercise_actor/exercise_actor_bloc.dart';
import 'package:reminder_app/application/exercise/exercise_watcher/exercise_watcher_bloc.dart';
import 'package:reminder_app/injectable.dart';
import 'package:reminder_app/presentation/core/drawer.dart';
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
                  ExtendedNavigator.of(context).replace(Routes.splashPage);
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
        child: BlocBuilder<AuthBloc, AuthState>(builder: (context, state) {
          return state.maybeMap(
            orElse: () {
              return Scaffold(
                backgroundColor: Colors.amber,
                endDrawer: DrawerCore(),
                appBar: AppBar(
                  leading: const CustomPaint(
                    painter: LogoPainter(),
                  ),
                  title: const Text('Exercises'),
                ),
                body: const Center(
                  child: Text('You are not authenticated'),
                ),
              );
            },
            unauthenticated: (_) {
              return Scaffold(
                backgroundColor: Colors.amber,
                endDrawer: DrawerCore(),
                appBar: AppBar(
                  leading: const CustomPaint(
                    painter: LogoPainter(),
                  ),
                  title: const Text('Exercises'),
                ),
                body: const Center(
                  child: Text('You are not authenticated'),
                ),
              );
            },
            authenticated: (_) {
              return Scaffold(
                backgroundColor: Colors.amber,
                endDrawer: DrawerCore(),
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
              );
            },
          );
        }),
      ),
    );
  }
}
