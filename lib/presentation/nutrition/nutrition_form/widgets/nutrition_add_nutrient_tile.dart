import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/collection.dart';
import 'package:reminder_app/application/nutrition/nutrition_form/nutrition_form_bloc.dart';
import 'package:reminder_app/domain/core/value_objects.dart';
import 'package:reminder_app/presentation/nutrition/misc/build_context_nutrition.dart';
import 'package:reminder_app/presentation/nutrition/misc/nutrients_presentation_classes.dart';

class AddNutrientTile extends StatelessWidget {
  const AddNutrientTile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NutritionFormBloc, NutritionFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        context.formNutrientsList = state.nutrition.nutrientsList.value.fold(
            (f) => listOf<NutrientItemPrimitive>(),
            (nutrientItemList) => nutrientItemList
                .map((_) => NutrientItemPrimitive.fromDomain(_)));
      },
      buildWhen: (p, c) =>
          p.nutrition.nutrientsList.isFull != c.nutrition.nutrientsList.isFull,
      builder: (context, state) {
        return ListTile(
          enabled: !state.nutrition.nutrientsList.isFull,
          title: const Text('Add nutrient'),
          leading: const Padding(
            padding: EdgeInsets.all(12.0),
            child: Icon(Icons.add),
          ),
          onTap: () {
            context.formNutrientsList.isEmpty()
                ? context.formNutrientsList = context.formNutrientsList
                    .plusElement(NutrientItemPrimitive.empty())
                : context.formNutrientsList = context.formNutrientsList
                    .plusElement(context
                        .formNutrientsList[context.formNutrientsList.lastIndex]
                        .copyWith(id: UniqueId()));
            context.read<NutritionFormBloc>().add(
                  NutritionFormEvent.nutrientsListChanged(
                      context.formNutrientsList),
                );
          },
        );
      },
    );
  }
}
