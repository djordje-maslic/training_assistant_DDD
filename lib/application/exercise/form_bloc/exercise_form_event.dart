part of 'exercise_form_bloc.dart';

@freezed
abstract class ExerciseFormEvent with _$ExerciseFormEvent {
  const factory ExerciseFormEvent.initialized(
      Option<Exercise> initialExerciseOption) = _Initialized;

  const factory ExerciseFormEvent.exerciseNameChanged(String nameStr) =
      _ExerciseNameChanged;

  const factory ExerciseFormEvent.exerciseDateChanged(DateTime dateInt) =
      _ExerciseDateChanged;

  const factory ExerciseFormEvent.exerciseSetNumbChanged(int seriesNumbInt) =
      _ExerciseSereiesNumbChanged;

  const factory ExerciseFormEvent.exerciseRepetitionsListChanged(
      KtList<SetItemPrimitive> sets) = _ExerciseRepetitionsListChanged;

  const factory ExerciseFormEvent.exerciseSaved() = _ExerciseSavd;
}
