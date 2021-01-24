// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserFormEventTearOff {
  const _$UserFormEventTearOff();

// ignore: unused_element
  _Initialized initialized(Option<User> initialUserOption) {
    return _Initialized(
      initialUserOption,
    );
  }

// ignore: unused_element
  _UserNameChanged userNameChanged(String nameStr) {
    return _UserNameChanged(
      nameStr,
    );
  }

// ignore: unused_element
  _UserDateOfBirthChanged userDateOfBirthChanged(int userDateOfBirthInt) {
    return _UserDateOfBirthChanged(
      userDateOfBirthInt,
    );
  }

// ignore: unused_element
  _UserHeightChanged userHeightChanged(double heightDouble) {
    return _UserHeightChanged(
      heightDouble,
    );
  }

// ignore: unused_element
  _UserSavd userSaved() {
    return const _UserSavd();
  }
}

/// @nodoc
// ignore: unused_element
const $UserFormEvent = _$UserFormEventTearOff();

/// @nodoc
mixin _$UserFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<User> initialUserOption),
    @required TResult userNameChanged(String nameStr),
    @required TResult userDateOfBirthChanged(int userDateOfBirthInt),
    @required TResult userHeightChanged(double heightDouble),
    @required TResult userSaved(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<User> initialUserOption),
    TResult userNameChanged(String nameStr),
    TResult userDateOfBirthChanged(int userDateOfBirthInt),
    TResult userHeightChanged(double heightDouble),
    TResult userSaved(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult userNameChanged(_UserNameChanged value),
    @required TResult userDateOfBirthChanged(_UserDateOfBirthChanged value),
    @required TResult userHeightChanged(_UserHeightChanged value),
    @required TResult userSaved(_UserSavd value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult userNameChanged(_UserNameChanged value),
    TResult userDateOfBirthChanged(_UserDateOfBirthChanged value),
    TResult userHeightChanged(_UserHeightChanged value),
    TResult userSaved(_UserSavd value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $UserFormEventCopyWith<$Res> {
  factory $UserFormEventCopyWith(
          UserFormEvent value, $Res Function(UserFormEvent) then) =
      _$UserFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserFormEventCopyWithImpl<$Res>
    implements $UserFormEventCopyWith<$Res> {
  _$UserFormEventCopyWithImpl(this._value, this._then);

  final UserFormEvent _value;
  // ignore: unused_field
  final $Res Function(UserFormEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Option<User> initialUserOption});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res> extends _$UserFormEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object initialUserOption = freezed,
  }) {
    return _then(_Initialized(
      initialUserOption == freezed
          ? _value.initialUserOption
          : initialUserOption as Option<User>,
    ));
  }
}

/// @nodoc
class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialUserOption)
      : assert(initialUserOption != null);

  @override
  final Option<User> initialUserOption;

  @override
  String toString() {
    return 'UserFormEvent.initialized(initialUserOption: $initialUserOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.initialUserOption, initialUserOption) ||
                const DeepCollectionEquality()
                    .equals(other.initialUserOption, initialUserOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(initialUserOption);

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<User> initialUserOption),
    @required TResult userNameChanged(String nameStr),
    @required TResult userDateOfBirthChanged(int userDateOfBirthInt),
    @required TResult userHeightChanged(double heightDouble),
    @required TResult userSaved(),
  }) {
    assert(initialized != null);
    assert(userNameChanged != null);
    assert(userDateOfBirthChanged != null);
    assert(userHeightChanged != null);
    assert(userSaved != null);
    return initialized(initialUserOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<User> initialUserOption),
    TResult userNameChanged(String nameStr),
    TResult userDateOfBirthChanged(int userDateOfBirthInt),
    TResult userHeightChanged(double heightDouble),
    TResult userSaved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(initialUserOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult userNameChanged(_UserNameChanged value),
    @required TResult userDateOfBirthChanged(_UserDateOfBirthChanged value),
    @required TResult userHeightChanged(_UserHeightChanged value),
    @required TResult userSaved(_UserSavd value),
  }) {
    assert(initialized != null);
    assert(userNameChanged != null);
    assert(userDateOfBirthChanged != null);
    assert(userHeightChanged != null);
    assert(userSaved != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult userNameChanged(_UserNameChanged value),
    TResult userDateOfBirthChanged(_UserDateOfBirthChanged value),
    TResult userHeightChanged(_UserHeightChanged value),
    TResult userSaved(_UserSavd value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements UserFormEvent {
  const factory _Initialized(Option<User> initialUserOption) = _$_Initialized;

  Option<User> get initialUserOption;
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith;
}

/// @nodoc
abstract class _$UserNameChangedCopyWith<$Res> {
  factory _$UserNameChangedCopyWith(
          _UserNameChanged value, $Res Function(_UserNameChanged) then) =
      __$UserNameChangedCopyWithImpl<$Res>;
  $Res call({String nameStr});
}

/// @nodoc
class __$UserNameChangedCopyWithImpl<$Res>
    extends _$UserFormEventCopyWithImpl<$Res>
    implements _$UserNameChangedCopyWith<$Res> {
  __$UserNameChangedCopyWithImpl(
      _UserNameChanged _value, $Res Function(_UserNameChanged) _then)
      : super(_value, (v) => _then(v as _UserNameChanged));

  @override
  _UserNameChanged get _value => super._value as _UserNameChanged;

  @override
  $Res call({
    Object nameStr = freezed,
  }) {
    return _then(_UserNameChanged(
      nameStr == freezed ? _value.nameStr : nameStr as String,
    ));
  }
}

/// @nodoc
class _$_UserNameChanged implements _UserNameChanged {
  const _$_UserNameChanged(this.nameStr) : assert(nameStr != null);

  @override
  final String nameStr;

  @override
  String toString() {
    return 'UserFormEvent.userNameChanged(nameStr: $nameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserNameChanged &&
            (identical(other.nameStr, nameStr) ||
                const DeepCollectionEquality().equals(other.nameStr, nameStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(nameStr);

  @JsonKey(ignore: true)
  @override
  _$UserNameChangedCopyWith<_UserNameChanged> get copyWith =>
      __$UserNameChangedCopyWithImpl<_UserNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<User> initialUserOption),
    @required TResult userNameChanged(String nameStr),
    @required TResult userDateOfBirthChanged(int userDateOfBirthInt),
    @required TResult userHeightChanged(double heightDouble),
    @required TResult userSaved(),
  }) {
    assert(initialized != null);
    assert(userNameChanged != null);
    assert(userDateOfBirthChanged != null);
    assert(userHeightChanged != null);
    assert(userSaved != null);
    return userNameChanged(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<User> initialUserOption),
    TResult userNameChanged(String nameStr),
    TResult userDateOfBirthChanged(int userDateOfBirthInt),
    TResult userHeightChanged(double heightDouble),
    TResult userSaved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userNameChanged != null) {
      return userNameChanged(nameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult userNameChanged(_UserNameChanged value),
    @required TResult userDateOfBirthChanged(_UserDateOfBirthChanged value),
    @required TResult userHeightChanged(_UserHeightChanged value),
    @required TResult userSaved(_UserSavd value),
  }) {
    assert(initialized != null);
    assert(userNameChanged != null);
    assert(userDateOfBirthChanged != null);
    assert(userHeightChanged != null);
    assert(userSaved != null);
    return userNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult userNameChanged(_UserNameChanged value),
    TResult userDateOfBirthChanged(_UserDateOfBirthChanged value),
    TResult userHeightChanged(_UserHeightChanged value),
    TResult userSaved(_UserSavd value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userNameChanged != null) {
      return userNameChanged(this);
    }
    return orElse();
  }
}

abstract class _UserNameChanged implements UserFormEvent {
  const factory _UserNameChanged(String nameStr) = _$_UserNameChanged;

  String get nameStr;
  @JsonKey(ignore: true)
  _$UserNameChangedCopyWith<_UserNameChanged> get copyWith;
}

/// @nodoc
abstract class _$UserDateOfBirthChangedCopyWith<$Res> {
  factory _$UserDateOfBirthChangedCopyWith(_UserDateOfBirthChanged value,
          $Res Function(_UserDateOfBirthChanged) then) =
      __$UserDateOfBirthChangedCopyWithImpl<$Res>;
  $Res call({int userDateOfBirthInt});
}

/// @nodoc
class __$UserDateOfBirthChangedCopyWithImpl<$Res>
    extends _$UserFormEventCopyWithImpl<$Res>
    implements _$UserDateOfBirthChangedCopyWith<$Res> {
  __$UserDateOfBirthChangedCopyWithImpl(_UserDateOfBirthChanged _value,
      $Res Function(_UserDateOfBirthChanged) _then)
      : super(_value, (v) => _then(v as _UserDateOfBirthChanged));

  @override
  _UserDateOfBirthChanged get _value => super._value as _UserDateOfBirthChanged;

  @override
  $Res call({
    Object userDateOfBirthInt = freezed,
  }) {
    return _then(_UserDateOfBirthChanged(
      userDateOfBirthInt == freezed
          ? _value.userDateOfBirthInt
          : userDateOfBirthInt as int,
    ));
  }
}

/// @nodoc
class _$_UserDateOfBirthChanged implements _UserDateOfBirthChanged {
  const _$_UserDateOfBirthChanged(this.userDateOfBirthInt)
      : assert(userDateOfBirthInt != null);

  @override
  final int userDateOfBirthInt;

  @override
  String toString() {
    return 'UserFormEvent.userDateOfBirthChanged(userDateOfBirthInt: $userDateOfBirthInt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserDateOfBirthChanged &&
            (identical(other.userDateOfBirthInt, userDateOfBirthInt) ||
                const DeepCollectionEquality()
                    .equals(other.userDateOfBirthInt, userDateOfBirthInt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userDateOfBirthInt);

  @JsonKey(ignore: true)
  @override
  _$UserDateOfBirthChangedCopyWith<_UserDateOfBirthChanged> get copyWith =>
      __$UserDateOfBirthChangedCopyWithImpl<_UserDateOfBirthChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<User> initialUserOption),
    @required TResult userNameChanged(String nameStr),
    @required TResult userDateOfBirthChanged(int userDateOfBirthInt),
    @required TResult userHeightChanged(double heightDouble),
    @required TResult userSaved(),
  }) {
    assert(initialized != null);
    assert(userNameChanged != null);
    assert(userDateOfBirthChanged != null);
    assert(userHeightChanged != null);
    assert(userSaved != null);
    return userDateOfBirthChanged(userDateOfBirthInt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<User> initialUserOption),
    TResult userNameChanged(String nameStr),
    TResult userDateOfBirthChanged(int userDateOfBirthInt),
    TResult userHeightChanged(double heightDouble),
    TResult userSaved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userDateOfBirthChanged != null) {
      return userDateOfBirthChanged(userDateOfBirthInt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult userNameChanged(_UserNameChanged value),
    @required TResult userDateOfBirthChanged(_UserDateOfBirthChanged value),
    @required TResult userHeightChanged(_UserHeightChanged value),
    @required TResult userSaved(_UserSavd value),
  }) {
    assert(initialized != null);
    assert(userNameChanged != null);
    assert(userDateOfBirthChanged != null);
    assert(userHeightChanged != null);
    assert(userSaved != null);
    return userDateOfBirthChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult userNameChanged(_UserNameChanged value),
    TResult userDateOfBirthChanged(_UserDateOfBirthChanged value),
    TResult userHeightChanged(_UserHeightChanged value),
    TResult userSaved(_UserSavd value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userDateOfBirthChanged != null) {
      return userDateOfBirthChanged(this);
    }
    return orElse();
  }
}

abstract class _UserDateOfBirthChanged implements UserFormEvent {
  const factory _UserDateOfBirthChanged(int userDateOfBirthInt) =
      _$_UserDateOfBirthChanged;

  int get userDateOfBirthInt;
  @JsonKey(ignore: true)
  _$UserDateOfBirthChangedCopyWith<_UserDateOfBirthChanged> get copyWith;
}

/// @nodoc
abstract class _$UserHeightChangedCopyWith<$Res> {
  factory _$UserHeightChangedCopyWith(
          _UserHeightChanged value, $Res Function(_UserHeightChanged) then) =
      __$UserHeightChangedCopyWithImpl<$Res>;
  $Res call({double heightDouble});
}

/// @nodoc
class __$UserHeightChangedCopyWithImpl<$Res>
    extends _$UserFormEventCopyWithImpl<$Res>
    implements _$UserHeightChangedCopyWith<$Res> {
  __$UserHeightChangedCopyWithImpl(
      _UserHeightChanged _value, $Res Function(_UserHeightChanged) _then)
      : super(_value, (v) => _then(v as _UserHeightChanged));

  @override
  _UserHeightChanged get _value => super._value as _UserHeightChanged;

  @override
  $Res call({
    Object heightDouble = freezed,
  }) {
    return _then(_UserHeightChanged(
      heightDouble == freezed ? _value.heightDouble : heightDouble as double,
    ));
  }
}

/// @nodoc
class _$_UserHeightChanged implements _UserHeightChanged {
  const _$_UserHeightChanged(this.heightDouble) : assert(heightDouble != null);

  @override
  final double heightDouble;

  @override
  String toString() {
    return 'UserFormEvent.userHeightChanged(heightDouble: $heightDouble)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserHeightChanged &&
            (identical(other.heightDouble, heightDouble) ||
                const DeepCollectionEquality()
                    .equals(other.heightDouble, heightDouble)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(heightDouble);

  @JsonKey(ignore: true)
  @override
  _$UserHeightChangedCopyWith<_UserHeightChanged> get copyWith =>
      __$UserHeightChangedCopyWithImpl<_UserHeightChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<User> initialUserOption),
    @required TResult userNameChanged(String nameStr),
    @required TResult userDateOfBirthChanged(int userDateOfBirthInt),
    @required TResult userHeightChanged(double heightDouble),
    @required TResult userSaved(),
  }) {
    assert(initialized != null);
    assert(userNameChanged != null);
    assert(userDateOfBirthChanged != null);
    assert(userHeightChanged != null);
    assert(userSaved != null);
    return userHeightChanged(heightDouble);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<User> initialUserOption),
    TResult userNameChanged(String nameStr),
    TResult userDateOfBirthChanged(int userDateOfBirthInt),
    TResult userHeightChanged(double heightDouble),
    TResult userSaved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userHeightChanged != null) {
      return userHeightChanged(heightDouble);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult userNameChanged(_UserNameChanged value),
    @required TResult userDateOfBirthChanged(_UserDateOfBirthChanged value),
    @required TResult userHeightChanged(_UserHeightChanged value),
    @required TResult userSaved(_UserSavd value),
  }) {
    assert(initialized != null);
    assert(userNameChanged != null);
    assert(userDateOfBirthChanged != null);
    assert(userHeightChanged != null);
    assert(userSaved != null);
    return userHeightChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult userNameChanged(_UserNameChanged value),
    TResult userDateOfBirthChanged(_UserDateOfBirthChanged value),
    TResult userHeightChanged(_UserHeightChanged value),
    TResult userSaved(_UserSavd value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userHeightChanged != null) {
      return userHeightChanged(this);
    }
    return orElse();
  }
}

