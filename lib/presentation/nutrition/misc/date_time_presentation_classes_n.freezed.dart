// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'date_time_presentation_classes_n.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$DateTimePrimitiveNTearOff {
  const _$DateTimePrimitiveNTearOff();

// ignore: unused_element
  _DateTimePrimitiveN call({@required int dateTime}) {
    return _DateTimePrimitiveN(
      dateTime: dateTime,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $DateTimePrimitiveN = _$DateTimePrimitiveNTearOff();

/// @nodoc
mixin _$DateTimePrimitiveN {
  int get dateTime;

  @JsonKey(ignore: true)
  $DateTimePrimitiveNCopyWith<DateTimePrimitiveN> get copyWith;
}

/// @nodoc
abstract class $DateTimePrimitiveNCopyWith<$Res> {
  factory $DateTimePrimitiveNCopyWith(
          DateTimePrimitiveN value, $Res Function(DateTimePrimitiveN) then) =
      _$DateTimePrimitiveNCopyWithImpl<$Res>;
  $Res call({int dateTime});
}

/// @nodoc
class _$DateTimePrimitiveNCopyWithImpl<$Res>
    implements $DateTimePrimitiveNCopyWith<$Res> {
  _$DateTimePrimitiveNCopyWithImpl(this._value, this._then);

  final DateTimePrimitiveN _value;
  // ignore: unused_field
  final $Res Function(DateTimePrimitiveN) _then;

  @override
  $Res call({
    Object dateTime = freezed,
  }) {
    return _then(_value.copyWith(
      dateTime: dateTime == freezed ? _value.dateTime : dateTime as int,
    ));
  }
}

/// @nodoc
abstract class _$DateTimePrimitiveNCopyWith<$Res>
    implements $DateTimePrimitiveNCopyWith<$Res> {
  factory _$DateTimePrimitiveNCopyWith(
          _DateTimePrimitiveN value, $Res Function(_DateTimePrimitiveN) then) =
      __$DateTimePrimitiveNCopyWithImpl<$Res>;
  @override
  $Res call({int dateTime});
}

/// @nodoc
class __$DateTimePrimitiveNCopyWithImpl<$Res>
    extends _$DateTimePrimitiveNCopyWithImpl<$Res>
    implements _$DateTimePrimitiveNCopyWith<$Res> {
  __$DateTimePrimitiveNCopyWithImpl(
      _DateTimePrimitiveN _value, $Res Function(_DateTimePrimitiveN) _then)
      : super(_value, (v) => _then(v as _DateTimePrimitiveN));

  @override
  _DateTimePrimitiveN get _value => super._value as _DateTimePrimitiveN;

  @override
  $Res call({
    Object dateTime = freezed,
  }) {
    return _then(_DateTimePrimitiveN(
      dateTime: dateTime == freezed ? _value.dateTime : dateTime as int,
    ));
  }
}

/// @nodoc
class _$_DateTimePrimitiveN extends _DateTimePrimitiveN {
  const _$_DateTimePrimitiveN({@required this.dateTime})
      : assert(dateTime != null),
        super._();

  @override
  final int dateTime;

  @override
  String toString() {
    return 'DateTimePrimitiveN(dateTime: $dateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DateTimePrimitiveN &&
            (identical(other.dateTime, dateTime) ||
                const DeepCollectionEquality()
                    .equals(other.dateTime, dateTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(dateTime);

  @JsonKey(ignore: true)
  @override
  _$DateTimePrimitiveNCopyWith<_DateTimePrimitiveN> get copyWith =>
      __$DateTimePrimitiveNCopyWithImpl<_DateTimePrimitiveN>(this, _$identity);
}

abstract class _DateTimePrimitiveN extends DateTimePrimitiveN {
  const _DateTimePrimitiveN._() : super._();
  const factory _DateTimePrimitiveN({@required int dateTime}) =
      _$_DateTimePrimitiveN;

  @override
  int get dateTime;
  @override
  @JsonKey(ignore: true)
  _$DateTimePrimitiveNCopyWith<_DateTimePrimitiveN> get copyWith;
}
