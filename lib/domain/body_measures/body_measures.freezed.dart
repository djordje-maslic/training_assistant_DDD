// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'body_measures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$BodyMeasuresTearOff {
  const _$BodyMeasuresTearOff();

// ignore: unused_element
  _BodyMeasures call(
      {@required UniqueId id,
      @required UniqueId userId,
      @required MeasuresDate bodyMeasuresDate,
      @required UserWeight bodyMeasuresWeight,
      @required UserHeight bodyMeasuresHeight}) {
    return _BodyMeasures(
      id: id,
      userId: userId,
      bodyMeasuresDate: bodyMeasuresDate,
      bodyMeasuresWeight: bodyMeasuresWeight,
      bodyMeasuresHeight: bodyMeasuresHeight,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $BodyMeasures = _$BodyMeasuresTearOff();

/// @nodoc
mixin _$BodyMeasures {
  UniqueId get id;
  UniqueId get userId;
  MeasuresDate get bodyMeasuresDate;
  UserWeight get bodyMeasuresWeight;
  UserHeight get bodyMeasuresHeight;

  $BodyMeasuresCopyWith<BodyMeasures> get copyWith;
}

/// @nodoc
abstract class $BodyMeasuresCopyWith<$Res> {
  factory $BodyMeasuresCopyWith(
          BodyMeasures value, $Res Function(BodyMeasures) then) =
      _$BodyMeasuresCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      UniqueId userId,
      MeasuresDate bodyMeasuresDate,
      UserWeight bodyMeasuresWeight,
      UserHeight bodyMeasuresHeight});
}

/// @nodoc
class _$BodyMeasuresCopyWithImpl<$Res> implements $BodyMeasuresCopyWith<$Res> {
  _$BodyMeasuresCopyWithImpl(this._value, this._then);

  final BodyMeasures _value;
  // ignore: unused_field
  final $Res Function(BodyMeasures) _then;

  @override
  $Res call({
    Object id = freezed,
    Object userId = freezed,
    Object bodyMeasuresDate = freezed,
    Object bodyMeasuresWeight = freezed,
    Object bodyMeasuresHeight = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      userId: userId == freezed ? _value.userId : userId as UniqueId,
      bodyMeasuresDate: bodyMeasuresDate == freezed
          ? _value.bodyMeasuresDate
          : bodyMeasuresDate as MeasuresDate,
      bodyMeasuresWeight: bodyMeasuresWeight == freezed
          ? _value.bodyMeasuresWeight
          : bodyMeasuresWeight as UserWeight,
      bodyMeasuresHeight: bodyMeasuresHeight == freezed
          ? _value.bodyMeasuresHeight
          : bodyMeasuresHeight as UserHeight,
    ));
  }
}

/// @nodoc
abstract class _$BodyMeasuresCopyWith<$Res>
    implements $BodyMeasuresCopyWith<$Res> {
  factory _$BodyMeasuresCopyWith(
          _BodyMeasures value, $Res Function(_BodyMeasures) then) =
      __$BodyMeasuresCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      UniqueId userId,
      MeasuresDate bodyMeasuresDate,
      UserWeight bodyMeasuresWeight,
      UserHeight bodyMeasuresHeight});
}

/// @nodoc
class __$BodyMeasuresCopyWithImpl<$Res> extends _$BodyMeasuresCopyWithImpl<$Res>
    implements _$BodyMeasuresCopyWith<$Res> {
  __$BodyMeasuresCopyWithImpl(
      _BodyMeasures _value, $Res Function(_BodyMeasures) _then)
      : super(_value, (v) => _then(v as _BodyMeasures));

  @override
  _BodyMeasures get _value => super._value as _BodyMeasures;

  @override
  $Res call({
    Object id = freezed,
    Object userId = freezed,
    Object bodyMeasuresDate = freezed,
    Object bodyMeasuresWeight = freezed,
    Object bodyMeasuresHeight = freezed,
  }) {
    return _then(_BodyMeasures(
      id: id == freezed ? _value.id : id as UniqueId,
      userId: userId == freezed ? _value.userId : userId as UniqueId,
      bodyMeasuresDate: bodyMeasuresDate == freezed
          ? _value.bodyMeasuresDate
          : bodyMeasuresDate as MeasuresDate,
      bodyMeasuresWeight: bodyMeasuresWeight == freezed
          ? _value.bodyMeasuresWeight
          : bodyMeasuresWeight as UserWeight,
      bodyMeasuresHeight: bodyMeasuresHeight == freezed
          ? _value.bodyMeasuresHeight
          : bodyMeasuresHeight as UserHeight,
    ));
  }
}

/// @nodoc
class _$_BodyMeasures extends _BodyMeasures {
  const _$_BodyMeasures(
      {@required this.id,
      @required this.userId,
      @required this.bodyMeasuresDate,
      @required this.bodyMeasuresWeight,
      @required this.bodyMeasuresHeight})
      : assert(id != null),
        assert(userId != null),
        assert(bodyMeasuresDate != null),
        assert(bodyMeasuresWeight != null),
        assert(bodyMeasuresHeight != null),
        super._();

  @override
  final UniqueId id;
  @override
  final UniqueId userId;
  @override
  final MeasuresDate bodyMeasuresDate;
  @override
  final UserWeight bodyMeasuresWeight;
  @override
  final UserHeight bodyMeasuresHeight;

  @override
  String toString() {
    return 'BodyMeasures(id: $id, userId: $userId, bodyMeasuresDate: $bodyMeasuresDate, bodyMeasuresWeight: $bodyMeasuresWeight, bodyMeasuresHeight: $bodyMeasuresHeight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BodyMeasures &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.bodyMeasuresDate, bodyMeasuresDate) ||
                const DeepCollectionEquality()
                    .equals(other.bodyMeasuresDate, bodyMeasuresDate)) &&
            (identical(other.bodyMeasuresWeight, bodyMeasuresWeight) ||
                const DeepCollectionEquality()
                    .equals(other.bodyMeasuresWeight, bodyMeasuresWeight)) &&
            (identical(other.bodyMeasuresHeight, bodyMeasuresHeight) ||
                const DeepCollectionEquality()
                    .equals(other.bodyMeasuresHeight, bodyMeasuresHeight)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(bodyMeasuresDate) ^
      const DeepCollectionEquality().hash(bodyMeasuresWeight) ^
      const DeepCollectionEquality().hash(bodyMeasuresHeight);

  @override
  _$BodyMeasuresCopyWith<_BodyMeasures> get copyWith =>
      __$BodyMeasuresCopyWithImpl<_BodyMeasures>(this, _$identity);
}

abstract class _BodyMeasures extends BodyMeasures {
  const _BodyMeasures._() : super._();
  const factory _BodyMeasures(
      {@required UniqueId id,
      @required UniqueId userId,
      @required MeasuresDate bodyMeasuresDate,
      @required UserWeight bodyMeasuresWeight,
      @required UserHeight bodyMeasuresHeight}) = _$_BodyMeasures;

  @override
  UniqueId get id;
  @override
  UniqueId get userId;
  @override
  MeasuresDate get bodyMeasuresDate;
  @override
  UserWeight get bodyMeasuresWeight;
  @override
  UserHeight get bodyMeasuresHeight;
  @override
  _$BodyMeasuresCopyWith<_BodyMeasures> get copyWith;
}
