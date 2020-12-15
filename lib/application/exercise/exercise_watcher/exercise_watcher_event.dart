part of 'exercise_watcher_bloc.dart';

@freezed
abstract class ExerciseWatcherEvent with _$ExerciseWatcherEvent {
  const factory ExerciseWatcherEvent.watchAllStarted() =
      _WatchAllStarted;

  const factory ExerciseWatcherEvent.watchUsersExercises() =
      _WatchSearchedExercises;

  const factory ExerciseWatcherEvent.exerciseReceived(
          Either<ExerciseFailure, KtList<Exercise>> failureOrExercise) =
      _ExerciseReceived;
}
