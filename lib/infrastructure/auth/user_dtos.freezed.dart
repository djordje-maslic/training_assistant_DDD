// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
UserDto _$UserDtoFromJson(Map<String, dynamic> json) {
  return _UserDto.fromJson(json);
}

/// @nodoc
class _$UserDtoTearOff {
  const _$UserDtoTearOff();

// ignore: unused_element
  _UserDto call(
      {@JsonKey(ignore: true) String id,
      @required String emailAddress,
      @required String userName,
      @required int userDateOfBirth,
      @required bool userGender,
      @required String exerciseDistanceUnit,
      @required String exerciseWeightUnit,
      @required String userHeightUnit,
      @required String userWeightUnit,
      @required String nutritionWeightUnit,
      @required String nutritionVolumeUnit}) {
    return _UserDto(
      id: id,
      emailAddress: emailAddress,
      userName: userName,
      userDateOfBirth: userDateOfBirth,
      userGender: userGender,
      exerciseDistanceUnit: exerciseDistanceUnit,
      exerciseWeightUnit: exerciseWeightUnit,
      userHeightUnit: userHeightUnit,
      userWeightUnit: userWeightUnit,
      nutritionWeightUnit: nutritionWeightUnit,
      nutritionVolumeUnit: nutritionVolumeUnit,
    );
  }

// ignore: unused_element
  UserDto fromJson(Map<String, Object> json) {
    return UserDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $UserDto = _$UserDtoTearOff();

/// @nodoc
mixin _$UserDto {
  @JsonKey(ignore: true)
  String get id;
  String get emailAddress;
  String get userName;
  int get userDateOfBirth;
  bool get userGender;
  String get exerciseDistanceUnit;
  String get exerciseWeightUnit;
  String get userHeightUnit;
  String get userWeightUnit;
  String get nutritionWeightUnit;
  String get nutritionVolumeUnit;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $UserDtoCopyWith<UserDto> get copyWith;
}

/// @nodoc
abstract class $UserDtoCopyWith<$Res> {
  factory $UserDtoCopyWith(UserDto value, $Res Function(UserDto) then) =
      _$UserDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String id,
      String emailAddress,
      String userName,
      int userDateOfBirth,
      bool userGender,
      String exerciseDistanceUnit,
      String exerciseWeightUnit,
      String userHeightUnit,
      String userWeightUnit,
      String nutritionWeightUnit,
      String nutritionVolumeUnit});
}

/// @nodoc
class _$UserDtoCopyWithImpl<$Res> implements $UserDtoCopyWith<$Res> {
  _$UserDtoCopyWithImpl(this._value, this._then);

  final UserDto _value;
  // ignore: unused_field
  final $Res Function(UserDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object emailAddress = freezed,
    Object userName = freezed,
    Object userDateOfBirth = freezed,
    Object userGender = freezed,
    Object exerciseDistanceUnit = freezed,
    Object exerciseWeightUnit = freezed,
    Object userHeightUnit = freezed,
    Object userWeightUnit = freezed,
    Object nutritionWeightUnit = freezed,
    Object nutritionVolumeUnit = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as String,
      userName: userName == freezed ? _value.userName : userName as String,
      userDateOfBirth: userDateOfBirth == freezed
          ? _value.userDateOfBirth
          : userDateOfBirth as int,
      userGender:
          userGender == freezed ? _value.userGender : userGender as bool,
      exerciseDistanceUnit: exerciseDistanceUnit == freezed
          ? _value.exerciseDistanceUnit
          : exerciseDistanceUnit as String,
      exerciseWeightUnit: exerciseWeightUnit == freezed
          ? _value.exerciseWeightUnit
          : exerciseWeightUnit as String,
      userHeightUnit: userHeightUnit == freezed
          ? _value.userHeightUnit
          : userHeightUnit as String,
      userWeightUnit: userWeightUnit == freezed
          ? _value.userWeightUnit
          : userWeightUnit as String,
      nutritionWeightUnit: nutritionWeightUnit == freezed
          ? _value.nutritionWeightUnit
          : nutritionWeightUnit as String,
      nutritionVolumeUnit: nutritionVolumeUnit == freezed
          ? _value.nutritionVolumeUnit
          : nutritionVolumeUnit as String,
    ));
  }
}

