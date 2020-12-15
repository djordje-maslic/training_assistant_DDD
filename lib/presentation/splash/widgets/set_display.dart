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
    return Text(
        '${setList.getOrCrash().indexOf(sets) + 1}.SET: ${sets.number.getOrCrash().toString()} reps  ');
  }
}
