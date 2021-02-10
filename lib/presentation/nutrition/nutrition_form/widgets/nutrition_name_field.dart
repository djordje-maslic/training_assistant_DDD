import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:reminder_app/application/nutrition/nutrition_form/nutrition_form_bloc.dart';
import 'package:reminder_app/domain/nutrition/value_objects.dart';

class NutritionNameField extends HookWidget {
  const NutritionNameField({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();

    return BlocListener<NutritionFormBloc, NutritionFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        textEditingController.text = state.nutrition.nutritionName.getOrCrash();
      },
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextFormField(
          controller: textEditingController,
          decoration: const InputDecoration(labelText: 'Nutrition name'),
          maxLength: NutritionName.maxLength,
          onChanged: (value) => context.read<NutritionFormBloc>().add(
                NutritionFormEvent.nutritionNameChanged(value),
              ),
          validator: (_) => context
              .read<NutritionFormBloc>()
              .state
              .nutrition
              .nutritionName
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
