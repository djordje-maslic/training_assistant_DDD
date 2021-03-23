import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';
import 'package:reminder_app/application/nutrition/nutrition_actor/nutrition_actor_bloc.dart';
import 'package:reminder_app/application/user/user_watcher/user_watcher_bloc.dart';
import 'package:reminder_app/domain/nutrition/nutrition.dart';
import 'package:reminder_app/domain/nutrition/value_objects.dart';
import 'package:reminder_app/presentation/exercise/exercise_form/misc/date_time_converter.dart';

class NutritionCard extends StatelessWidget {
  final Nutrition nutrition;

  const NutritionCard({
    Key key,
    @required this.nutrition,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyleHedCard =
        TextStyle(fontSize: 20, color: Colors.indigoAccent[100]);

    return Card(
      color: Colors.amber[100],
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(
            '/nutrition-form-page',
            arguments: nutrition,
          );
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
                style: textStyleHedCard,
              ),
              Text(
                dateTimeConverter(nutrition.nutritionDateTime.getOrCrash()),
                style: textStyleHedCard,
              ),
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
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('CANCEL'),
              ),
              TextButton(
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
    final TextStyle textStyleDataColumn =
        TextStyle(fontSize: 15, color: Colors.indigoAccent[100]);

    return DataTable(
      columnSpacing: 15.0,
      columns: [
        DataColumn(
            tooltip: 'Number of nutrients',
            label: Text(
              'nutrients',
              style: textStyleDataColumn,
            )),
        DataColumn(
            label: Text(
          'Name',
          style: textStyleDataColumn,
        )),
        DataColumn(
            label: Text(
          'Pieces',
          style: textStyleDataColumn,
        )),
        DataColumn(
            label: Column(
          children: [
            Text(
              'Weight',
              style: textStyleDataColumn,
            ),
            Text(
              context.watch<UserWatcherBloc>().state.map(
                    initial: (_) => '',
                    loadInProgress: (_) => '',
                    loadSuccess: (state) {
                      return state.user.nutritionWeightUnit.getOrCrash();
                    },
                    loadFailure: (_) => 'g',
                  ),
              style: textStyleDataColumn,
            ),
          ],
        )),
        DataColumn(
            label: Column(
          children: [
            Text(
              'Volume',
              style: textStyleDataColumn,
            ),
            Text(
              context.watch<UserWatcherBloc>().state.map(
                    initial: (_) => '',
                    loadInProgress: (_) => '',
                    loadSuccess: (state) {
                      return state.user.nutritionVolumeUnit.getOrCrash();
                    },
                    loadFailure: (_) => 'ml',
                  ),
              style: textStyleDataColumn,
            ),
          ],
        )),
      ],
      rows: [
        ...nutrientsList
            .getOrCrash()
            .map(
              (nutrient) => DataRow(
                cells: [
                  DataCell(Text(
                    '${nutrientsList.getOrCrash().indexOf(nutrient) + 1}',
                    style: const TextStyle(fontSize: 20),
                  )),
                  DataCell(
                    Text(
                      '${nutrient.nutrientName.getOrCrash()}',
                      style: const TextStyle(color: Colors.amber, fontSize: 20),
                    ),
                  ),
                  DataCell(
                    Text(
                      '${nutrient.nutrientPieces.getOrCrash()}',
                      style: const TextStyle(color: Colors.red, fontSize: 20),
                    ),
                  ),
                  DataCell(
                    Text(
                      context.watch<UserWatcherBloc>().state.map(
                            initial: (_) => '',
                            loadInProgress: (_) => '',
                            loadSuccess: (state) {
                              return state.user.nutritionWeightUnit
                                          .getOrCrash() ==
                                      'g'
                                  ? double.tryParse(nutrient.nutrientWeight
                                          .getOrCrash()
                                          .toString())
                                      .toStringAsFixed(2)
                                  : (double.tryParse(((nutrient.nutrientWeight
                                                      .getOrCrash() ??
                                                  0) /
                                              453.59237)
                                          .toString())
                                      .toStringAsFixed(2));
                            },
                            loadFailure: (_) => double.tryParse(nutrient
                                    .nutrientWeight
                                    .getOrCrash()
                                    .toString())
                                .toStringAsFixed(2),
                          ),
                      style: const TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                  DataCell(
                    Text(
                      context.watch<UserWatcherBloc>().state.map(
                            initial: (_) => '',
                            loadInProgress: (_) => '',
                            loadSuccess: (state) {
                              return state.user.nutritionVolumeUnit
                                          .getOrCrash() ==
                                      'ml'
                                  ? double.tryParse(nutrient.nutrientVolume
                                          .getOrCrash()
                                          .toString())
                                      .toStringAsFixed(2)
                                  : (double.tryParse(((nutrient.nutrientVolume
                                                      .getOrCrash() ??
                                                  0) *
                                              0.033814)
                                          .toString())
                                      .toStringAsFixed(2));
                            },
                            loadFailure: (_) => double.tryParse(nutrient
                                    .nutrientVolume
                                    .getOrCrash()
                                    .toString())
                                .toStringAsFixed(2),
                          ),
                      style:
                          const TextStyle(color: Colors.indigo, fontSize: 20),
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
