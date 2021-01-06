part of 'exercise_form_bloc.dart';

@freezed
abstract class ExerciseFormEvent with _$ExerciseFormEvent {
  const factory ExerciseFormEvent.initialized(
      Option<Exercise> initialExerciseOption) = _Initialized;

  const factory ExerciseFormEvent.exerciseNameChanged(String nameStr) =
      _ExerciseNameChanged;

  const factory ExerciseFormEvent.exerciseDateChanged(int dateInt) =
      _ExerciseDateChanged;

  const factory ExerciseFormEvent.exerciseUserNameChanged(String userName) =
      _ExerciseSereiesNumbChanged;

  const factory ExerciseFormEvent.exerciseSetsChanged(
      KtList<SetItemPrimitive> sets) = _ExerciseRepetitionsListChanged;

  const factory ExerciseFormEvent.exerciseSaved() = _ExerciseSavd;
}
