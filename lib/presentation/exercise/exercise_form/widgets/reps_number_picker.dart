import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:reminder_app/application/exercise/form_bloc/exercise_form_bloc.dart';
import 'package:reminder_app/presentation/exercise/exercise_form/misc/build_context_x.dart';
import 'package:reminder_app/presentation/exercise/exercise_form/misc/set_presentation_classes.dart';

class RepsNumberPicker extends StatelessWidget {
  final int index;
  final SetItemPrimitive set;

  const RepsNumberPicker({@required this.index, @required this.set, Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.amber[300],
      child: NumberPicker.integer(
          selectedTextStyle:
              const TextStyle(color: Colors.indigoAccent, fontSize: 20),
          scrollDirection: Axis.horizontal,
          listViewWidth: 70,
          initialValue: context.formSets[index].number,
          minValue: 0,
          maxValue: 100,
          onChanged: (value) {
            context.formSets = context.formSets.map((setList) => setList == set
                ? set.copyWith(
                    number: value.floor(),
                  )
                : setList);
            context
                .read<ExerciseFormBloc>()
                .add(ExerciseFormEvent.exerciseSetsChanged(context.formSets));
          }),
    );
  }
}
