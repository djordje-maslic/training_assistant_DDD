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
      @required double userHeight}) {
    return _UserDto(
      id: id,
      emailAddress: emailAddress,
      userName: userName,
      userDateOfBirth: userDateOfBirth,
      userHeight: userHeight,
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
  double get userHeight;

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
      double userHeight});
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
    Object userHeight = freezed,
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
      userHeight:
          userHeight == freezed ? _value.userHeight : userHeight as double,
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
      double userHeight});
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
    Object userHeight = freezed,
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
      userHeight:
          userHeight == freezed ? _value.userHeight : userHeight as double,
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
      @required this.userHeight})
      : assert(emailAddress != null),
        assert(userName != null),
        assert(userDateOfBirth != null),
        assert(userHeight != null),
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
  final double userHeight;

  @override
  String toString() {
    return 'UserDto(id: $id, emailAddress: $emailAddress, userName: $userName, userDateOfBirth: $userDateOfBirth, userHeight: $userHeight)';
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
            (identical(other.userHeight, userHeight) ||
                const DeepCollectionEquality()
                    .equals(other.userHeight, userHeight)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(userDateOfBirth) ^
      const DeepCollectionEquality().hash(userHeight);

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
      @required double userHeight}) = _$_UserDto;

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
  double get userHeight;
  @override
  @JsonKey(ignore: true)
  _$UserDtoCopyWith<_UserDto> get copyWith;
}
