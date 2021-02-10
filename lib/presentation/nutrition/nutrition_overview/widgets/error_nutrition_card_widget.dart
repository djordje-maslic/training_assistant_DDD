import 'package:flutter/material.dart';
import 'package:reminder_app/domain/nutrition/nutrition.dart';

class ErrorNutritionCard extends StatelessWidget {
  final Nutrition nutrition;

  const ErrorNutritionCard({Key key, @required this.nutrition}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.red,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          children: [
            Text(
              'Invalid nutrition please contact support',
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
              nutrition.failureOption.fold(() => '', (f) => f.toString()),
              style: Theme.of(context).primaryTextTheme.bodyText2,
            )
          ],
        ),
      ),
    );
  }
}
