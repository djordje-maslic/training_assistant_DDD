part of 'nutrition_watcher_bloc.dart';

@freezed
abstract class NutritionWatcherEvent with _$NutritionWatcherEvent {
  const factory NutritionWatcherEvent.watchAllStarted() =
  _WatchAllStarted;

  const factory NutritionWatcherEvent.watchUsersNutrition() =
  _WatchUsersNutrition;

  const factory NutritionWatcherEvent.nutritionReceived(
      Either<NutritionFailure, KtList<Nutrition>> failureOrNutrition) =
  _NutritionReceived;
}
