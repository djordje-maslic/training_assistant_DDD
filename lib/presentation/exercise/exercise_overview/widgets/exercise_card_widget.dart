import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';
import 'package:reminder_app/application/exercise/exercise_actor/exercise_actor_bloc.dart';
import 'package:reminder_app/application/user/user_watcher/user_watcher_bloc.dart';
import 'package:reminder_app/domain/exercise/exercise.dart';
import 'package:reminder_app/domain/exercise/sets.dart';
import 'package:reminder_app/domain/exercise/value_objects.dart';
import 'package:reminder_app/presentation/core/misc/unit_converter.dart';
import 'package:reminder_app/presentation/exercise/exercise_form/misc/date_time_converter.dart';
import 'package:reminder_app/presentation/routes/router.gr.dart';

class ExerciseCard extends StatelessWidget {
  final Exercise exercise;

  const ExerciseCard({
    Key key,
    @required this.exercise,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          ExtendedNavigator.of(context)
              .pushExerciseFormPage(editedExercise: exercise);
        },
        onLongPress: () {
          final exerciseActorBloc = context.read<ExerciseActorBloc>();
          _showDeletionDialog(context, exerciseActorBloc);
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                exercise.name.getOrCrash(),
                style: const TextStyle(fontSize: 18),
              ),
              Text(dateTimeConverter(exercise.date.getOrCrash())),
              if (exercise.setsList.length > 0) ...[
                const SizedBox(
                  height: 4,
                ),
                SetDisplay(setList: exercise.setsList)
              ],
            ],
          ),
        ),
      ),
    );
  }

  void _showDeletionDialog(
      BuildContext context, ExerciseActorBloc exerciseActorBloc) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Selected exercise: '),
            content: Text(
              exercise.name.getOrCrash(),
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
                  exerciseActorBloc.add(ExerciseActorEvent.deleted(exercise));
                  Navigator.pop(context);
                },
                child: const Text('DELETE'),
              )
            ],
          );
        });
  }
}

class SetDisplay extends StatelessWidget {
  final SetsList<Sets> setList;

  const SetDisplay({Key key, @required this.setList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(columnSpacing: 10.0, columns: [
      const DataColumn(tooltip: 'Number of set', label: Text('Set')),
      const DataColumn(label: Text('Reps')),
      const DataColumn(label: Text('BadReps')),
      DataColumn(
          label: Expanded(
        child: Column(
          children: [
           const Text('Weight'),
            Text(context.watch<UserWatcherBloc>().state.map(
              initial: (_) => '',
              loadInProgress: (_) => '',
              loadSuccess: (state) =>
                  state.user.exerciseWeightUnit.getOrCrash(),
              loadFailure: (_) => 'kg',
            )),
          ],
        ),
      )),
      DataColumn(
          label: Expanded(
        child: Column(
          children: [
           const Text('Distance'),
            Text(context.watch<UserWatcherBloc>().state.map(
              initial: (_) => '',
              loadInProgress: (_) => '',
              loadSuccess: (state) =>
                  state.user.exerciseDistanceUnit.getOrCrash(),
              loadFailure: (_) => 'km',
            ))
          ],
        ),
      )),
       DataColumn(label: Column(
        children:const[
          Text('Duration'),
          Text('h:min:sec')
        ],
      )),
    ], rows: [
      ...setList
          .getOrCrash()
          .map((set) => DataRow(
                cells: [
                  DataCell(Text('${setList.getOrCrash().indexOf(set) + 1}')),
                  DataCell(
                    Text(
                      '${set.number.getOrCrash()}',
                      style: const TextStyle(color: Colors.amber),
                    ),
                  ),
                  DataCell(
                    Text(
                      '${set.badReps.getOrCrash()}',
                      style: const TextStyle(color: Colors.red),
                    ),
                  ),
                  DataCell(
                    Text(
                      unitExerciseWeightConverter(
                        weight: set.weights.getOrCrash(),
                        bloc: context.watch<UserWatcherBloc>(),
                      )?.toStringAsFixed(2) ?? '',
                      style: const TextStyle(color: Colors.black),
                    ),
                  ),
                  DataCell(
                    Text(
                      unitExerciseDistanceConverter(
                        distance: set.distance.getOrCrash(),
                        bloc: context.watch<UserWatcherBloc>(),
                      )?.toStringAsFixed(2) ?? '',
                      style: const TextStyle(color: Colors.indigo),
                    ),
                  ),
                  DataCell(
                    Text(
                      SetDuration(int.tryParse(
                              set.setDuration.getOrCrash().toString()))
                          .clockDisplay,
                      style: const TextStyle(color: Colors.deepPurple),
                    ),
                  ),
                ],
              ))
          .iter,
    ]);
  }
}
