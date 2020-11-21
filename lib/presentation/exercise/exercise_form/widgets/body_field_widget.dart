import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:reminder_app/application/exercise/form_bloc/exercise_form_bloc.dart';
import 'package:reminder_app/domain/exercise/value_objects.dart';

class BodyField extends HookWidget {
  const BodyField({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();

    return BlocListener<ExerciseFormBloc, ExerciseFormState>(
      listenWhen: (p,c)=> p.isEditing != c.isEditing,
      listener: (context, state) {
        textEditingController.text = state.exercise.name.getOrCrash();
        },
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextFormField(
          controller: textEditingController,
          decoration: const InputDecoration(labelText: 'Exercise name'),
          maxLength: ExerciseName.maxLength,
          onChanged: (value) => context.read<ExerciseFormBloc>().add(
                ExerciseFormEvent.exerciseNameChanged(value),
              ),
          validator: (_) => context
              .read<ExerciseFormBloc>()
              .state
              .exercise
              .name
              .value
              .fold(
                  (f) => f.maybeMap(
                      orElse: () => null,
                      empty: (_) => 'Cannot bi empty',
                      exceedingLength: (f) => 'Exceeding length ${f.max}'),
                  (r) => null),
        ),
      ),
    );
  }
}
