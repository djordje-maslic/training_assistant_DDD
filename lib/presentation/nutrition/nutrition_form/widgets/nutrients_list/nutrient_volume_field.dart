import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';
import 'package:reminder_app/application/nutrition/nutrition_form/nutrition_form_bloc.dart';
import 'package:reminder_app/presentation/nutrition/misc/build_context_nutrition.dart';
import 'package:reminder_app/presentation/nutrition/misc/nutrients_presentation_classes.dart';

class NutrientVolumeField extends StatelessWidget {
  final int index;
  final NutrientItemPrimitive nutrient;

  const NutrientVolumeField(
      {@required this.index, @required this.nutrient, Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: context.formNutrientsList[index].nutrientVolume.toStringAsFixed(2),
      validator: (_) {
        return context
            .read<NutritionFormBloc>()
            .state
            .nutrition
            .nutrientsList
            .getOrCrash()
            .asList()[index]
            .nutrientVolume
            .value
            .fold(
                (f) => f.maybeMap(
                orElse: () => 'Error',
                exceedingValue: (f) => 'Exceeding value ${f.max}'),
                (r) => null);
      },
      onChanged: (value) {
        context.formNutrientsList = context.formNutrientsList.map(
                (nutrientsList) => nutrientsList == nutrient
                ? nutrient.copyWith(nutrientVolume: double.tryParse(value))
                : nutrientsList);
        context.read<NutritionFormBloc>().add(
            NutritionFormEvent.nutrientsListChanged(context.formNutrientsList));
      },
      decoration: const InputDecoration(counterText: '',suffixText: 'ml'),
      maxLength: 7,
      keyboardType: const TextInputType.numberWithOptions(),
    );
  }
}
class NutrientVolumeFieldFlOz extends StatelessWidget {
  final int index;
  final NutrientItemPrimitive nutrient;

  const NutrientVolumeFieldFlOz(
      {@required this.index, @required this.nutrient, Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: ((context.formNutrientsList[index].nutrientVolume ?? 0)* 0.033814).toStringAsFixed(2),
      validator: (_) {
        return context
            .read<NutritionFormBloc>()
            .state
            .nutrition
            .nutrientsList
            .getOrCrash()
            .asList()[index]
            .nutrientVolume
            .value
            .fold(
                (f) => f.maybeMap(
                orElse: () => 'Error',
                exceedingValue: (f) => 'Exceeding value ${f.max}'),
                (r) => null);
      },
      onChanged: (value) {
        final double valueMl= (double.tryParse(value)??0.0) / 0.033814;

        context.formNutrientsList = context.formNutrientsList.map(
                (nutrientsList) => nutrientsList == nutrient
                ? nutrient.copyWith(nutrientVolume: valueMl)
                : nutrientsList);
        context.read<NutritionFormBloc>().add(
            NutritionFormEvent.nutrientsListChanged(context.formNutrientsList));
      },
      decoration: const InputDecoration(counterText: '',suffixText: 'fl oz'),
      maxLength: 7,
      keyboardType: const TextInputType.numberWithOptions(),
    );
  }
}
