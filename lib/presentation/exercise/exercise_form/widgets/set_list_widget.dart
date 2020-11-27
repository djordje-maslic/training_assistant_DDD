import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:kt_dart/kt.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:provider/provider.dart';
import 'package:reminder_app/application/exercise/form_bloc/exercise_form_bloc.dart';
import 'package:reminder_app/domain/exercise/value_objects.dart';
import 'package:reminder_app/presentation/exercise/exercise_form/misc/build_context_x.dart';
import 'package:reminder_app/presentation/exercise/exercise_form/misc/set_presentation_classes.dart';

class SetListWidget extends StatelessWidget {
  const SetListWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<ExerciseFormBloc, ExerciseFormState>(
      listenWhen: (p, c) =>
          p.exercise.setsList.isFull != c.exercise.setsList.isFull,
      listener: (context, state) {
        if (state.exercise.setsList.isFull) {
          FlushbarHelper.createError(
                  message: 'You can only add ${SetsList.maxLength} sets!',
                  duration: const Duration(seconds: 5))
              .show(context);
        }
      },
      child: Consumer<FormSets>(builder: (context, formSets, child) {
        return ListView.builder(
          physics: const ScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return SetTile(
              index: index,
              key: ValueKey(context.formSets[index].id),
            );
          },
          itemCount: formSets.value.size,
        );
      }),
    );
  }
}

class SetTile extends HookWidget {
  final int index;

  const SetTile({
    Key key,
    @required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final set =
        context.formSets.getOrElse(index, (_) => SetItemPrimitive.empty());
    return Slidable(
      actionPane: const SlidableDrawerActionPane(),
      actionExtentRatio: 0.15,
      secondaryActions: [
        IconSlideAction(
          caption: 'Delete',
          icon: Icons.delete,
          color: Colors.red,
          onTap: () {
            context.formSets = context.formSets.minusElement(set);
            context
                .read<ExerciseFormBloc>()
                .add(ExerciseFormEvent.exerciseSetsChanged(context.formSets));
          },
        )
      ],
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Container(
          decoration: BoxDecoration(border: Border.all(),borderRadius: BorderRadius.circular(8)),
          child: ListTile(
            leading: Text('${index + 1}.'),
            title: Row(children: [const Text('Number of reps:'),SizedBox(width: 70,
              child: Card(
                child: NumberPicker.integer(
                    listViewWidth: 15,
                    initialValue: context.formSets[index].number,
                    minValue: 0,
                    maxValue: 100,
                    onChanged: (value) {
                      context.formSets = context.formSets.map((setList) =>
                      setList == set
                          ? set.copyWith(number: value.ceil())
                          : setList);
                      context
                          .read<ExerciseFormBloc>()
                          .add(ExerciseFormEvent.exerciseSetsChanged(context.formSets));
                    }),
              ),
            ),],)
          ),
        ),
      ),
    );
  }
}
