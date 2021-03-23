import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';
import 'package:reminder_app/application/exercise/form_bloc/exercise_form_bloc.dart';
import 'package:reminder_app/application/user/user_watcher/user_watcher_bloc.dart';
import 'package:reminder_app/presentation/exercise/exercise_form/misc/build_context_x.dart';
import 'package:reminder_app/presentation/exercise/exercise_form/misc/set_presentation_classes.dart';

class WeightsFieldWidget extends StatelessWidget {
  final int index;
  final SetItemPrimitive set;

  const WeightsFieldWidget({@required this.index, @required this.set, Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double weightUnit = context.watch<UserWatcherBloc>().state.map(
        initial: (_) => 0.0,
        loadInProgress: (_) => 0.0,
        loadSuccess: (state) =>
            state.user.exerciseWeightUnit.getOrCrash() == 'kg' ? 1.0 : 0.45359237,
        loadFailure: (_) => 1.0);
    return TextFormField(
      style: const TextStyle(fontSize: 20, color: Colors.indigoAccent),
      initialValue: (context.formSets[index].weights / weightUnit).toStringAsFixed(2),
      validator: (_) {
        return context
            .read<ExerciseFormBloc>()
            .state
            .exercise
            .setsList
            .getOrCrash()
            .asList()[index]
            .weights
            .value
            .fold(
                (f) => f.maybeMap(
                    orElse: () => 'Error',
                    empty: (f) => 'Cannot bi empty',
                    exceedingValue: (f) => 'Exceeding value ${f.max}'),
                (r) => null);
      },
      onChanged: (value) {
        context.formSets = context.formSets.map((setList) => setList == set
            ? set.copyWith(weights: double.parse(value) * weightUnit)
            : setList);
        context
            .read<ExerciseFormBloc>()
            .add(ExerciseFormEvent.exerciseSetsChanged(context.formSets));
      },
      decoration: InputDecoration(
          suffixText: context.watch<UserWatcherBloc>().state.map(
                initial: (_) => '',
                loadInProgress: (_) => '',
                loadSuccess: (state) =>
                    state.user.exerciseWeightUnit.getOrCrash(),
                loadFailure: (_) => 'kg',
              ),
          counterText: ''),
      maxLength: 7,
      keyboardType: const TextInputType.numberWithOptions(),
    );
  }
}
