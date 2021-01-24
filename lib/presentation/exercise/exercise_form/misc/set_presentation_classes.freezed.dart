// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'set_presentation_classes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SetItemPrimitiveTearOff {
  const _$SetItemPrimitiveTearOff();

// ignore: unused_element
  _SetItemprimitive call(
      {@required UniqueId id,
      @required int number,
      @required int goodReps,
      @required int badReps,
      @required double weights,
      @required double distance,
      @required int setDuration}) {
    return _SetItemprimitive(
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
const $SetItemPrimitive = _$SetItemPrimitiveTearOff();

/// @nodoc
mixin _$SetItemPrimitive {
  UniqueId get id;
  int get number;
  int get goodReps;
  int get badReps;
  double get weights;
  double get distance;
  int get setDuration;

  @JsonKey(ignore: true)
  $SetItemPrimitiveCopyWith<SetItemPrimitive> get copyWith;
}

/// @nodoc
abstract class $SetItemPrimitiveCopyWith<$Res> {
  factory $SetItemPrimitiveCopyWith(
          SetItemPrimitive value, $Res Function(SetItemPrimitive) then) =
      _$SetItemPrimitiveCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      int number,
      int goodReps,
      int badReps,
      double weights,
      double distance,
      int setDuration});
}

/// @nodoc
class _$SetItemPrimitiveCopyWithImpl<$Res>
    implements $SetItemPrimitiveCopyWith<$Res> {
  _$SetItemPrimitiveCopyWithImpl(this._value, this._then);

  final SetItemPrimitive _value;
  // ignore: unused_field
  final $Res Function(SetItemPrimitive) _then;

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
      number: number == freezed ? _value.number : number as int,
      goodReps: goodReps == freezed ? _value.goodReps : goodReps as int,
      badReps: badReps == freezed ? _value.badReps : badReps as int,
      weights: weights == freezed ? _value.weights : weights as double,
      distance: distance == freezed ? _value.distance : distance as double,
      setDuration:
          setDuration == freezed ? _value.setDuration : setDuration as int,
    ));
  }
}

/// @nodoc
abstract class _$SetItemprimitiveCopyWith<$Res>
    implements $SetItemPrimitiveCopyWith<$Res> {
  factory _$SetItemprimitiveCopyWith(
          _SetItemprimitive value, $Res Function(_SetItemprimitive) then) =
      __$SetItemprimitiveCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      int number,
      int goodReps,
      int badReps,
      double weights,
      double distance,
      int setDuration});
}

/// @nodoc
class __$SetItemprimitiveCopyWithImpl<$Res>
    extends _$SetItemPrimitiveCopyWithImpl<$Res>
    implements _$SetItemprimitiveCopyWith<$Res> {
  __$SetItemprimitiveCopyWithImpl(
      _SetItemprimitive _value, $Res Function(_SetItemprimitive) _then)
      : super(_value, (v) => _then(v as _SetItemprimitive));

  @override
  _SetItemprimitive get _value => super._value as _SetItemprimitive;

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
    return _then(_SetItemprimitive(
      id: id == freezed ? _value.id : id as UniqueId,
      number: number == freezed ? _value.number : number as int,
      goodReps: goodReps == freezed ? _value.goodReps : goodReps as int,
      badReps: badReps == freezed ? _value.badReps : badReps as int,
      weights: weights == freezed ? _value.weights : weights as double,
      distance: distance == freezed ? _value.distance : distance as double,
      setDuration:
          setDuration == freezed ? _value.setDuration : setDuration as int,
    ));
  }
}

/// @nodoc
class _$_SetItemprimitive extends _SetItemprimitive
    with DiagnosticableTreeMixin {
  const _$_SetItemprimitive(
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
  final int number;
  @override
  final int goodReps;
  @override
  final int badReps;
  @override
  final double weights;
  @override
  final double distance;
  @override
  final int setDuration;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SetItemPrimitive(id: $id, number: $number, goodReps: $goodReps, badReps: $badReps, weights: $weights, distance: $distance, setDuration: $setDuration)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SetItemPrimitive'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('number', number))
      ..add(DiagnosticsProperty('goodReps', goodReps))
      ..add(DiagnosticsProperty('badReps', badReps))
      ..add(DiagnosticsProperty('weights', weights))
      ..add(DiagnosticsProperty('distance', distance))
      ..add(DiagnosticsProperty('setDuration', setDuration));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetItemprimitive &&
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

  @JsonKey(ignore: true)
  @override
  _$SetItemprimitiveCopyWith<_SetItemprimitive> get copyWith =>
      __$SetItemprimitiveCopyWithImpl<_SetItemprimitive>(this, _$identity);
}

abstract class _SetItemprimitive extends SetItemPrimitive {
  const _SetItemprimitive._() : super._();
  const factory _SetItemprimitive(
      {@required UniqueId id,
      @required int number,
      @required int goodReps,
      @required int badReps,
      @required double weights,
      @required double distance,
      @required int setDuration}) = _$_SetItemprimitive;

  @override
  UniqueId get id;
  @override
  int get number;
  @override
  int get goodReps;
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
  _$SetItemprimitiveCopyWith<_SetItemprimitive> get copyWith;
}
