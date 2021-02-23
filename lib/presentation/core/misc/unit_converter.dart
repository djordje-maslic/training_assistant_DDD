import 'package:reminder_app/application/user/user_watcher/user_watcher_bloc.dart';

double unitExerciseDistanceConverter({double distance, UserWatcherBloc bloc}) {
  final String unit = bloc.state.map(
      initial: (_) => 'km',
      loadInProgress: (_) => '',
      loadSuccess: (state) => state.user.exerciseDistanceUnit.getOrCrash(),
      loadFailure: (_) => 'km');
  double result;
  switch (unit) {
    case 'km':
      {
        result = distance;
      }
      break;

    case 'mi':
      {
        result = distance / 1.609334;
      }
  }
  return result;
}

double unitExerciseWeightConverter({double weight, UserWatcherBloc bloc}) {
  final String unit = bloc.state.map(
      initial: (_) => 'kg',
      loadInProgress: (_) => '',
      loadSuccess: (state) => state.user.exerciseWeightUnit.getOrCrash(),
      loadFailure: (_) => 'kg');
  double result;
  switch (unit) {
    case 'kg':
      {
        result = weight;
      }
      break;

    case 'lb':
      {
        result = weight / 0.45359237;
      }
  }
  return result;
}

double unitUserWeightConverter({double weight, UserWatcherBloc bloc}) {
  final String unit = bloc.state.map(
      initial: (_) => 'kg',
      loadInProgress: (_) => '',
      loadSuccess: (state) => state.user.userWeightUnit.getOrCrash(),
      loadFailure: (_) => 'kg');
  double result;
  switch (unit) {
    case 'kg':
      {
        result = weight;
      }
      break;

    case 'lb':
      {
        result = weight / 0.45359237;
      }
  }
  return result;
}

double unitUserHeightConverter({double height, UserWatcherBloc bloc}) {
  final String unit = bloc.state.map(
      initial: (_) => 'cm',
      loadInProgress: (_) => '',
      loadSuccess: (state) => state.user.userHeightUnit.getOrCrash(),
      loadFailure: (_) => 'cm');
  double result;
  switch (unit) {
    case 'cm':
      {
        result = height;
      }
      break;

    case 'ft':
      {
        result = height / 2.54;
      }
  }
  return result;
}

String inToFeetInStringConverter({double inches}) {
  final double feetDouble = inches / 12;
  final int feet = inches ~/ 12;
  final double inchesRemainder = (feetDouble - feet) * 12;

  return '$feet ft ${inchesRemainder.toStringAsFixed(1)} in';
}
