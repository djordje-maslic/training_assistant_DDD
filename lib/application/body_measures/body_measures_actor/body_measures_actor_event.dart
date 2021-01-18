part of 'body_measures_actor_bloc.dart';

@freezed
abstract class BodyMeasuresActorEvent with _$BodyMeasuresActorEvent {
  const factory BodyMeasuresActorEvent.deleted(BodyMeasures bodyMeasures) =
      _Deleted;
}
