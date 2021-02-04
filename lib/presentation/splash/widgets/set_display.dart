import 'package:flutter/material.dart';
import 'package:reminder_app/domain/exercise/sets.dart';
import 'package:reminder_app/domain/exercise/value_objects.dart';

class SetDisplay extends StatelessWidget {
  final Sets sets;
  final SetsList setList;

  const SetDisplay({Key key, @required this.sets, @required this.setList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Text(
          '${setList.getOrCrash().indexOf(sets) + 1}.SET:',
          style: TextStyle(color: Colors.indigo[400],fontSize: 20),
        ),
        Text(
          ' ${sets.number.getOrCrash().toString()} reps  ',
          style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),
        ),
      ],
    );
  }
}
