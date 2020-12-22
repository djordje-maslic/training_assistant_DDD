// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'sets.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SetsTearOff {
  const _$SetsTearOff();

// ignore: unused_element
  _Sets call(
      {@required UniqueId id,
      @required RepetitionsNumb number,
      @required GoodReps goodReps,
      @required BadReps badReps,
      @required Weights weights,
      @required Distance distance,
      @required SetDuration setDuration}) {
    return _Sets(
      id: id,
      number: number,
      goodReps: goodReps,
      badReps: badReps,
      weights: weights,
      distance: distance,
      setDuration: setDuration,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Sets = _$SetsTearOff();

/// @nodoc
mixin _$Sets {
  UniqueId get id;
  RepetitionsNumb get number;
  GoodReps get goodReps;
  BadReps get badReps;
  Weights get weights;
  Distance get distance;
  SetDuration get setDuration;

  $SetsCopyWith<Sets> get copyWith;
}

/// @nodoc
abstract class $SetsCopyWith<$Res> {
  factory $SetsCopyWith(Sets value, $Res Function(Sets) then) =
      _$SetsCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      RepetitionsNumb number,
      GoodReps goodReps,
      BadReps badReps,
      Weights weights,
      Distance distance,
      SetDuration setDuration});
}

/// @nodoc
class _$SetsCopyWithImpl<$Res> implements $SetsCopyWith<$Res> {
  _$SetsCopyWithImpl(this._value, this._then);

  final Sets _value;
  // ignore: unused_field
  final $Res Function(Sets) _then;

  @override
  $Res call({
    Object id = freezed,
    Object number = freezed,
    Object goodReps = freezed,
    Object badReps = freezed,
    Object weights = freezed,
    Object distance = freezed,
    Object setDuration = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      number: number == freezed ? _value.number : number as RepetitionsNumb,
      goodReps: goodReps == freezed ? _value.goodReps : goodReps as GoodReps,
      badReps: badReps == freezed ? _value.badReps : badReps as BadReps,
      weights: weights == freezed ? _value.weights : weights as Weights,
      distance: distance == freezed ? _value.distance : distance as Distance,
      setDuration: setDuration == freezed
          ? _value.setDuration
          : setDuration as SetDuration,
    ));
  }
}

/// @nodoc
abstract class _$SetsCopyWith<$Res> implements $SetsCopyWith<$Res> {
  factory _$SetsCopyWith(_Sets value, $Res Function(_Sets) then) =
      __$SetsCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      RepetitionsNumb number,
      GoodReps goodReps,
      BadReps badReps,
      Weights weights,
      Distance distance,
      SetDuration setDuration});
}

/// @nodoc
class __$SetsCopyWithImpl<$Res> extends _$SetsCopyWithImpl<$Res>
    implements _$SetsCopyWith<$Res> {
  __$SetsCopyWithImpl(_Sets _value, $Res Function(_Sets) _then)
      : super(_value, (v) => _then(v as _Sets));

  @override
  _Sets get _value => super._value as _Sets;

  @override
  $Res call({
    Object id = freezed,
    Object number = freezed,
    Object goodReps = freezed,
    Object badReps = freezed,
    Object weights = freezed,
    Object distance = freezed,
    Object setDuration = freezed,
  }) {
    return _then(_Sets(
      id: id == freezed ? _value.id : id as UniqueId,
      number: number == freezed ? _value.number : number as RepetitionsNumb,
      goodReps: goodReps == freezed ? _value.goodReps : goodReps as GoodReps,
      badReps: badReps == freezed ? _value.badReps : badReps as BadReps,
      weights: weights == freezed ? _value.weights : weights as Weights,
      distance: distance == freezed ? _value.distance : distance as Distance,
      setDuration: setDuration == freezed
          ? _value.setDuration
          : setDuration as SetDuration,
    ));
  }
}

/// @nodoc
class _$_Sets extends _Sets {
  const _$_Sets(
      {@required this.id,
      @required this.number,
      @required this.goodReps,
      @required this.badReps,
      @required this.weights,
      @required this.distance,
      @required this.setDuration})
      : assert(id != null),
        assert(number != null),
        assert(goodReps != null),
        assert(badReps != null),
        assert(weights != null),
        assert(distance != null),
        assert(setDuration != null),
        super._();

  @override
  final UniqueId id;
  @override
  final RepetitionsNumb number;
  @override
  final GoodReps goodReps;
  @override
  final BadReps badReps;
  @override
  final Weights weights;
  @override
  final Distance distance;
  @override
  final SetDuration setDuration;

  @override
  String toString() {
    return 'Sets(id: $id, number: $number, goodReps: $goodReps, badReps: $badReps, weights: $weights, distance: $distance, setDuration: $setDuration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Sets &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)) &&
            (identical(other.goodReps, goodReps) ||
                const DeepCollectionEquality()
                    .equals(other.goodReps, goodReps)) &&
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
      const DeepCollectionEquality().hash(goodReps) ^
      const DeepCollectionEquality().hash(badReps) ^
      const DeepCollectionEquality().hash(weights) ^
      const DeepCollectionEquality().hash(distance) ^
      const DeepCollectionEquality().hash(setDuration);

  @override
  _$SetsCopyWith<_Sets> get copyWith =>
      __$SetsCopyWithImpl<_Sets>(this, _$identity);
}

abstract class _Sets extends Sets {
  const _Sets._() : super._();
  const factory _Sets(
      {@required UniqueId id,
      @required RepetitionsNumb number,
      @required GoodReps goodReps,
      @required BadReps badReps,
      @required Weights weights,
      @required Distance distance,
      @required SetDuration setDuration}) = _$_Sets;

  @override
  UniqueId get id;
  @override
  RepetitionsNumb get number;
  @override
  GoodReps get goodReps;
  @override
  BadReps get badReps;
  @override
  Weights get weights;
  @override
  Distance get distance;
  @override
  SetDuration get setDuration;
  @override
  _$SetsCopyWith<_Sets> get copyWith;
}
