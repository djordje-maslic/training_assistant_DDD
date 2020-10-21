part of 'exercise_actor_bloc.dart';

@freezed
abstract class ExerciseActorEvent with _$ExerciseActorEvent {
  const factory ExerciseActorEvent.deleted(Exercise exercise) = _Deleted;
}
