part of 'nutrition_form_bloc.dart';

@freezed
abstract class NutritionFormState with _$NutritionFormState {
  const factory NutritionFormState({
    @required Nutrition nutrition,
    @required bool showErrorMessages,
    @required bool isEditing,
    @required bool isSaving,
    @required Option<Either<NutritionFailure, Unit>> saveFailureOrSuccessOption,
  }) = _NutritionFormState;

  factory NutritionFormState.initial() =>
      NutritionFormState(
        nutrition: Nutrition.empty(),
        showErrorMessages: false,
        isEditing: false,
        isSaving: false,
        saveFailureOrSuccessOption: none(),
      );
}
