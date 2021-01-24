// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'date_presentation_classes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$DatePrimitiveTearOff {
  const _$DatePrimitiveTearOff();

// ignore: unused_element
  _Dateprimitive call({@required int date}) {
    return _Dateprimitive(
      date: date,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $DatePrimitive = _$DatePrimitiveTearOff();

/// @nodoc
mixin _$DatePrimitive {
  int get date;

  @JsonKey(ignore: true)
  $DatePrimitiveCopyWith<DatePrimitive> get copyWith;
}

/// @nodoc
abstract class $DatePrimitiveCopyWith<$Res> {
  factory $DatePrimitiveCopyWith(
          DatePrimitive value, $Res Function(DatePrimitive) then) =
      _$DatePrimitiveCopyWithImpl<$Res>;
  $Res call({int date});
}

/// @nodoc
class _$DatePrimitiveCopyWithImpl<$Res>
    implements $DatePrimitiveCopyWith<$Res> {
  _$DatePrimitiveCopyWithImpl(this._value, this._then);

  final DatePrimitive _value;
  // ignore: unused_field
  final $Res Function(DatePrimitive) _then;

  @override
  $Res call({
    Object date = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed ? _value.date : date as int,
    ));
  }
}

/// @nodoc
abstract class _$DateprimitiveCopyWith<$Res>
    implements $DatePrimitiveCopyWith<$Res> {
  factory _$DateprimitiveCopyWith(
          _Dateprimitive value, $Res Function(_Dateprimitive) then) =
      __$DateprimitiveCopyWithImpl<$Res>;
  @override
  $Res call({int date});
}

/// @nodoc
class __$DateprimitiveCopyWithImpl<$Res>
    extends _$DatePrimitiveCopyWithImpl<$Res>
    implements _$DateprimitiveCopyWith<$Res> {
  __$DateprimitiveCopyWithImpl(
      _Dateprimitive _value, $Res Function(_Dateprimitive) _then)
      : super(_value, (v) => _then(v as _Dateprimitive));

  @override
  _Dateprimitive get _value => super._value as _Dateprimitive;

  @override
  $Res call({
    Object date = freezed,
  }) {
    return _then(_Dateprimitive(
      date: date == freezed ? _value.date : date as int,
    ));
  }
}

/// @nodoc
class _$_Dateprimitive extends _Dateprimitive {
  const _$_Dateprimitive({@required this.date})
      : assert(date != null),
        super._();

  @override
  final int date;

  @override
  String toString() {
    return 'DatePrimitive(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Dateprimitive &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(date);

  @JsonKey(ignore: true)
  @override
  _$DateprimitiveCopyWith<_Dateprimitive> get copyWith =>
      __$DateprimitiveCopyWithImpl<_Dateprimitive>(this, _$identity);
}

abstract class _Dateprimitive extends DatePrimitive {
  const _Dateprimitive._() : super._();
  const factory _Dateprimitive({@required int date}) = _$_Dateprimitive;

  @override
  int get date;
  @override
  @JsonKey(ignore: true)
  _$DateprimitiveCopyWith<_Dateprimitive> get copyWith;
}
