part of 'body_measures_actor_bloc.dart';

@freezed
abstract class BodyMeasuresActorState with _$BodyMeasuresActorState {
  const factory BodyMeasuresActorState.initial() = _Initial;

  const factory BodyMeasuresActorState.actionInProgress() = _ActionInProgress;

  const factory BodyMeasuresActorState.deleteFailure(
      BodyMeasuresFailure bodyMeasuresFailure) = _DeleteFailure;

  const factory BodyMeasuresActorState.deleteSuccess() = _DeleteSuccess;
}