abstract class _UserHeightChanged implements UserFormEvent {
  const factory _UserHeightChanged(double heightDouble) = _$_UserHeightChanged;

  double get heightDouble;
  @JsonKey(ignore: true)
  _$UserHeightChangedCopyWith<_UserHeightChanged> get copyWith;
}

/// @nodoc
abstract class _$UserSavdCopyWith<$Res> {
  factory _$UserSavdCopyWith(_UserSavd value, $Res Function(_UserSavd) then) =
      __$UserSavdCopyWithImpl<$Res>;
}

/// @nodoc
class __$UserSavdCopyWithImpl<$Res> extends _$UserFormEventCopyWithImpl<$Res>
    implements _$UserSavdCopyWith<$Res> {
  __$UserSavdCopyWithImpl(_UserSavd _value, $Res Function(_UserSavd) _then)
      : super(_value, (v) => _then(v as _UserSavd));

  @override
  _UserSavd get _value => super._value as _UserSavd;
}

/// @nodoc
class _$_UserSavd implements _UserSavd {
  const _$_UserSavd();

  @override
  String toString() {
    return 'UserFormEvent.userSaved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UserSavd);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<User> initialUserOption),
    @required TResult userNameChanged(String nameStr),
    @required TResult userDateOfBirthChanged(int userDateOfBirthInt),
    @required TResult userHeightChanged(double heightDouble),
    @required TResult userSaved(),
  }) {
    assert(initialized != null);
    assert(userNameChanged != null);
    assert(userDateOfBirthChanged != null);
    assert(userHeightChanged != null);
    assert(userSaved != null);
    return userSaved();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<User> initialUserOption),
    TResult userNameChanged(String nameStr),
    TResult userDateOfBirthChanged(int userDateOfBirthInt),
    TResult userHeightChanged(double heightDouble),
    TResult userSaved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userSaved != null) {
      return userSaved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult userNameChanged(_UserNameChanged value),
    @required TResult userDateOfBirthChanged(_UserDateOfBirthChanged value),
    @required TResult userHeightChanged(_UserHeightChanged value),
    @required TResult userSaved(_UserSavd value),
  }) {
    assert(initialized != null);
    assert(userNameChanged != null);
    assert(userDateOfBirthChanged != null);
    assert(userHeightChanged != null);
    assert(userSaved != null);
    return userSaved(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult userNameChanged(_UserNameChanged value),
    TResult userDateOfBirthChanged(_UserDateOfBirthChanged value),
    TResult userHeightChanged(_UserHeightChanged value),
    TResult userSaved(_UserSavd value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userSaved != null) {
      return userSaved(this);
    }
    return orElse();
  }
}

