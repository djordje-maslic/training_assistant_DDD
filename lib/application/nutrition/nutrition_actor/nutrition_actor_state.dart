part of 'nutrition_actor_bloc.dart';

@freezed
abstract class NutritionActorState with _$NutritionActorState {
  const factory NutritionActorState.initial() = _Initial;

  const factory NutritionActorState.actionInProgress() = _ActionInProgress;

  const factory NutritionActorState.deleteFailure(
      NutritionFailure nutritionFailure) = _DeleteFailure;

  const factory NutritionActorState.deleteSuccess() = _DeleteSuccess;
}
