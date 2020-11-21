import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:reminder_app/application/exercise/form_bloc/exercise_form_bloc.dart';

class DateFieldWidget extends HookWidget {
  const DateFieldWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingControllerDate = useTextEditingController();

    return BlocListener<ExerciseFormBloc, ExerciseFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        textEditingControllerDate.text =
            state.exercise.date.getOrCrash().toString();
      },
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextFormField(
          controller: textEditingControllerDate,
          decoration: const InputDecoration(labelText: 'Exercise date'),
          maxLength: 10,
          onChanged: (value) => context.read<ExerciseFormBloc>().add(
                ExerciseFormEvent.exerciseDateChanged(int.parse(value)),
              ),
          validator: (_) => context
              .read<ExerciseFormBloc>()
              .state
              .exercise
              .date
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
