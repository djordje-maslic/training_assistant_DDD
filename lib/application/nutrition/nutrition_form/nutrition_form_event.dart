part of 'nutrition_form_bloc.dart';

@freezed
abstract class NutritionFormEvent with _$NutritionFormEvent {
  const factory NutritionFormEvent.initialized(
      Option<Nutrition> initialNutritionOption) = _Initialized;

  const factory NutritionFormEvent.nutritionNameChanged(String nameStr) =
  _NutritionNameChanged;

  const factory NutritionFormEvent.nutritionDateTimeChanged(int dateTimeInt) =
  _NutritionDateTimeChanged;

  const factory NutritionFormEvent.nutrientsListChanged(
      KtList<NutrientItemPrimitive> nutrientsList) = _NutrientsListChanged;

  const factory NutritionFormEvent.nutritionSaved() = _NutritionSaved;
}
