import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reminder_app/application/exercise/exercise_watcher/exercise_watcher_bloc.dart';
import 'package:reminder_app/presentation/exercise/exercise_overview/widgets/critical_failure_display_widget.dart';
import 'package:reminder_app/presentation/exercise/exercise_overview/widgets/error_exercise_card_widget.dart';
import 'package:reminder_app/presentation/splash/widgets/splash_card.dart';

class SplashBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExerciseWatcherBloc, ExerciseWatcherState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(
            color: Colors.pinkAccent,
            width: 100,
            height: 100,
          ),
          loadInProgress: (_) => const Center(
            child: CircularProgressIndicator(),
          ),
          loadSuccess: (state) {
            return Row(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      final exercise = state.exercise[index];
                      if (exercise.failureOption.isSome()) {
                        return ErrorExerciseCard(exercise: exercise);
                      } else {
                        return SplashCard(exercise: exercise);
                      }
                    },
                    itemCount: state.exercise.size,
                  ),
                ),
                if (MediaQuery.of(context).size.width > 700) ...[
                  Container(
                    color: Colors.indigoAccent,
                    width: MediaQuery.of(context).size.width / 2,
                  )
                ]
              ],
            );
          },
          loadFailure: (state) {
            return CriticalFailureDisplay(
              exerciseFailure: state.failure,
            );
          },
        );
      },
    );
  }
}
