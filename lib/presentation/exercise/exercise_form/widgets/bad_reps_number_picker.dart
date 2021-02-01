import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:reminder_app/presentation/exercise/exercise_form/misc/set_presentation_classes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';
import 'package:reminder_app/application/exercise/form_bloc/exercise_form_bloc.dart';
import 'package:reminder_app/presentation/exercise/exercise_form/misc/build_context_x.dart';

class BadRepsNumberPicker extends StatelessWidget {
  final int index;
  final SetItemPrimitive set;
  final TextEditingController badRepsStateController;

  const BadRepsNumberPicker({
    Key key,
    this.index,
    this.set,
    this.badRepsStateController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: NumberPicker.integer(
          scrollDirection: Axis.horizontal,
          listViewWidth: 70,
          initialValue:
          context.formSets[index].badReps,
          minValue: 0,
          maxValue:
          context.formSets[index].badReps >
              context.formSets[index].number
              ? context.formSets[index].badReps
              : context.formSets[index].number,
          onChanged: (value) {
            badRepsStateController.text =
                (context.formSets[index].number -
                    value)
                    .toString();
            context.formSets = context.formSets.map(
                    (setList) =>
                setList == set
                    ? set.copyWith(
                    badReps: value.floor(),)
                    : setList);

            context.read<ExerciseFormBloc>().add(
                ExerciseFormEvent
                    .exerciseSetsChanged(
                    context.formSets));
          }),
    );
  }
}