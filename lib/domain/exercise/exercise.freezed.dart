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
      @required ExerciseName name,
      @required ExerciseDate date,
      @required SeriesNumb seriesNumb,
      @required RepetitionsList<Series> repetitionsList}) {
    return _Exercise(
      id: id,
      name: name,
      date: date,
      seriesNumb: seriesNumb,
      repetitionsList: repetitionsList,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Exercise = _$ExerciseTearOff();

/// @nodoc
mixin _$Exercise {
  UniqueId get id;
  ExerciseName get name;
  ExerciseDate get date;
  SeriesNumb get seriesNumb;
  RepetitionsList<Series> get repetitionsList;

  $ExerciseCopyWith<Exercise> get copyWith;
}

/// @nodoc
abstract class $ExerciseCopyWith<$Res> {
  factory $ExerciseCopyWith(Exercise value, $Res Function(Exercise) then) =
      _$ExerciseCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      ExerciseName name,
      ExerciseDate date,
      SeriesNumb seriesNumb,
      RepetitionsList<Series> repetitionsList});
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
    Object name = freezed,
    Object date = freezed,
    Object seriesNumb = freezed,
    Object repetitionsList = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as ExerciseName,
      date: date == freezed ? _value.date : date as ExerciseDate,
      seriesNumb:
          seriesNumb == freezed ? _value.seriesNumb : seriesNumb as SeriesNumb,
      repetitionsList: repetitionsList == freezed
          ? _value.repetitionsList
          : repetitionsList as RepetitionsList<Series>,
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
      ExerciseName name,
      ExerciseDate date,
      SeriesNumb seriesNumb,
      RepetitionsList<Series> repetitionsList});
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
    Object name = freezed,
    Object date = freezed,
    Object seriesNumb = freezed,
    Object repetitionsList = freezed,
  }) {
    return _then(_Exercise(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as ExerciseName,
      date: date == freezed ? _value.date : date as ExerciseDate,
      seriesNumb:
          seriesNumb == freezed ? _value.seriesNumb : seriesNumb as SeriesNumb,
      repetitionsList: repetitionsList == freezed
          ? _value.repetitionsList
          : repetitionsList as RepetitionsList<Series>,
    ));
  }
}

/// @nodoc
class _$_Exercise extends _Exercise {
  const _$_Exercise(
      {@required this.id,
      @required this.name,
      @required this.date,
      @required this.seriesNumb,
      @required this.repetitionsList})
      : assert(id != null),
        assert(name != null),
        assert(date != null),
        assert(seriesNumb != null),
        assert(repetitionsList != null),
        super._();

  @override
  final UniqueId id;
  @override
  final ExerciseName name;
  @override
  final ExerciseDate date;
  @override
  final SeriesNumb seriesNumb;
  @override
  final RepetitionsList<Series> repetitionsList;

  @override
  String toString() {
    return 'Exercise(id: $id, name: $name, date: $date, seriesNumb: $seriesNumb, repetitionsList: $repetitionsList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Exercise &&
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
                    .equals(other.repetitionsList, repetitionsList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(seriesNumb) ^
      const DeepCollectionEquality().hash(repetitionsList);

  @override
  _$ExerciseCopyWith<_Exercise> get copyWith =>
      __$ExerciseCopyWithImpl<_Exercise>(this, _$identity);
}

abstract class _Exercise extends Exercise {
  const _Exercise._() : super._();
  const factory _Exercise(
      {@required UniqueId id,
      @required ExerciseName name,
      @required ExerciseDate date,
      @required SeriesNumb seriesNumb,
      @required RepetitionsList<Series> repetitionsList}) = _$_Exercise;

  @override
  UniqueId get id;
  @override
  ExerciseName get name;
  @override
  ExerciseDate get date;
  @override
  SeriesNumb get seriesNumb;
  @override
  RepetitionsList<Series> get repetitionsList;
  @override
  _$ExerciseCopyWith<_Exercise> get copyWith;
}
