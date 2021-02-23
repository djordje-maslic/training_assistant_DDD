part of 'user_form_bloc.dart';

@freezed
abstract class UserFormEvent with _$UserFormEvent {
  const factory UserFormEvent.initialized(Option<User> initialUserOption) =
      _Initialized;

  const factory UserFormEvent.userNameChanged(String nameStr) =
      _UserNameChanged;

  const factory UserFormEvent.userDateOfBirthChanged(int userDateOfBirthInt) =
      _UserDateOfBirthChanged;

  const factory UserFormEvent.userGenderChanged({@required bool genderBool}) =
      _UserGenderChanged;

  const factory UserFormEvent.exerciseDistanceUnitChanged(
          {@required String exerciseDistanceUnitString}) =
      _ExerciseDistanceUnitChanged;

  const factory UserFormEvent.exerciseWeightUnitChanged(
      {@required String exerciseWeightUnitString}) = _ExerciseWeightUnitChanged;

  const factory UserFormEvent.userHeightUnitChanged(
      {@required String userHeightUnitString}) = _UserHeightUnitChanged;

  const factory UserFormEvent.userWeightUnitChanged(
      {@required String userWeightUnitString}) = _UserWeightUnitChanged;

  const factory UserFormEvent.nutritionWeightUnitChanged(
          {@required String nutritionWeightUnitString}) =
      _NutritionWeightUnitChanged;

  const factory UserFormEvent.nutritionVolumeUnitChanged(
          {@required String nutritionVolumeUnitString}) =
      _NutritionVolumeUnitChanged;

  const factory UserFormEvent.userSaved() = _UserSavd;
}