abstract class _UserSavd implements UserFormEvent {
  const factory _UserSavd() = _$_UserSavd;
}

/// @nodoc
class _$UserFormStateTearOff {
  const _$UserFormStateTearOff();

// ignore: unused_element
  _UserFormState call(
      {@required User user,
      @required bool showErrorMessages,
      @required bool isEditing,
      @required bool isSaving,
      @required Option<Either<UserFailure, Unit>> saveFailureOrSuccessOption}) {
    return _UserFormState(
      user: user,
      showErrorMessages: showErrorMessages,
      isEditing: isEditing,
      isSaving: isSaving,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UserFormState = _$UserFormStateTearOff();

/// @nodoc
mixin _$UserFormState {
  User get user;
  bool get showErrorMessages;
  bool get isEditing;
  bool get isSaving;
  Option<Either<UserFailure, Unit>> get saveFailureOrSuccessOption;

  @JsonKey(ignore: true)
  $UserFormStateCopyWith<UserFormState> get copyWith;
}

/// @nodoc
abstract class $UserFormStateCopyWith<$Res> {
  factory $UserFormStateCopyWith(
          UserFormState value, $Res Function(UserFormState) then) =
      _$UserFormStateCopyWithImpl<$Res>;
  $Res call(
      {User user,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<UserFailure, Unit>> saveFailureOrSuccessOption});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$UserFormStateCopyWithImpl<$Res>
    implements $UserFormStateCopyWith<$Res> {
  _$UserFormStateCopyWithImpl(this._value, this._then);

  final UserFormState _value;
  // ignore: unused_field
  final $Res Function(UserFormState) _then;

  @override
  $Res call({
    Object user = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed ? _value.user : user as User,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<UserFailure, Unit>>,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$UserFormStateCopyWith<$Res>
    implements $UserFormStateCopyWith<$Res> {
  factory _$UserFormStateCopyWith(
          _UserFormState value, $Res Function(_UserFormState) then) =
      __$UserFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {User user,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<UserFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$UserFormStateCopyWithImpl<$Res>
    extends _$UserFormStateCopyWithImpl<$Res>
    implements _$UserFormStateCopyWith<$Res> {
  __$UserFormStateCopyWithImpl(
      _UserFormState _value, $Res Function(_UserFormState) _then)
      : super(_value, (v) => _then(v as _UserFormState));

  @override
  _UserFormState get _value => super._value as _UserFormState;

  @override
  $Res call({
    Object user = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_UserFormState(
      user: user == freezed ? _value.user : user as User,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<UserFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_UserFormState implements _UserFormState {
  const _$_UserFormState(
      {@required this.user,
      @required this.showErrorMessages,
      @required this.isEditing,
      @required this.isSaving,
      @required this.saveFailureOrSuccessOption})
      : assert(user != null),
        assert(showErrorMessages != null),
        assert(isEditing != null),
        assert(isSaving != null),
        assert(saveFailureOrSuccessOption != null);

  @override
  final User user;
  @override
  final bool showErrorMessages;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final Option<Either<UserFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'UserFormState(user: $user, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserFormState &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)) &&
            (identical(other.isSaving, isSaving) ||
                const DeepCollectionEquality()
                    .equals(other.isSaving, isSaving)) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$UserFormStateCopyWith<_UserFormState> get copyWith =>
      __$UserFormStateCopyWithImpl<_UserFormState>(this, _$identity);
}

abstract class _UserFormState implements UserFormState {
  const factory _UserFormState(
          {@required
              User user,
          @required
              bool showErrorMessages,
          @required
              bool isEditing,
          @required
              bool isSaving,
          @required
              Option<Either<UserFailure, Unit>> saveFailureOrSuccessOption}) =
      _$_UserFormState;

  @override
  User get user;
  @override
  bool get showErrorMessages;
  @override
  bool get isEditing;
  @override
  bool get isSaving;
  @override
  Option<Either<UserFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$UserFormStateCopyWith<_UserFormState> get copyWith;
}
