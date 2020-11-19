import 'package:flutter/material.dart';
import 'package:reminder_app/domain/exercise/exercise.dart';

class ErrorExerciseCard extends StatelessWidget {
  final Exercise exercise;

  const ErrorExerciseCard({Key key, @required this.exercise}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.red,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          children: [
            Text(
              'Invalid exercise please contact support',
              style: Theme.of(context)
                  .primaryTextTheme
                  .bodyText2
                  .copyWith(fontSize: 18),
            ),
            const SizedBox(height: 2,),
            Text(
              'Details for nerds:',
              style: Theme.of(context).primaryTextTheme.bodyText2,
            ),
            Text(
              exercise.failureOption.fold(() => '', (f) => f.toString()),
              style: Theme.of(context).primaryTextTheme.bodyText2,
            )
          ],
        ),
      ),
    );
  }
}
