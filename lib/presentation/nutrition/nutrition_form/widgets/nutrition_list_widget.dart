import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:kt_dart/kt.dart';
import 'package:provider/provider.dart';
import 'package:reminder_app/application/nutrition/nutrition_form/nutrition_form_bloc.dart';
import 'package:reminder_app/domain/nutrition/value_objects.dart';
import 'package:reminder_app/presentation/nutrition/misc/build_context_nutrition.dart';
import 'package:reminder_app/presentation/exercise/exercise_form/misc/duration_picker_providers.dart';
import 'package:reminder_app/presentation/nutrition/misc/nutrients_presentation_classes.dart';
import 'package:reminder_app/presentation/nutrition/nutrition_form/widgets/nutrients_list/nutrient_name_field.dart';
import 'package:reminder_app/presentation/nutrition/nutrition_form/widgets/nutrients_list/nutrient_pieces_field.dart';
import 'package:reminder_app/presentation/nutrition/nutrition_form/widgets/nutrients_list/nutrient_volume_field.dart';
import 'package:reminder_app/presentation/nutrition/nutrition_form/widgets/nutrients_list/nutrient_weight_field.dart';

class NutritionListWidget extends StatelessWidget {
  const NutritionListWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<NutritionFormBloc, NutritionFormState>(
      listenWhen: (p, c) =>
          p.nutrition.nutrientsList.isFull != c.nutrition.nutrientsList.isFull,
      listener: (context, state) {
        if (state.nutrition.nutrientsList.isFull) {
          FlushbarHelper.createError(
            message: 'You can only add ${NutrientsList.maxLength} nutrients!',
            duration: const Duration(seconds: 5),
          ).show(context);
        }
      },
      child: Consumer<FormNutrientsList>(
        builder: (context, formNutrientsList, child) {
          return ListView.builder(
            physics: const ScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return NutrientsTile(
                index: index,
                key: ValueKey(context.formNutrientsList[index].id),
              );
            },
            itemCount: formNutrientsList.value.size,
          );
        },
      ),
    );
  }
}

class NutrientsTile extends HookWidget {
  final int index;

  const NutrientsTile({
    Key key,
    @required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nutrientsList = context.formNutrientsList.getOrElse(
      index,
      (_) => NutrientItemPrimitive.empty(),
    );

    return Slidable(
      actionPane: const SlidableDrawerActionPane(),
      actionExtentRatio: 0.15,
      secondaryActions: [
        IconSlideAction(
          caption: 'Delete',
          icon: Icons.delete,
          color: Colors.red,
          onTap: () {
            context.formNutrientsList =
                context.formNutrientsList.minusElement(nutrientsList);
            context.read<NutritionFormBloc>().add(
                  NutritionFormEvent.nutrientsListChanged(
                      context.formNutrientsList),
                );
          },
        )
      ],
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 10,
                right: 15,
                child: Text(
                  '${index + 1}.',
                  style: const TextStyle(fontSize: 30),
                ),
              ),
              ListTile(
                // leading:

                title: Stack(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                const Text('Name:'),
                                SizedBox(
                                  width: 150,
                                  height: 70,
                                  child: NutrientNameField(
                                    index: index,
                                    nutrient: nutrientsList,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                const Text('Pieces:'),
                                SizedBox(
                                  width: 110,
                                  height: 70,
                                  child: NutrientPiecesField(
                                    index: index,
                                    nutrient: nutrientsList,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                const Text('weight'),
                                SizedBox(
                                  width: 150,
                                  height: 70,
                                  child: NutrientWeightField(
                                    index: index,
                                    nutrient: nutrientsList,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                const Text('volume:'),
                                SizedBox(
                                  width: 110,
                                  height: 70,
                                  child: NutrientVolumeField(
                                    index: index,
                                    nutrient: nutrientsList,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}