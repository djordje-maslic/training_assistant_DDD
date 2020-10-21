part of 'exercise_actor_bloc.dart';

@freezed
abstract class ExerciseActorState with _$ExerciseActorState {
  const factory ExerciseActorState.initial() = _Initial;

  const factory ExerciseActorState.actionInProgress() = _ActionInProgress;

  const factory ExerciseActorState.deleteFailure(
      ExerciseFailure exerciseFailure) = _DeleteFailure;

  const factory ExerciseActorState.deleteSuccess() = _DeleteSuccess;
}
