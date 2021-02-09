part of 'nutrition_watcher_bloc.dart';

@freezed
abstract class NutritionWatcherState with _$NutritionWatcherState {
  const factory NutritionWatcherState.initial() = _Initial;
  const factory NutritionWatcherState.loadInProgress() = _LoadInProgress;
  const factory NutritionWatcherState.loadSuccess(KtList<Nutrition> nutrition) = _LoadSuccess;
  const factory NutritionWatcherState.loadFailure(NutritionFailure failure) = _LoadFailure;
}
