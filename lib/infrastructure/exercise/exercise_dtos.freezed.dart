// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'exercise_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ExerciseDto _$ExerciseDtoFromJson(Map<String, dynamic> json) {
  return _ExerciseDto.fromJson(json);
}

/// @nodoc
class _$ExerciseDtoTearOff {
  const _$ExerciseDtoTearOff();

// ignore: unused_element
  _ExerciseDto call(
      {@JsonKey(ignore: true) String id,
      @required String userId,
      @required String userName,
      @required String name,
      @required int date,
      @required List<SetsDto> setsList,
      @required @ServerTimestampConverter() FieldValue serverTimeStamp}) {
    return _ExerciseDto(
      id: id,
      userId: userId,
      userName: userName,
      name: name,
      date: date,
      setsList: setsList,
      serverTimeStamp: serverTimeStamp,
    );
  }

// ignore: unused_element
  ExerciseDto fromJson(Map<String, Object> json) {
    return ExerciseDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ExerciseDto = _$ExerciseDtoTearOff();

/// @nodoc
mixin _$ExerciseDto {
  @JsonKey(ignore: true)
  String get id;
  String get userId;
  String get userName;
  String get name;
  int get date;
  List<SetsDto> get setsList;
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ExerciseDtoCopyWith<ExerciseDto> get copyWith;
}

/// @nodoc
abstract class $ExerciseDtoCopyWith<$Res> {
  factory $ExerciseDtoCopyWith(
          ExerciseDto value, $Res Function(ExerciseDto) then) =
      _$ExerciseDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String id,
      String userId,
      String userName,
      String name,
      int date,
      List<SetsDto> setsList,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

/// @nodoc
class _$ExerciseDtoCopyWithImpl<$Res> implements $ExerciseDtoCopyWith<$Res> {
  _$ExerciseDtoCopyWithImpl(this._value, this._then);

  final ExerciseDto _value;
  // ignore: unused_field
  final $Res Function(ExerciseDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object userId = freezed,
    Object userName = freezed,
    Object name = freezed,
    Object date = freezed,
    Object setsList = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      userId: userId == freezed ? _value.userId : userId as String,
      userName: userName == freezed ? _value.userName : userName as String,
      name: name == freezed ? _value.name : name as String,
      date: date == freezed ? _value.date : date as int,
      setsList:
          setsList == freezed ? _value.setsList : setsList as List<SetsDto>,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

/// @nodoc
abstract class _$ExerciseDtoCopyWith<$Res>
    implements $ExerciseDtoCopyWith<$Res> {
  factory _$ExerciseDtoCopyWith(
          _ExerciseDto value, $Res Function(_ExerciseDto) then) =
      __$ExerciseDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String id,
      String userId,
      String userName,
      String name,
      int date,
      List<SetsDto> setsList,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

/// @nodoc
class __$ExerciseDtoCopyWithImpl<$Res> extends _$ExerciseDtoCopyWithImpl<$Res>
    implements _$ExerciseDtoCopyWith<$Res> {
  __$ExerciseDtoCopyWithImpl(
      _ExerciseDto _value, $Res Function(_ExerciseDto) _then)
      : super(_value, (v) => _then(v as _ExerciseDto));

  @override
  _ExerciseDto get _value => super._value as _ExerciseDto;

  @override
  $Res call({
    Object id = freezed,
    Object userId = freezed,
    Object userName = freezed,
    Object name = freezed,
    Object date = freezed,
    Object setsList = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_ExerciseDto(
      id: id == freezed ? _value.id : id as String,
      userId: userId == freezed ? _value.userId : userId as String,
      userName: userName == freezed ? _value.userName : userName as String,
      name: name == freezed ? _value.name : name as String,
      date: date == freezed ? _value.date : date as int,
      setsList:
          setsList == freezed ? _value.setsList : setsList as List<SetsDto>,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ExerciseDto extends _ExerciseDto {
  const _$_ExerciseDto(
      {@JsonKey(ignore: true) this.id,
      @required this.userId,
      @required this.userName,
      @required this.name,
      @required this.date,
      @required this.setsList,
      @required @ServerTimestampConverter() this.serverTimeStamp})
      : assert(userId != null),
        assert(userName != null),
        assert(name != null),
        assert(date != null),
        assert(setsList != null),
        assert(serverTimeStamp != null),
        super._();

  factory _$_ExerciseDto.fromJson(Map<String, dynamic> json) =>
      _$_$_ExerciseDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final String userId;
  @override
  final String userName;
  @override
  final String name;
  @override
  final int date;
  @override
  final List<SetsDto> setsList;
  @override
  @ServerTimestampConverter()
  final FieldValue serverTimeStamp;

  @override
  String toString() {
    return 'ExerciseDto(id: $id, userId: $userId, userName: $userName, name: $name, date: $date, setsList: $setsList, serverTimeStamp: $serverTimeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExerciseDto &&
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
                    .equals(other.setsList, setsList)) &&
            (identical(other.serverTimeStamp, serverTimeStamp) ||
                const DeepCollectionEquality()
                    .equals(other.serverTimeStamp, serverTimeStamp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(setsList) ^
      const DeepCollectionEquality().hash(serverTimeStamp);

  @JsonKey(ignore: true)
  @override
  _$ExerciseDtoCopyWith<_ExerciseDto> get copyWith =>
      __$ExerciseDtoCopyWithImpl<_ExerciseDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ExerciseDtoToJson(this);
  }
}

abstract class _ExerciseDto extends ExerciseDto {
  const _ExerciseDto._() : super._();
  const factory _ExerciseDto(
          {@JsonKey(ignore: true) String id,
          @required String userId,
          @required String userName,
          @required String name,
          @required int date,
          @required List<SetsDto> setsList,
          @required @ServerTimestampConverter() FieldValue serverTimeStamp}) =
      _$_ExerciseDto;

  factory _ExerciseDto.fromJson(Map<String, dynamic> json) =
      _$_ExerciseDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  String get userId;
  @override
  String get userName;
  @override
  String get name;
  @override
  int get date;
  @override
  List<SetsDto> get setsList;
  @override
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;
  @override
  @JsonKey(ignore: true)
  _$ExerciseDtoCopyWith<_ExerciseDto> get copyWith;
}

SetsDto _$SetsDtoFromJson(Map<String, dynamic> json) {
  return _SetsDto.fromJson(json);
}

/// @nodoc
class _$SetsDtoTearOff {
  const _$SetsDtoTearOff();

// ignore: unused_element
  _SetsDto call(
      {@required String id,
      @required int number,
      @required int badReps,
      @required double weights,
      @required double distance,
      @required int setDuration}) {
    return _SetsDto(
      id: id,
      number: number,
      badReps: badReps,
      weights: weights,
      distance: distance,
      setDuration: setDuration,
    );
  }

// ignore: unused_element
  SetsDto fromJson(Map<String, Object> json) {
    return SetsDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $SetsDto = _$SetsDtoTearOff();

/// @nodoc
mixin _$SetsDto {
  String get id;
  int get number;
  int get badReps;
  double get weights;
  double get distance;
  int get setDuration;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $SetsDtoCopyWith<SetsDto> get copyWith;
}

/// @nodoc
abstract class $SetsDtoCopyWith<$Res> {
  factory $SetsDtoCopyWith(SetsDto value, $Res Function(SetsDto) then) =
      _$SetsDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      int number,
      int badReps,
      double weights,
      double distance,
      int setDuration});
}

/// @nodoc
class _$SetsDtoCopyWithImpl<$Res> implements $SetsDtoCopyWith<$Res> {
  _$SetsDtoCopyWithImpl(this._value, this._then);

  final SetsDto _value;
  // ignore: unused_field
  final $Res Function(SetsDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object number = freezed,
    Object badReps = freezed,
    Object weights = freezed,
    Object distance = freezed,
    Object setDuration = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      number: number == freezed ? _value.number : number as int,
      badReps: badReps == freezed ? _value.badReps : badReps as int,
      weights: weights == freezed ? _value.weights : weights as double,
      distance: distance == freezed ? _value.distance : distance as double,
      setDuration:
          setDuration == freezed ? _value.setDuration : setDuration as int,
    ));
  }
}

/// @nodoc
abstract class _$SetsDtoCopyWith<$Res> implements $SetsDtoCopyWith<$Res> {
  factory _$SetsDtoCopyWith(_SetsDto value, $Res Function(_SetsDto) then) =
      __$SetsDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      int number,
      int badReps,
      double weights,
      double distance,
      int setDuration});
}

/// @nodoc
class __$SetsDtoCopyWithImpl<$Res> extends _$SetsDtoCopyWithImpl<$Res>
    implements _$SetsDtoCopyWith<$Res> {
  __$SetsDtoCopyWithImpl(_SetsDto _value, $Res Function(_SetsDto) _then)
      : super(_value, (v) => _then(v as _SetsDto));

  @override
  _SetsDto get _value => super._value as _SetsDto;

  @override
  $Res call({
    Object id = freezed,
    Object number = freezed,
    Object badReps = freezed,
    Object weights = freezed,
    Object distance = freezed,
    Object setDuration = freezed,
  }) {
    return _then(_SetsDto(
      id: id == freezed ? _value.id : id as String,
      number: number == freezed ? _value.number : number as int,
      badReps: badReps == freezed ? _value.badReps : badReps as int,
      weights: weights == freezed ? _value.weights : weights as double,
      distance: distance == freezed ? _value.distance : distance as double,
      setDuration:
          setDuration == freezed ? _value.setDuration : setDuration as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_SetsDto extends _SetsDto {
  const _$_SetsDto(
      {@required this.id,
      @required this.number,
      @required this.badReps,
      @required this.weights,
      @required this.distance,
      @required this.setDuration})
      : assert(id != null),
        assert(number != null),
        assert(badReps != null),
        assert(weights != null),
        assert(distance != null),
        assert(setDuration != null),
        super._();

  factory _$_SetsDto.fromJson(Map<String, dynamic> json) =>
      _$_$_SetsDtoFromJson(json);

  @override
  final String id;
  @override
  final int number;
  @override
  final int badReps;
  @override
  final double weights;
  @override
  final double distance;
  @override
  final int setDuration;

  @override
  String toString() {
    return 'SetsDto(id: $id, number: $number, badReps: $badReps, weights: $weights, distance: $distance, setDuration: $setDuration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetsDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)) &&
            (identical(other.badReps, badReps) ||
                const DeepCollectionEquality()
                    .equals(other.badReps, badReps)) &&
            (identical(other.weights, weights) ||
                const DeepCollectionEquality()
                    .equals(other.weights, weights)) &&
            (identical(other.distance, distance) ||
                const DeepCollectionEquality()
                    .equals(other.distance, distance)) &&
            (identical(other.setDuration, setDuration) ||
                const DeepCollectionEquality()
                    .equals(other.setDuration, setDuration)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(number) ^
      const DeepCollectionEquality().hash(badReps) ^
      const DeepCollectionEquality().hash(weights) ^
      const DeepCollectionEquality().hash(distance) ^
      const DeepCollectionEquality().hash(setDuration);

  @JsonKey(ignore: true)
  @override
  _$SetsDtoCopyWith<_SetsDto> get copyWith =>
      __$SetsDtoCopyWithImpl<_SetsDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SetsDtoToJson(this);
  }
}

abstract class _SetsDto extends SetsDto {
  const _SetsDto._() : super._();
  const factory _SetsDto(
      {@required String id,
      @required int number,
      @required int badReps,
      @required double weights,
      @required double distance,
      @required int setDuration}) = _$_SetsDto;

  factory _SetsDto.fromJson(Map<String, dynamic> json) = _$_SetsDto.fromJson;

  @override
  String get id;
  @override
  int get number;
  @override
  int get badReps;
  @override
  double get weights;
  @override
  double get distance;
  @override
  int get setDuration;
  @override
  @JsonKey(ignore: true)
  _$SetsDtoCopyWith<_SetsDto> get copyWith;
}
