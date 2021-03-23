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

class ExerciseCard extends StatelessWidget {
  final Exercise exercise;

  const ExerciseCard({
    Key key,
    @required this.exercise,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyleHedCard =
        TextStyle(fontSize: 20, color: Colors.indigoAccent[100]);

    return Card(
      color: Colors.amber[100],
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed('/exercise-form-page',
              arguments: exercise);
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
                style: textStyleHedCard,
              ),
              Text(
                dateTimeConverter(exercise.date.getOrCrash()),
                style: textStyleHedCard,
              ),
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
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('CANCEL'),
              ),
              TextButton(
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
    final TextStyle textStyleDataColumn =
        TextStyle(fontSize: 15, color: Colors.indigoAccent[100]);

    return DataTable(columnSpacing: 8.0, columns: [
      DataColumn(
        tooltip: 'Number of set',
        label: Text('Set', style: textStyleDataColumn),
      ),
      DataColumn(
        label: Text(
          'Reps',
          style: textStyleDataColumn,
        ),
      ),
      DataColumn(
          label: Column(
        children: [
          Text(
            'Bad',
            style: textStyleDataColumn,
          ),
          Text(
            'Reps',
            style: textStyleDataColumn,
          ),
        ],
      )),
      DataColumn(
          label: Expanded(
        child: Column(
          children: [
            Text(
              'Weight',
              style: textStyleDataColumn,
            ),
            Text(
              context.watch<UserWatcherBloc>().state.map(
                    initial: (_) => '',
                    loadInProgress: (_) => '',
                    loadSuccess: (state) =>
                        state.user.exerciseWeightUnit.getOrCrash(),
                    loadFailure: (_) => 'kg',
                  ),
              style: textStyleDataColumn,
            ),
          ],
        ),
      )),
      DataColumn(
          label: Expanded(
        child: Column(
          children: [
            Text(
              'Distance',
              style: textStyleDataColumn,
            ),
            Text(
              context.watch<UserWatcherBloc>().state.map(
                    initial: (_) => '',
                    loadInProgress: (_) => '',
                    loadSuccess: (state) =>
                        state.user.exerciseDistanceUnit.getOrCrash(),
                    loadFailure: (_) => 'km',
                  ),
              style: textStyleDataColumn,
            )
          ],
        ),
      )),
      DataColumn(
          label: Column(
        children: [
          Text(
            'Duration',
            style: textStyleDataColumn,
          ),
          Text(
            'h:min:sec',
            style: textStyleDataColumn,
          )
        ],
      )),
    ], rows: [
      ...setList
          .getOrCrash()
          .map((set) => DataRow(
                cells: [
                  DataCell(Text(
                    '${setList.getOrCrash().indexOf(set) + 1}',
                    style: const TextStyle(fontSize: 20),
                  )),
                  DataCell(
                    Text(
                      '${set.number.getOrCrash()}',
                      style: TextStyle(color: Colors.amber[900], fontSize: 20),
                    ),
                  ),
                  DataCell(
                    Text(
                      '${set.badReps.getOrCrash()}',
                      style: const TextStyle(color: Colors.red, fontSize: 20),
                    ),
                  ),
                  DataCell(
                    Text(
                      unitExerciseWeightConverter(
                            weight: set.weights.getOrCrash(),
                            bloc: context.watch<UserWatcherBloc>(),
                          )?.toStringAsFixed(2) ??
                          '',
                      style: const TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                  DataCell(
                    Text(
                      unitExerciseDistanceConverter(
                            distance: set.distance.getOrCrash(),
                            bloc: context.watch<UserWatcherBloc>(),
                          )?.toStringAsFixed(2) ??
                          '',
                      style:
                          const TextStyle(color: Colors.indigo, fontSize: 20),
                    ),
                  ),
                  DataCell(
                    Text(
                      SetDuration(int.tryParse(
                              set.setDuration.getOrCrash().toString()))
                          .clockDisplay,
                      style: const TextStyle(
                          color: Colors.deepPurple, fontSize: 20),
                    ),
                  ),
                ],
              ))
          .iter,
    ]);
  }
}
