// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

// ignore: unused_element
  _User call(
      {@required UniqueId id,
      @required EmailAddress emailAddress,
      UserName userName,
      UserWeight userWeight,
      UserHeight userHeight}) {
    return _User(
      id: id,
      emailAddress: emailAddress,
      userName: userName,
      userWeight: userWeight,
      userHeight: userHeight,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  UniqueId get id;
  EmailAddress get emailAddress;
  UserName get userName;
  UserWeight get userWeight;
  UserHeight get userHeight;

  $UserCopyWith<User> get copyWith;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      EmailAddress emailAddress,
      UserName userName,
      UserWeight userWeight,
      UserHeight userHeight});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object id = freezed,
    Object emailAddress = freezed,
    Object userName = freezed,
    Object userWeight = freezed,
    Object userHeight = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      userName: userName == freezed ? _value.userName : userName as UserName,
      userWeight:
          userWeight == freezed ? _value.userWeight : userWeight as UserWeight,
      userHeight:
          userHeight == freezed ? _value.userHeight : userHeight as UserHeight,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      EmailAddress emailAddress,
      UserName userName,
      UserWeight userWeight,
      UserHeight userHeight});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object id = freezed,
    Object emailAddress = freezed,
    Object userName = freezed,
    Object userWeight = freezed,
    Object userHeight = freezed,
  }) {
    return _then(_User(
      id: id == freezed ? _value.id : id as UniqueId,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      userName: userName == freezed ? _value.userName : userName as UserName,
      userWeight:
          userWeight == freezed ? _value.userWeight : userWeight as UserWeight,
      userHeight:
          userHeight == freezed ? _value.userHeight : userHeight as UserHeight,
    ));
  }
}

/// @nodoc
class _$_User extends _User {
  const _$_User(
      {@required this.id,
      @required this.emailAddress,
      this.userName,
      this.userWeight,
      this.userHeight})
      : assert(id != null),
        assert(emailAddress != null),
        super._();

  @override
  final UniqueId id;
  @override
  final EmailAddress emailAddress;
  @override
  final UserName userName;
  @override
  final UserWeight userWeight;
  @override
  final UserHeight userHeight;

  @override
  String toString() {
    return 'User(id: $id, emailAddress: $emailAddress, userName: $userName, userWeight: $userWeight, userHeight: $userHeight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.userWeight, userWeight) ||
                const DeepCollectionEquality()
                    .equals(other.userWeight, userWeight)) &&
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
      const DeepCollectionEquality().hash(userWeight) ^
      const DeepCollectionEquality().hash(userHeight);

  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);
}

abstract class _User extends User {
  const _User._() : super._();
  const factory _User(
      {@required UniqueId id,
      @required EmailAddress emailAddress,
      UserName userName,
      UserWeight userWeight,
      UserHeight userHeight}) = _$_User;

  @override
  UniqueId get id;
  @override
  EmailAddress get emailAddress;
  @override
  UserName get userName;
  @override
  UserWeight get userWeight;
  @override
  UserHeight get userHeight;
  @override
  _$UserCopyWith<_User> get copyWith;
}