/// @nodoc
abstract class _$UserDtoCopyWith<$Res> implements $UserDtoCopyWith<$Res> {
  factory _$UserDtoCopyWith(_UserDto value, $Res Function(_UserDto) then) =
      __$UserDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String id,
      String emailAddress,
      String userName,
      int userDateOfBirth,
      bool userGender,
      String exerciseDistanceUnit,
      String exerciseWeightUnit,
      String userHeightUnit,
      String userWeightUnit,
      String nutritionWeightUnit,
      String nutritionVolumeUnit});
}

/// @nodoc
class __$UserDtoCopyWithImpl<$Res> extends _$UserDtoCopyWithImpl<$Res>
    implements _$UserDtoCopyWith<$Res> {
  __$UserDtoCopyWithImpl(_UserDto _value, $Res Function(_UserDto) _then)
      : super(_value, (v) => _then(v as _UserDto));

  @override
  _UserDto get _value => super._value as _UserDto;

  @override
  $Res call({
    Object id = freezed,
    Object emailAddress = freezed,
    Object userName = freezed,
    Object userDateOfBirth = freezed,
    Object userGender = freezed,
    Object exerciseDistanceUnit = freezed,
    Object exerciseWeightUnit = freezed,
    Object userHeightUnit = freezed,
    Object userWeightUnit = freezed,
    Object nutritionWeightUnit = freezed,
    Object nutritionVolumeUnit = freezed,
  }) {
    return _then(_UserDto(
      id: id == freezed ? _value.id : id as String,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as String,
      userName: userName == freezed ? _value.userName : userName as String,
      userDateOfBirth: userDateOfBirth == freezed
          ? _value.userDateOfBirth
          : userDateOfBirth as int,
      userGender:
          userGender == freezed ? _value.userGender : userGender as bool,
      exerciseDistanceUnit: exerciseDistanceUnit == freezed
          ? _value.exerciseDistanceUnit
          : exerciseDistanceUnit as String,
      exerciseWeightUnit: exerciseWeightUnit == freezed
          ? _value.exerciseWeightUnit
          : exerciseWeightUnit as String,
      userHeightUnit: userHeightUnit == freezed
          ? _value.userHeightUnit
          : userHeightUnit as String,
      userWeightUnit: userWeightUnit == freezed
          ? _value.userWeightUnit
          : userWeightUnit as String,
      nutritionWeightUnit: nutritionWeightUnit == freezed
          ? _value.nutritionWeightUnit
          : nutritionWeightUnit as String,
      nutritionVolumeUnit: nutritionVolumeUnit == freezed
          ? _value.nutritionVolumeUnit
          : nutritionVolumeUnit as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_UserDto extends _UserDto {
  const _$_UserDto(
      {@JsonKey(ignore: true) this.id,
      @required this.emailAddress,
      @required this.userName,
      @required this.userDateOfBirth,
      @required this.userGender,
      @required this.exerciseDistanceUnit,
      @required this.exerciseWeightUnit,
      @required this.userHeightUnit,
      @required this.userWeightUnit,
      @required this.nutritionWeightUnit,
      @required this.nutritionVolumeUnit})
      : assert(emailAddress != null),
        assert(userName != null),
        assert(userDateOfBirth != null),
        assert(userGender != null),
        assert(exerciseDistanceUnit != null),
        assert(exerciseWeightUnit != null),
        assert(userHeightUnit != null),
        assert(userWeightUnit != null),
        assert(nutritionWeightUnit != null),
        assert(nutritionVolumeUnit != null),
        super._();

  factory _$_UserDto.fromJson(Map<String, dynamic> json) =>
      _$_$_UserDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final String emailAddress;
  @override
  final String userName;
  @override
  final int userDateOfBirth;
  @override
  final bool userGender;
  @override
  final String exerciseDistanceUnit;
  @override
  final String exerciseWeightUnit;
  @override
  final String userHeightUnit;
  @override
  final String userWeightUnit;
  @override
  final String nutritionWeightUnit;
  @override
  final String nutritionVolumeUnit;

  @override
  String toString() {
    return 'UserDto(id: $id, emailAddress: $emailAddress, userName: $userName, userDateOfBirth: $userDateOfBirth, userGender: $userGender, exerciseDistanceUnit: $exerciseDistanceUnit, exerciseWeightUnit: $exerciseWeightUnit, userHeightUnit: $userHeightUnit, userWeightUnit: $userWeightUnit, nutritionWeightUnit: $nutritionWeightUnit, nutritionVolumeUnit: $nutritionVolumeUnit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.userDateOfBirth, userDateOfBirth) ||
                const DeepCollectionEquality()
                    .equals(other.userDateOfBirth, userDateOfBirth)) &&
            (identical(other.userGender, userGender) ||
                const DeepCollectionEquality()
                    .equals(other.userGender, userGender)) &&
            (identical(other.exerciseDistanceUnit, exerciseDistanceUnit) ||
                const DeepCollectionEquality().equals(
                    other.exerciseDistanceUnit, exerciseDistanceUnit)) &&
            (identical(other.exerciseWeightUnit, exerciseWeightUnit) ||
                const DeepCollectionEquality()
                    .equals(other.exerciseWeightUnit, exerciseWeightUnit)) &&
            (identical(other.userHeightUnit, userHeightUnit) ||
                const DeepCollectionEquality()
                    .equals(other.userHeightUnit, userHeightUnit)) &&
            (identical(other.userWeightUnit, userWeightUnit) ||
                const DeepCollectionEquality()
                    .equals(other.userWeightUnit, userWeightUnit)) &&
            (identical(other.nutritionWeightUnit, nutritionWeightUnit) ||
                const DeepCollectionEquality()
                    .equals(other.nutritionWeightUnit, nutritionWeightUnit)) &&
            (identical(other.nutritionVolumeUnit, nutritionVolumeUnit) ||
                const DeepCollectionEquality()
                    .equals(other.nutritionVolumeUnit, nutritionVolumeUnit)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(userDateOfBirth) ^
      const DeepCollectionEquality().hash(userGender) ^
      const DeepCollectionEquality().hash(exerciseDistanceUnit) ^
      const DeepCollectionEquality().hash(exerciseWeightUnit) ^
      const DeepCollectionEquality().hash(userHeightUnit) ^
      const DeepCollectionEquality().hash(userWeightUnit) ^
      const DeepCollectionEquality().hash(nutritionWeightUnit) ^
      const DeepCollectionEquality().hash(nutritionVolumeUnit);

  @JsonKey(ignore: true)
  @override
  _$UserDtoCopyWith<_UserDto> get copyWith =>
      __$UserDtoCopyWithImpl<_UserDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserDtoToJson(this);
  }
}

abstract class _UserDto extends UserDto {
  const _UserDto._() : super._();
  const factory _UserDto(
      {@JsonKey(ignore: true) String id,
      @required String emailAddress,
      @required String userName,
      @required int userDateOfBirth,
      @required bool userGender,
      @required String exerciseDistanceUnit,
      @required String exerciseWeightUnit,
      @required String userHeightUnit,
      @required String userWeightUnit,
      @required String nutritionWeightUnit,
      @required String nutritionVolumeUnit}) = _$_UserDto;

  factory _UserDto.fromJson(Map<String, dynamic> json) = _$_UserDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  String get emailAddress;
  @override
  String get userName;
  @override
  int get userDateOfBirth;
  @override
  bool get userGender;
  @override
  String get exerciseDistanceUnit;
  @override
  String get exerciseWeightUnit;
  @override
  String get userHeightUnit;
  @override
  String get userWeightUnit;
  @override
  String get nutritionWeightUnit;
  @override
  String get nutritionVolumeUnit;
  @override
  @JsonKey(ignore: true)
  _$UserDtoCopyWith<_UserDto> get copyWith;
}
