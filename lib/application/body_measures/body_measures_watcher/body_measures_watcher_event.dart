part of 'body_measures_watcher_bloc.dart';

@freezed
abstract class BodyMeasuresWatcherEvent with _$BodyMeasuresWatcherEvent {
  const factory BodyMeasuresWatcherEvent.watchAllStarted() = _WatchAllStarted;

  const factory BodyMeasuresWatcherEvent.bodyMeasureReceived(
          Either<BodyMeasuresFailure, KtList<BodyMeasures>> failureOrBodyMeasures) =
      _BodyMeasureReceived;
}
