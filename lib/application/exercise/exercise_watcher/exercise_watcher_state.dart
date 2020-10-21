part of 'exercise_watcher_bloc.dart';

@freezed
abstract class ExerciseWatcherState with _$ExerciseWatcherState {
  const factory ExerciseWatcherState.initial() = _Initial;
  const factory ExerciseWatcherState.loadInProgress() = _LoadInProgress;
  const factory ExerciseWatcherState.loadSuccess(KtList<Exercise> exercise) = _LoadSuccess;
  const factory ExerciseWatcherState.loadFailure(ExerciseFailure failure) = _LoadFailure;
}
