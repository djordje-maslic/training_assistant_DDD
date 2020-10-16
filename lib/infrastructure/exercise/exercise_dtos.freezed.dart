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
      @required String name,
      @required int date,
      @required int seriesNumb,
      @required List<SeriesDto> repetitionsList,
      @required @ServerTimestampConverter() FieldValue serverTimeStamp}) {
    return _ExerciseDto(
      id: id,
      name: name,
      date: date,
      seriesNumb: seriesNumb,
      repetitionsList: repetitionsList,
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
  String get name;
  int get date;
  int get seriesNumb;
  List<SeriesDto> get repetitionsList;
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;

  Map<String, dynamic> toJson();
  $ExerciseDtoCopyWith<ExerciseDto> get copyWith;
}

/// @nodoc
abstract class $ExerciseDtoCopyWith<$Res> {
  factory $ExerciseDtoCopyWith(
          ExerciseDto value, $Res Function(ExerciseDto) then) =
      _$ExerciseDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String id,
      String name,
      int date,
      int seriesNumb,
      List<SeriesDto> repetitionsList,
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
    Object name = freezed,
    Object date = freezed,
    Object seriesNumb = freezed,
    Object repetitionsList = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      date: date == freezed ? _value.date : date as int,
      seriesNumb: seriesNumb == freezed ? _value.seriesNumb : seriesNumb as int,
      repetitionsList: repetitionsList == freezed
          ? _value.repetitionsList
          : repetitionsList as List<SeriesDto>,
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
      String name,
      int date,
      int seriesNumb,
      List<SeriesDto> repetitionsList,
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
    Object name = freezed,
    Object date = freezed,
    Object seriesNumb = freezed,
    Object repetitionsList = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_ExerciseDto(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      date: date == freezed ? _value.date : date as int,
      seriesNumb: seriesNumb == freezed ? _value.seriesNumb : seriesNumb as int,
      repetitionsList: repetitionsList == freezed
          ? _value.repetitionsList
          : repetitionsList as List<SeriesDto>,
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
      @required this.name,
      @required this.date,
      @required this.seriesNumb,
      @required this.repetitionsList,
      @required @ServerTimestampConverter() this.serverTimeStamp})
      : assert(name != null),
        assert(date != null),
        assert(seriesNumb != null),
        assert(repetitionsList != null),
        assert(serverTimeStamp != null),
        super._();

  factory _$_ExerciseDto.fromJson(Map<String, dynamic> json) =>
      _$_$_ExerciseDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final String name;
  @override
  final int date;
  @override
  final int seriesNumb;
  @override
  final List<SeriesDto> repetitionsList;
  @override
  @ServerTimestampConverter()
  final FieldValue serverTimeStamp;

  @override
  String toString() {
    return 'ExerciseDto(id: $id, name: $name, date: $date, seriesNumb: $seriesNumb, repetitionsList: $repetitionsList, serverTimeStamp: $serverTimeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExerciseDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.seriesNumb, seriesNumb) ||
                const DeepCollectionEquality()
                    .equals(other.seriesNumb, seriesNumb)) &&
            (identical(other.repetitionsList, repetitionsList) ||
                const DeepCollectionEquality()
                    .equals(other.repetitionsList, repetitionsList)) &&
            (identical(other.serverTimeStamp, serverTimeStamp) ||
                const DeepCollectionEquality()
                    .equals(other.serverTimeStamp, serverTimeStamp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(seriesNumb) ^
      const DeepCollectionEquality().hash(repetitionsList) ^
      const DeepCollectionEquality().hash(serverTimeStamp);

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
          @required String name,
          @required int date,
          @required int seriesNumb,
          @required List<SeriesDto> repetitionsList,
          @required @ServerTimestampConverter() FieldValue serverTimeStamp}) =
      _$_ExerciseDto;

  factory _ExerciseDto.fromJson(Map<String, dynamic> json) =
      _$_ExerciseDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  String get name;
  @override
  int get date;
  @override
  int get seriesNumb;
  @override
  List<SeriesDto> get repetitionsList;
  @override
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;
  @override
  _$ExerciseDtoCopyWith<_ExerciseDto> get copyWith;
}

SeriesDto _$SeriesDtoFromJson(Map<String, dynamic> json) {
  return _SeriesDto.fromJson(json);
}

/// @nodoc
class _$SeriesDtoTearOff {
  const _$SeriesDtoTearOff();

// ignore: unused_element
  _SeriesDto call({@required String id, @required int number}) {
    return _SeriesDto(
      id: id,
      number: number,
    );
  }

// ignore: unused_element
  SeriesDto fromJson(Map<String, Object> json) {
    return SeriesDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $SeriesDto = _$SeriesDtoTearOff();

/// @nodoc
mixin _$SeriesDto {
  String get id;
  int get number;

  Map<String, dynamic> toJson();
  $SeriesDtoCopyWith<SeriesDto> get copyWith;
}

/// @nodoc
abstract class $SeriesDtoCopyWith<$Res> {
  factory $SeriesDtoCopyWith(SeriesDto value, $Res Function(SeriesDto) then) =
      _$SeriesDtoCopyWithImpl<$Res>;
  $Res call({String id, int number});
}

/// @nodoc
class _$SeriesDtoCopyWithImpl<$Res> implements $SeriesDtoCopyWith<$Res> {
  _$SeriesDtoCopyWithImpl(this._value, this._then);

  final SeriesDto _value;
  // ignore: unused_field
  final $Res Function(SeriesDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object number = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      number: number == freezed ? _value.number : number as int,
    ));
  }
}

/// @nodoc
abstract class _$SeriesDtoCopyWith<$Res> implements $SeriesDtoCopyWith<$Res> {
  factory _$SeriesDtoCopyWith(
          _SeriesDto value, $Res Function(_SeriesDto) then) =
      __$SeriesDtoCopyWithImpl<$Res>;
  @override
  $Res call({String id, int number});
}

/// @nodoc
class __$SeriesDtoCopyWithImpl<$Res> extends _$SeriesDtoCopyWithImpl<$Res>
    implements _$SeriesDtoCopyWith<$Res> {
  __$SeriesDtoCopyWithImpl(_SeriesDto _value, $Res Function(_SeriesDto) _then)
      : super(_value, (v) => _then(v as _SeriesDto));

  @override
  _SeriesDto get _value => super._value as _SeriesDto;

  @override
  $Res call({
    Object id = freezed,
    Object number = freezed,
  }) {
    return _then(_SeriesDto(
      id: id == freezed ? _value.id : id as String,
      number: number == freezed ? _value.number : number as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_SeriesDto extends _SeriesDto {
  const _$_SeriesDto({@required this.id, @required this.number})
      : assert(id != null),
        assert(number != null),
        super._();

  factory _$_SeriesDto.fromJson(Map<String, dynamic> json) =>
      _$_$_SeriesDtoFromJson(json);

  @override
  final String id;
  @override
  final int number;

  @override
  String toString() {
    return 'SeriesDto(id: $id, number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SeriesDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(number);

  @override
  _$SeriesDtoCopyWith<_SeriesDto> get copyWith =>
      __$SeriesDtoCopyWithImpl<_SeriesDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SeriesDtoToJson(this);
  }
}

abstract class _SeriesDto extends SeriesDto {
  const _SeriesDto._() : super._();
  const factory _SeriesDto({@required String id, @required int number}) =
      _$_SeriesDto;

  factory _SeriesDto.fromJson(Map<String, dynamic> json) =
      _$_SeriesDto.fromJson;

  @override
  String get id;
  @override
  int get number;
  @override
  _$SeriesDtoCopyWith<_SeriesDto> get copyWith;
}
