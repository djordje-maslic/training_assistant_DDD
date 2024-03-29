import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:reminder_app/application/exercise/form_bloc/exercise_form_bloc.dart';

class NumberOfSets extends HookWidget {
  const NumberOfSets({Key key}) : super(key:key);
  @override
  Widget build(BuildContext context) {
    final numberOfSetsTextEditingController = useTextEditingController();
    return BlocListener<ExerciseFormBloc, ExerciseFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        numberOfSetsTextEditingController.text =
            state.exercise.userName.getOrCrash().toString();
      },
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextFormField(
          controller: numberOfSetsTextEditingController,
          decoration: const InputDecoration(labelText: 'Exercise sets number'),
          onChanged: (value) => context.read<ExerciseFormBloc>().add(
                ExerciseFormEvent.exerciseUserNameChanged(value),
              ),
          validator: (_) => context
              .read<ExerciseFormBloc>()
              .state
              .exercise
              .userName
              .value
              .fold(
                  (f) => f.maybeMap(
                      orElse: () => null,
                      exceedingLength: (_)=> 'name too long',
                     ),
                  (r) => null),
        ),
      ),
    );
  }
}
