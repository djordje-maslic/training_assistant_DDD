import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reminder_app/application/auth/auth_bloc.dart';
import 'package:reminder_app/application/exercise/exercise_actor/exercise_actor_bloc.dart';
import 'package:reminder_app/application/exercise/exercise_watcher/exercise_watcher_bloc.dart';
import 'package:reminder_app/injectable.dart';
import 'package:reminder_app/presentation/core/drawer.dart';
import 'package:reminder_app/presentation/core/logo_painter.dart';
import 'package:reminder_app/presentation/exercise/exercise_overview/widgets/exercise_overview_body_widget.dart';

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
                  Navigator.of(context).pushReplacementNamed('/');
                },
                orElse: () {},
              );
            },
          ),
          BlocListener<ExerciseActorBloc, ExerciseActorState>(
              listener: (context, state) {
            state.maybeMap(
                deleteFailure: (state) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: state.exerciseFailure.map(
                        unexpected: (_) => const Text(
                            'Unexpected error occurred while deleting, please contact support.'),
                        insufficientPermission: (_) =>
                            const Text('Insufficient permissions ❌'),
                        unableToUpdate: (_) => const Text('Impossible error'),
                      ),
                    ),
                  );
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
                    Navigator.of(context)
                        .pushNamed('/exercise-form-page', arguments: null);
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
