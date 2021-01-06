part of 'user_form_bloc.dart';

@freezed
abstract class UserFormEvent with _$UserFormEvent {
  const factory UserFormEvent.initialized(Option<User> initialUserOption) =
      _Initialized;

  const factory UserFormEvent.userNameChanged(String nameStr) =
      _UserNameChanged;

  const factory UserFormEvent.userWeightChanged(double weightDouble) =
      _UserWeightChanged;

  const factory UserFormEvent.userHeightChanged(double heightDouble) =
      _UserHeightChanged;

  const factory UserFormEvent.userSaved() = _UserSavd;
}
