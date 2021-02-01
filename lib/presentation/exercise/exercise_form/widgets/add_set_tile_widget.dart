import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/collection.dart';
import 'package:reminder_app/application/exercise/form_bloc/exercise_form_bloc.dart';
import 'package:reminder_app/domain/core/value_objects.dart';
import 'package:reminder_app/presentation/exercise/exercise_form/misc/set_presentation_classes.dart';
import 'package:reminder_app/presentation/exercise/exercise_form/misc/build_context_x.dart';

class AddSetTile extends StatelessWidget {
  const AddSetTile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ExerciseFormBloc, ExerciseFormState>(
        listenWhen: (p, c) => p.isEditing != c.isEditing,
        listener: (context, state) {
         context.formSets=
              state.exercise.setsList.value.fold(
                  (f) => listOf<SetItemPrimitive>(),
                  (setItemList) => setItemList.map((_) => SetItemPrimitive.fromDomain(_)));
        },
        buildWhen: (p, c) =>
            p.exercise.setsList.isFull != c.exercise.setsList.isFull,
        builder: (context, state) {
          return ListTile(
            enabled: !state.exercise.setsList.isFull,
            title: const Text('Add set'),
            leading: const Padding(
              padding: EdgeInsets.all(12.0),
              child: Icon(Icons.add),
            ),
            onTap: () {
              context.formSets.isEmpty() ?
             context.formSets =
                context.formSets
                      .plusElement(SetItemPrimitive.empty()) : context.formSets = context.formSets
                  .plusElement(context.formSets[context.formSets.lastIndex].copyWith(id: UniqueId()));
              context.read<ExerciseFormBloc>().add(
                    ExerciseFormEvent.exerciseSetsChanged(
                        context.formSets),
                  );
            },
          );
        });
  }
}
