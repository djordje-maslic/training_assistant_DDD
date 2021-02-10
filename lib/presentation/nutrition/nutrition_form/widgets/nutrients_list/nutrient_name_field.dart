import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';
import 'package:reminder_app/application/nutrition/nutrition_form/nutrition_form_bloc.dart';
import 'package:reminder_app/presentation/nutrition/misc/build_context_nutrition.dart';
import 'package:reminder_app/presentation/nutrition/misc/nutrients_presentation_classes.dart';


class NutrientNameField extends StatelessWidget {
  final int index;
  final NutrientItemPrimitive nutrient;

  const NutrientNameField({@required this.index,@required this.nutrient, Key key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: context.formNutrientsList[index].nutrientName
          .toString(),
      validator: (_) {
        return context
            .read<NutritionFormBloc>()
            .state
            .nutrition
            .nutrientsList
            .getOrCrash()
            .asList()[index]
            .nutrientName
            .value
            .fold(
                (f) => f.maybeMap(
                orElse: () => 'Error',
                empty: (f) => 'Cannot bi empty',
                exceedingLength: (f) =>
                'Exceeding length ${f.max}'),
                (r) => null);
      },
      onChanged: (value) {
        context.formNutrientsList = context.formNutrientsList.map(
                (nutrientsList) => nutrientsList == nutrient
                ? nutrient.copyWith(
                nutrientName: value)
                : nutrientsList);
        context.read<NutritionFormBloc>().add(
            NutritionFormEvent.nutrientsListChanged(
                context.formNutrientsList));
      },
      decoration: const InputDecoration(
           counterText: ''),
      maxLength: 50,
    );
  }
}
