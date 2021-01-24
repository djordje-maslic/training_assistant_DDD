// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'exercise.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ExerciseTearOff {
  const _$ExerciseTearOff();

// ignore: unused_element
  _Exercise call(
      {@required UniqueId id,
      @required UniqueId userId,
      @required UserName userName,
      @required ExerciseName name,
      @required ExerciseDate date,
      @required SetsList<Sets> setsList}) {
    return _Exercise(
      id: id,
      userId: userId,
      userName: userName,
      name: name,
      date: date,
      setsList: setsList,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Exercise = _$ExerciseTearOff();

/// @nodoc
mixin _$Exercise {
  UniqueId get id;
  UniqueId get userId;
  UserName get userName;
  ExerciseName get name;
  ExerciseDate get date;
  SetsList<Sets> get setsList;

  @JsonKey(ignore: true)
  $ExerciseCopyWith<Exercise> get copyWith;
}

/// @nodoc
abstract class $ExerciseCopyWith<$Res> {
  factory $ExerciseCopyWith(Exercise value, $Res Function(Exercise) then) =
      _$ExerciseCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      UniqueId userId,
      UserName userName,
      ExerciseName name,
      ExerciseDate date,
      SetsList<Sets> setsList});
}

/// @nodoc
class _$ExerciseCopyWithImpl<$Res> implements $ExerciseCopyWith<$Res> {
  _$ExerciseCopyWithImpl(this._value, this._then);

  final Exercise _value;
  // ignore: unused_field
  final $Res Function(Exercise) _then;

  @override
  $Res call({
    Object id = freezed,
    Object userId = freezed,
    Object userName = freezed,
    Object name = freezed,
    Object date = freezed,
    Object setsList = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      userId: userId == freezed ? _value.userId : userId as UniqueId,
      userName: userName == freezed ? _value.userName : userName as UserName,
      name: name == freezed ? _value.name : name as ExerciseName,
      date: date == freezed ? _value.date : date as ExerciseDate,
      setsList:
          setsList == freezed ? _value.setsList : setsList as SetsList<Sets>,
    ));
  }
}

/// @nodoc
abstract class _$ExerciseCopyWith<$Res> implements $ExerciseCopyWith<$Res> {
  factory _$ExerciseCopyWith(_Exercise value, $Res Function(_Exercise) then) =
      __$ExerciseCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      UniqueId userId,
      UserName userName,
      ExerciseName name,
      ExerciseDate date,
      SetsList<Sets> setsList});
}

/// @nodoc
class __$ExerciseCopyWithImpl<$Res> extends _$ExerciseCopyWithImpl<$Res>
    implements _$ExerciseCopyWith<$Res> {
  __$ExerciseCopyWithImpl(_Exercise _value, $Res Function(_Exercise) _then)
      : super(_value, (v) => _then(v as _Exercise));

  @override
  _Exercise get _value => super._value as _Exercise;

  @override
  $Res call({
    Object id = freezed,
    Object userId = freezed,
    Object userName = freezed,
    Object name = freezed,
    Object date = freezed,
    Object setsList = freezed,
  }) {
    return _then(_Exercise(
      id: id == freezed ? _value.id : id as UniqueId,
      userId: userId == freezed ? _value.userId : userId as UniqueId,
      userName: userName == freezed ? _value.userName : userName as UserName,
      name: name == freezed ? _value.name : name as ExerciseName,
      date: date == freezed ? _value.date : date as ExerciseDate,
      setsList:
          setsList == freezed ? _value.setsList : setsList as SetsList<Sets>,
    ));
  }
}

/// @nodoc
class _$_Exercise extends _Exercise {
  const _$_Exercise(
      {@required this.id,
      @required this.userId,
      @required this.userName,
      @required this.name,
      @required this.date,
      @required this.setsList})
      : assert(id != null),
        assert(userId != null),
        assert(userName != null),
        assert(name != null),
        assert(date != null),
        assert(setsList != null),
        super._();

  @override
  final UniqueId id;
  @override
  final UniqueId userId;
  @override
  final UserName userName;
  @override
  final ExerciseName name;
  @override
  final ExerciseDate date;
  @override
  final SetsList<Sets> setsList;

  @override
  String toString() {
    return 'Exercise(id: $id, userId: $userId, userName: $userName, name: $name, date: $date, setsList: $setsList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Exercise &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.setsList, setsList) ||
                const DeepCollectionEquality()
                    .equals(other.setsList, setsList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(setsList);

  @JsonKey(ignore: true)
  @override
  _$ExerciseCopyWith<_Exercise> get copyWith =>
      __$ExerciseCopyWithImpl<_Exercise>(this, _$identity);
}

abstract class _Exercise extends Exercise {
  const _Exercise._() : super._();
  const factory _Exercise(
      {@required UniqueId id,
      @required UniqueId userId,
      @required UserName userName,
      @required ExerciseName name,
      @required ExerciseDate date,
      @required SetsList<Sets> setsList}) = _$_Exercise;

  @override
  UniqueId get id;
  @override
  UniqueId get userId;
  @override
  UserName get userName;
  @override
  ExerciseName get name;
  @override
  ExerciseDate get date;
  @override
  SetsList<Sets> get setsList;
  @override
  @JsonKey(ignore: true)
  _$ExerciseCopyWith<_Exercise> get copyWith;
}
