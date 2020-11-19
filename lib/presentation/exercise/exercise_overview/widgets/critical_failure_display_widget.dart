import 'package:flutter/material.dart';
import 'package:reminder_app/domain/exercise/exercise_failure.dart';

class CriticalFailureDisplay extends StatelessWidget {
  final ExerciseFailure exerciseFailure;

  const CriticalFailureDisplay({Key key, @required this.exerciseFailure})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            '😱',
            style: TextStyle(fontSize: 100),
          ),
          Text(
            exerciseFailure.maybeMap(
                insufficientPermission: (_) => 'Insufficient permissions',
                orElse: () => 'Unexpected error. \nPlease, contact support.'),
            style: const TextStyle(fontSize: 24),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
