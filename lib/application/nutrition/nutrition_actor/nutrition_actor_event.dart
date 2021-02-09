part of 'nutrition_actor_bloc.dart';

@freezed
abstract class NutritionActorEvent with _$NutritionActorEvent {
  const factory NutritionActorEvent.deleted(Nutrition nutrition) = _Deleted;
}
