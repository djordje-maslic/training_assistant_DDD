import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';
import 'package:reminder_app/application/exercise/exercise_actor/exercise_actor_bloc.dart';
import 'package:reminder_app/domain/exercise/exercise.dart';
import 'package:reminder_app/domain/exercise/sets.dart';
import 'package:reminder_app/domain/exercise/value_objects.dart';
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
         ExtendedNavigator.of(context).pushExerciseFormPage(editedExercise: exercise);
         
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
              if (exercise.setsList.length > 0) ...[
                const SizedBox(
                  height: 4,
                ),
                Wrap(
                  children: [
                    ...exercise.setsList
                        .getOrCrash()
                        .map((set) => SetDisplay(
                              sets: set,
                      setList: exercise.setsList,
                            ))
                        .iter,
                  ],
                )
              ]
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
                  Navigator.pop(context);},
                child: const Text('DELETE'),
              )
            ],
          );
        });
  }
}

class SetDisplay extends StatelessWidget {
  final Sets sets;
  final SetsList setList;
  const SetDisplay({Key key, @required this.sets, @required this.setList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('${setList.getOrCrash().indexOf(sets) +1}.SET: ${sets.number.getOrCrash().toString()} reps  ');
  }
}
