part of 'body_measures_watcher_bloc.dart';

@freezed
abstract class BodyMeasuresWatcherState with _$BodyMeasuresWatcherState {
  const factory BodyMeasuresWatcherState.initial() = _Initial;

  const factory BodyMeasuresWatcherState.loadInProgress() = _LoadInProgress;

  const factory BodyMeasuresWatcherState.loadSuccess(
      KtList<BodyMeasures> exercise) = _LoadSuccess;

  const factory BodyMeasuresWatcherState.loadFailure(
      BodyMeasuresFailure failure) = _LoadFailure;
}
