// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'meal_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$MealFailuresTearOff {
  const _$MealFailuresTearOff();

// ignore: unused_element
  StringToLong<T> stringToLong<T>(
      {@required String failedValue, @required int max}) {
    return StringToLong<T>(
      failedValue: failedValue,
      max: max,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $MealFailures = _$MealFailuresTearOff();

/// @nodoc
mixin _$MealFailures<T> {
  String get failedValue;
  int get max;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult stringToLong(String failedValue, int max),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult stringToLong(String failedValue, int max),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult stringToLong(StringToLong<T> value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult stringToLong(StringToLong<T> value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $MealFailuresCopyWith<T, MealFailures<T>> get copyWith;
}

/// @nodoc
abstract class $MealFailuresCopyWith<T, $Res> {
  factory $MealFailuresCopyWith(
          MealFailures<T> value, $Res Function(MealFailures<T>) then) =
      _$MealFailuresCopyWithImpl<T, $Res>;
  $Res call({String failedValue, int max});
}

/// @nodoc
class _$MealFailuresCopyWithImpl<T, $Res>
    implements $MealFailuresCopyWith<T, $Res> {
  _$MealFailuresCopyWithImpl(this._value, this._then);

  final MealFailures<T> _value;
  // ignore: unused_field
  final $Res Function(MealFailures<T>) _then;

  @override
  $Res call({
    Object failedValue = freezed,
    Object max = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as String,
      max: max == freezed ? _value.max : max as int,
    ));
  }
}

/// @nodoc
abstract class $StringToLongCopyWith<T, $Res>
    implements $MealFailuresCopyWith<T, $Res> {
  factory $StringToLongCopyWith(
          StringToLong<T> value, $Res Function(StringToLong<T>) then) =
      _$StringToLongCopyWithImpl<T, $Res>;
  @override
  $Res call({String failedValue, int max});
}

/// @nodoc
class _$StringToLongCopyWithImpl<T, $Res>
    extends _$MealFailuresCopyWithImpl<T, $Res>
    implements $StringToLongCopyWith<T, $Res> {
  _$StringToLongCopyWithImpl(
      StringToLong<T> _value, $Res Function(StringToLong<T>) _then)
      : super(_value, (v) => _then(v as StringToLong<T>));

  @override
  StringToLong<T> get _value => super._value as StringToLong<T>;

  @override
  $Res call({
    Object failedValue = freezed,
    Object max = freezed,
  }) {
    return _then(StringToLong<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as String,
      max: max == freezed ? _value.max : max as int,
    ));
  }
}

/// @nodoc
class _$StringToLong<T> implements StringToLong<T> {
  const _$StringToLong({@required this.failedValue, @required this.max})
      : assert(failedValue != null),
        assert(max != null);

  @override
  final String failedValue;
  @override
  final int max;

  @override
  String toString() {
    return 'MealFailures<$T>.stringToLong(failedValue: $failedValue, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StringToLong<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.max, max) ||
                const DeepCollectionEquality().equals(other.max, max)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(max);

  @JsonKey(ignore: true)
  @override
  $StringToLongCopyWith<T, StringToLong<T>> get copyWith =>
      _$StringToLongCopyWithImpl<T, StringToLong<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult stringToLong(String failedValue, int max),
  }) {
    assert(stringToLong != null);
    return stringToLong(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult stringToLong(String failedValue, int max),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (stringToLong != null) {
      return stringToLong(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult stringToLong(StringToLong<T> value),
  }) {
    assert(stringToLong != null);
    return stringToLong(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult stringToLong(StringToLong<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (stringToLong != null) {
      return stringToLong(this);
    }
    return orElse();
  }
}

abstract class StringToLong<T> implements MealFailures<T> {
  const factory StringToLong(
      {@required String failedValue, @required int max}) = _$StringToLong<T>;

  @override
  String get failedValue;
  @override
  int get max;
  @override
  @JsonKey(ignore: true)
  $StringToLongCopyWith<T, StringToLong<T>> get copyWith;
}
