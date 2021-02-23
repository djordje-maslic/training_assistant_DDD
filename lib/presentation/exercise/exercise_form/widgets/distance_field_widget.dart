import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';
import 'package:reminder_app/application/exercise/form_bloc/exercise_form_bloc.dart';
import 'package:reminder_app/application/user/user_watcher/user_watcher_bloc.dart';
import 'package:reminder_app/presentation/exercise/exercise_form/misc/build_context_x.dart';
import 'package:reminder_app/presentation/exercise/exercise_form/misc/set_presentation_classes.dart';

class DistanceFieldWidget extends StatelessWidget {
  final int index;
  final SetItemPrimitive set;

  const DistanceFieldWidget({@required this.index, @required this.set, Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double distanceUnit =  context.watch<UserWatcherBloc>().state.map(initial: (_) => 0.0,
        loadInProgress: (_) => 0.0,
        loadSuccess: (state) => state.user.exerciseDistanceUnit.getOrCrash() == 'km' ? 1.0 : 1.609334 ,
        loadFailure:(_)=> 1.0);
    return TextFormField(
      initialValue: ( context.formSets[index].distance/distanceUnit
              )
          .toStringAsFixed(2),
      validator: (_) {
        return context
            .read<ExerciseFormBloc>()
            .state
            .exercise
            .setsList
            .getOrCrash()
            .asList()[index]
            .distance
            .value
            .fold(
                (f) => f.maybeMap(
                    orElse: () => 'Error',
                    exceedingValue: (f) => 'Exceeding value ${f.max}'),
                (r) => null);
      },
      onChanged: (value){


        context.formSets = context.formSets.map((setList) => setList == set
            ? set.copyWith(
                distance: double.tryParse(value) * distanceUnit)
            : setList);
        context
            .read<ExerciseFormBloc>()
            .add(ExerciseFormEvent.exerciseSetsChanged(context.formSets));
      },
      decoration: InputDecoration(
          hintText: '0',
          suffixText: context.watch<UserWatcherBloc>().state.map(
                initial: (_) => '',
                loadInProgress: (_) => '',
                loadSuccess: (state) =>
                    state.user.exerciseDistanceUnit.getOrCrash(),
                loadFailure: (_) => 'km',
              ),
          counterText: ''),
      maxLength: 7,
      keyboardType: const TextInputType.numberWithOptions(),
    );
  }
}
