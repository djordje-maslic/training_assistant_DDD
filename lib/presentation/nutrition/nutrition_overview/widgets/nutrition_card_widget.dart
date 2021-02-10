import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';
import 'package:reminder_app/application/nutrition/nutrition_actor/nutrition_actor_bloc.dart';
import 'package:reminder_app/domain/nutrition/nutrition.dart';
import 'package:reminder_app/domain/nutrition/value_objects.dart';
import 'package:reminder_app/presentation/exercise/exercise_form/misc/date_time_converter.dart';
import 'package:reminder_app/presentation/routes/router.gr.dart';

class NutritionCard extends StatelessWidget {
  final Nutrition nutrition;

  const NutritionCard({
    Key key,
    @required this.nutrition,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          ExtendedNavigator.of(context)
              .pushNutritionFormPage(editedNutrition: nutrition);
        },
        onLongPress: () {
          final nutritionActorBloc = context.read<NutritionActorBloc>();
          _showDeletionDialog(context, nutritionActorBloc);
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                nutrition.nutritionName.getOrCrash(),
                style: const TextStyle(fontSize: 18),
              ),
              Text(dateTimeConverter(nutrition.nutritionDateTime.getOrCrash())),
              if (nutrition.nutrientsList.length > 0) ...[
                const SizedBox(
                  height: 4,
                ),
                NutritionListDisplay(nutrientsList: nutrition.nutrientsList)
              ],
            ],
          ),
        ),
      ),
    );
  }

  void _showDeletionDialog(
      BuildContext context, NutritionActorBloc nutritionActorBloc) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Selected nutrition: '),
            content: Text(
              nutrition.nutritionName.getOrCrash(),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
            actions: [
              FlatButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('CANCEL'),
              ),
              FlatButton(
                onPressed: () {
                  nutritionActorBloc
                      .add(NutritionActorEvent.deleted(nutrition));
                  Navigator.pop(context);
                },
                child: const Text('DELETE'),
              )
            ],
          );
        });
  }
}

class NutritionListDisplay extends StatelessWidget {
  final NutrientsList nutrientsList;

  const NutritionListDisplay({Key key, @required this.nutrientsList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columnSpacing: 15.0,
      columns: const [
        DataColumn(tooltip: 'Number of nutrients', label: Text('nutrients')),
        DataColumn(label: Text('Name')),
        DataColumn(label: Text('Pieces')),
        DataColumn(label: Text('Weight')),
        DataColumn(label: Text('Volume')),
      ],
      rows: [
        ...nutrientsList
            .getOrCrash()
            .map(
              (nutrient) => DataRow(
                cells: [
                  DataCell(Text(
                      '${nutrientsList.getOrCrash().indexOf(nutrient) + 1}')),
                  DataCell(
                    Text(
                      '${nutrient.nutrientName.getOrCrash()}',
                      style: const TextStyle(color: Colors.amber),
                    ),
                  ),
                  DataCell(
                    Text(
                      '${nutrient.nutrientPieces.getOrCrash()}',
                      style: const TextStyle(color: Colors.red),
                    ),
                  ),
                  DataCell(
                    Text(
                      '${nutrient.nutrientWeight.getOrCrash()}',
                      style: const TextStyle(color: Colors.black),
                    ),
                  ),
                  DataCell(
                    Text(
                      '${nutrient.nutrientVolume.getOrCrash()}',
                      style: const TextStyle(color: Colors.indigo),
                    ),
                  ),
                ],
              ),
            )
            .iter,
      ],
    );
  }
}
