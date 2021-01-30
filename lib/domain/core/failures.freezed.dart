// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

// ignore: unused_element
  ExceedingLength<T> exceedingLength<T>(
      {@required T failedValue, @required int max}) {
    return ExceedingLength<T>(
      failedValue: failedValue,
      max: max,
    );
  }

// ignore: unused_element
  ExceedingValue<T> exceedingValue<T>(
      {@required T failedValue, @required num max}) {
    return ExceedingValue<T>(
      failedValue: failedValue,
      max: max,
    );
  }

// ignore: unused_element
  InvalidDate<T> invalidDate<T>({@required T failedValue}) {
    return InvalidDate<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  InvalidDateOfBirth<T> invalidDateOfBirth<T>({@required T failedValue}) {
    return InvalidDateOfBirth<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  InvalidBool<T> invalidBool<T>({@required T failedValue}) {
    return InvalidBool<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  Empty<T> empty<T>({@required T failedValue}) {
    return Empty<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  ListTooLong<T> listTooLong<T>({@required T failedValue, @required int max}) {
    return ListTooLong<T>(
      failedValue: failedValue,
      max: max,
    );
  }

// ignore: unused_element
  InvalidEmail<T> invalidEmail<T>({@required String failedValue}) {
    return InvalidEmail<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  ShortPassword<T> shortPassword<T>({@required String failedValue}) {
    return ShortPassword<T>(
      failedValue: failedValue,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ValueFailure = _$ValueFailureTearOff();

/// @nodoc
mixin _$ValueFailure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult exceedingLength(T failedValue, int max),
    @required TResult exceedingValue(T failedValue, num max),
    @required TResult invalidDate(T failedValue),
    @required TResult invalidDateOfBirth(T failedValue),
    @required TResult invalidBool(T failedValue),
    @required TResult empty(T failedValue),
    @required TResult listTooLong(T failedValue, int max),
    @required TResult invalidEmail(String failedValue),
    @required TResult shortPassword(String failedValue),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult exceedingLength(T failedValue, int max),
    TResult exceedingValue(T failedValue, num max),
    TResult invalidDate(T failedValue),
    TResult invalidDateOfBirth(T failedValue),
    TResult invalidBool(T failedValue),
    TResult empty(T failedValue),
    TResult listTooLong(T failedValue, int max),
    TResult invalidEmail(String failedValue),
    TResult shortPassword(String failedValue),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult exceedingValue(ExceedingValue<T> value),
    @required TResult invalidDate(InvalidDate<T> value),
    @required TResult invalidDateOfBirth(InvalidDateOfBirth<T> value),
    @required TResult invalidBool(InvalidBool<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult listTooLong(ListTooLong<T> value),
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult shortPassword(ShortPassword<T> value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult exceedingLength(ExceedingLength<T> value),
    TResult exceedingValue(ExceedingValue<T> value),
    TResult invalidDate(InvalidDate<T> value),
    TResult invalidDateOfBirth(InvalidDateOfBirth<T> value),
    TResult invalidBool(InvalidBool<T> value),
    TResult empty(Empty<T> value),
    TResult listTooLong(ListTooLong<T> value),
    TResult invalidEmail(InvalidEmail<T> value),
    TResult shortPassword(ShortPassword<T> value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;
}

/// @nodoc
abstract class $ExceedingLengthCopyWith<T, $Res> {
  factory $ExceedingLengthCopyWith(
          ExceedingLength<T> value, $Res Function(ExceedingLength<T>) then) =
      _$ExceedingLengthCopyWithImpl<T, $Res>;
  $Res call({T failedValue, int max});
}

/// @nodoc
class _$ExceedingLengthCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ExceedingLengthCopyWith<T, $Res> {
  _$ExceedingLengthCopyWithImpl(
      ExceedingLength<T> _value, $Res Function(ExceedingLength<T>) _then)
      : super(_value, (v) => _then(v as ExceedingLength<T>));

  @override
  ExceedingLength<T> get _value => super._value as ExceedingLength<T>;

  @override
  $Res call({
    Object failedValue = freezed,
    Object max = freezed,
  }) {
    return _then(ExceedingLength<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
      max: max == freezed ? _value.max : max as int,
    ));
  }
}

/// @nodoc
class _$ExceedingLength<T> implements ExceedingLength<T> {
  const _$ExceedingLength({@required this.failedValue, @required this.max})
      : assert(failedValue != null),
        assert(max != null);

  @override
  final T failedValue;
  @override
  final int max;

  @override
  String toString() {
    return 'ValueFailure<$T>.exceedingLength(failedValue: $failedValue, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExceedingLength<T> &&
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
  $ExceedingLengthCopyWith<T, ExceedingLength<T>> get copyWith =>
      _$ExceedingLengthCopyWithImpl<T, ExceedingLength<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult exceedingLength(T failedValue, int max),
    @required TResult exceedingValue(T failedValue, num max),
    @required TResult invalidDate(T failedValue),
    @required TResult invalidDateOfBirth(T failedValue),
    @required TResult invalidBool(T failedValue),
    @required TResult empty(T failedValue),
    @required TResult listTooLong(T failedValue, int max),
    @required TResult invalidEmail(String failedValue),
    @required TResult shortPassword(String failedValue),
  }) {
    assert(exceedingLength != null);
    assert(exceedingValue != null);
    assert(invalidDate != null);
    assert(invalidDateOfBirth != null);
    assert(invalidBool != null);
    assert(empty != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    return exceedingLength(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult exceedingLength(T failedValue, int max),
    TResult exceedingValue(T failedValue, num max),
    TResult invalidDate(T failedValue),
    TResult invalidDateOfBirth(T failedValue),
    TResult invalidBool(T failedValue),
    TResult empty(T failedValue),
    TResult listTooLong(T failedValue, int max),
    TResult invalidEmail(String failedValue),
    TResult shortPassword(String failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (exceedingLength != null) {
      return exceedingLength(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult exceedingValue(ExceedingValue<T> value),
    @required TResult invalidDate(InvalidDate<T> value),
    @required TResult invalidDateOfBirth(InvalidDateOfBirth<T> value),
    @required TResult invalidBool(InvalidBool<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult listTooLong(ListTooLong<T> value),
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult shortPassword(ShortPassword<T> value),
  }) {
    assert(exceedingLength != null);
    assert(exceedingValue != null);
    assert(invalidDate != null);
    assert(invalidDateOfBirth != null);
    assert(invalidBool != null);
    assert(empty != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    return exceedingLength(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult exceedingLength(ExceedingLength<T> value),
    TResult exceedingValue(ExceedingValue<T> value),
    TResult invalidDate(InvalidDate<T> value),
    TResult invalidDateOfBirth(InvalidDateOfBirth<T> value),
    TResult invalidBool(InvalidBool<T> value),
    TResult empty(Empty<T> value),
    TResult listTooLong(ListTooLong<T> value),
    TResult invalidEmail(InvalidEmail<T> value),
    TResult shortPassword(ShortPassword<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (exceedingLength != null) {
      return exceedingLength(this);
    }
    return orElse();
  }
}

abstract class ExceedingLength<T> implements ValueFailure<T> {
  const factory ExceedingLength({@required T failedValue, @required int max}) =
      _$ExceedingLength<T>;

  T get failedValue;
  int get max;
  @JsonKey(ignore: true)
  $ExceedingLengthCopyWith<T, ExceedingLength<T>> get copyWith;
}

/// @nodoc
abstract class $ExceedingValueCopyWith<T, $Res> {
  factory $ExceedingValueCopyWith(
          ExceedingValue<T> value, $Res Function(ExceedingValue<T>) then) =
      _$ExceedingValueCopyWithImpl<T, $Res>;
  $Res call({T failedValue, num max});
}

/// @nodoc
class _$ExceedingValueCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ExceedingValueCopyWith<T, $Res> {
  _$ExceedingValueCopyWithImpl(
      ExceedingValue<T> _value, $Res Function(ExceedingValue<T>) _then)
      : super(_value, (v) => _then(v as ExceedingValue<T>));

  @override
  ExceedingValue<T> get _value => super._value as ExceedingValue<T>;

  @override
  $Res call({
    Object failedValue = freezed,
    Object max = freezed,
  }) {
    return _then(ExceedingValue<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
      max: max == freezed ? _value.max : max as num,
    ));
  }
}

/// @nodoc
class _$ExceedingValue<T> implements ExceedingValue<T> {
  const _$ExceedingValue({@required this.failedValue, @required this.max})
      : assert(failedValue != null),
        assert(max != null);

  @override
  final T failedValue;
  @override
  final num max;

  @override
  String toString() {
    return 'ValueFailure<$T>.exceedingValue(failedValue: $failedValue, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExceedingValue<T> &&
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
  $ExceedingValueCopyWith<T, ExceedingValue<T>> get copyWith =>
      _$ExceedingValueCopyWithImpl<T, ExceedingValue<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult exceedingLength(T failedValue, int max),
    @required TResult exceedingValue(T failedValue, num max),
    @required TResult invalidDate(T failedValue),
    @required TResult invalidDateOfBirth(T failedValue),
    @required TResult invalidBool(T failedValue),
    @required TResult empty(T failedValue),
    @required TResult listTooLong(T failedValue, int max),
    @required TResult invalidEmail(String failedValue),
    @required TResult shortPassword(String failedValue),
  }) {
    assert(exceedingLength != null);
    assert(exceedingValue != null);
    assert(invalidDate != null);
    assert(invalidDateOfBirth != null);
    assert(invalidBool != null);
    assert(empty != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    return exceedingValue(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult exceedingLength(T failedValue, int max),
    TResult exceedingValue(T failedValue, num max),
    TResult invalidDate(T failedValue),
    TResult invalidDateOfBirth(T failedValue),
    TResult invalidBool(T failedValue),
    TResult empty(T failedValue),
    TResult listTooLong(T failedValue, int max),
    TResult invalidEmail(String failedValue),
    TResult shortPassword(String failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (exceedingValue != null) {
      return exceedingValue(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult exceedingValue(ExceedingValue<T> value),
    @required TResult invalidDate(InvalidDate<T> value),
    @required TResult invalidDateOfBirth(InvalidDateOfBirth<T> value),
    @required TResult invalidBool(InvalidBool<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult listTooLong(ListTooLong<T> value),
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult shortPassword(ShortPassword<T> value),
  }) {
    assert(exceedingLength != null);
    assert(exceedingValue != null);
    assert(invalidDate != null);
    assert(invalidDateOfBirth != null);
    assert(invalidBool != null);
    assert(empty != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    return exceedingValue(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult exceedingLength(ExceedingLength<T> value),
    TResult exceedingValue(ExceedingValue<T> value),
    TResult invalidDate(InvalidDate<T> value),
    TResult invalidDateOfBirth(InvalidDateOfBirth<T> value),
    TResult invalidBool(InvalidBool<T> value),
    TResult empty(Empty<T> value),
    TResult listTooLong(ListTooLong<T> value),
    TResult invalidEmail(InvalidEmail<T> value),
    TResult shortPassword(ShortPassword<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (exceedingValue != null) {
      return exceedingValue(this);
    }
    return orElse();
  }
}

abstract class ExceedingValue<T> implements ValueFailure<T> {
  const factory ExceedingValue({@required T failedValue, @required num max}) =
      _$ExceedingValue<T>;

  T get failedValue;
  num get max;
  @JsonKey(ignore: true)
  $ExceedingValueCopyWith<T, ExceedingValue<T>> get copyWith;
}

/// @nodoc
abstract class $InvalidDateCopyWith<T, $Res> {
  factory $InvalidDateCopyWith(
          InvalidDate<T> value, $Res Function(InvalidDate<T>) then) =
      _$InvalidDateCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidDateCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidDateCopyWith<T, $Res> {
  _$InvalidDateCopyWithImpl(
      InvalidDate<T> _value, $Res Function(InvalidDate<T>) _then)
      : super(_value, (v) => _then(v as InvalidDate<T>));

  @override
  InvalidDate<T> get _value => super._value as InvalidDate<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidDate<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$InvalidDate<T> implements InvalidDate<T> {
  const _$InvalidDate({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidDate(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidDate<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $InvalidDateCopyWith<T, InvalidDate<T>> get copyWith =>
      _$InvalidDateCopyWithImpl<T, InvalidDate<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult exceedingLength(T failedValue, int max),
    @required TResult exceedingValue(T failedValue, num max),
    @required TResult invalidDate(T failedValue),
    @required TResult invalidDateOfBirth(T failedValue),
    @required TResult invalidBool(T failedValue),
    @required TResult empty(T failedValue),
    @required TResult listTooLong(T failedValue, int max),
    @required TResult invalidEmail(String failedValue),
    @required TResult shortPassword(String failedValue),
  }) {
    assert(exceedingLength != null);
    assert(exceedingValue != null);
    assert(invalidDate != null);
    assert(invalidDateOfBirth != null);
    assert(invalidBool != null);
    assert(empty != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    return invalidDate(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult exceedingLength(T failedValue, int max),
    TResult exceedingValue(T failedValue, num max),
    TResult invalidDate(T failedValue),
    TResult invalidDateOfBirth(T failedValue),
    TResult invalidBool(T failedValue),
    TResult empty(T failedValue),
    TResult listTooLong(T failedValue, int max),
    TResult invalidEmail(String failedValue),
    TResult shortPassword(String failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidDate != null) {
      return invalidDate(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult exceedingValue(ExceedingValue<T> value),
    @required TResult invalidDate(InvalidDate<T> value),
    @required TResult invalidDateOfBirth(InvalidDateOfBirth<T> value),
    @required TResult invalidBool(InvalidBool<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult listTooLong(ListTooLong<T> value),
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult shortPassword(ShortPassword<T> value),
  }) {
    assert(exceedingLength != null);
    assert(exceedingValue != null);
    assert(invalidDate != null);
    assert(invalidDateOfBirth != null);
    assert(invalidBool != null);
    assert(empty != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    return invalidDate(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult exceedingLength(ExceedingLength<T> value),
    TResult exceedingValue(ExceedingValue<T> value),
    TResult invalidDate(InvalidDate<T> value),
    TResult invalidDateOfBirth(InvalidDateOfBirth<T> value),
    TResult invalidBool(InvalidBool<T> value),
    TResult empty(Empty<T> value),
    TResult listTooLong(ListTooLong<T> value),
    TResult invalidEmail(InvalidEmail<T> value),
    TResult shortPassword(ShortPassword<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidDate != null) {
      return invalidDate(this);
    }
    return orElse();
  }
}

abstract class InvalidDate<T> implements ValueFailure<T> {
  const factory InvalidDate({@required T failedValue}) = _$InvalidDate<T>;

  T get failedValue;
  @JsonKey(ignore: true)
  $InvalidDateCopyWith<T, InvalidDate<T>> get copyWith;
}

/// @nodoc
abstract class $InvalidDateOfBirthCopyWith<T, $Res> {
  factory $InvalidDateOfBirthCopyWith(InvalidDateOfBirth<T> value,
          $Res Function(InvalidDateOfBirth<T>) then) =
      _$InvalidDateOfBirthCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidDateOfBirthCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidDateOfBirthCopyWith<T, $Res> {
  _$InvalidDateOfBirthCopyWithImpl(
      InvalidDateOfBirth<T> _value, $Res Function(InvalidDateOfBirth<T>) _then)
      : super(_value, (v) => _then(v as InvalidDateOfBirth<T>));

  @override
  InvalidDateOfBirth<T> get _value => super._value as InvalidDateOfBirth<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidDateOfBirth<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$InvalidDateOfBirth<T> implements InvalidDateOfBirth<T> {
  const _$InvalidDateOfBirth({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidDateOfBirth(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidDateOfBirth<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $InvalidDateOfBirthCopyWith<T, InvalidDateOfBirth<T>> get copyWith =>
      _$InvalidDateOfBirthCopyWithImpl<T, InvalidDateOfBirth<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult exceedingLength(T failedValue, int max),
    @required TResult exceedingValue(T failedValue, num max),
    @required TResult invalidDate(T failedValue),
    @required TResult invalidDateOfBirth(T failedValue),
    @required TResult invalidBool(T failedValue),
    @required TResult empty(T failedValue),
    @required TResult listTooLong(T failedValue, int max),
    @required TResult invalidEmail(String failedValue),
    @required TResult shortPassword(String failedValue),
  }) {
    assert(exceedingLength != null);
    assert(exceedingValue != null);
    assert(invalidDate != null);
    assert(invalidDateOfBirth != null);
    assert(invalidBool != null);
    assert(empty != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    return invalidDateOfBirth(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult exceedingLength(T failedValue, int max),
    TResult exceedingValue(T failedValue, num max),
    TResult invalidDate(T failedValue),
    TResult invalidDateOfBirth(T failedValue),
    TResult invalidBool(T failedValue),
    TResult empty(T failedValue),
    TResult listTooLong(T failedValue, int max),
    TResult invalidEmail(String failedValue),
    TResult shortPassword(String failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidDateOfBirth != null) {
      return invalidDateOfBirth(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult exceedingValue(ExceedingValue<T> value),
    @required TResult invalidDate(InvalidDate<T> value),
    @required TResult invalidDateOfBirth(InvalidDateOfBirth<T> value),
    @required TResult invalidBool(InvalidBool<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult listTooLong(ListTooLong<T> value),
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult shortPassword(ShortPassword<T> value),
  }) {
    assert(exceedingLength != null);
    assert(exceedingValue != null);
    assert(invalidDate != null);
    assert(invalidDateOfBirth != null);
    assert(invalidBool != null);
    assert(empty != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    return invalidDateOfBirth(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult exceedingLength(ExceedingLength<T> value),
    TResult exceedingValue(ExceedingValue<T> value),
    TResult invalidDate(InvalidDate<T> value),
    TResult invalidDateOfBirth(InvalidDateOfBirth<T> value),
    TResult invalidBool(InvalidBool<T> value),
    TResult empty(Empty<T> value),
    TResult listTooLong(ListTooLong<T> value),
    TResult invalidEmail(InvalidEmail<T> value),
    TResult shortPassword(ShortPassword<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidDateOfBirth != null) {
      return invalidDateOfBirth(this);
    }
    return orElse();
  }
}

abstract class InvalidDateOfBirth<T> implements ValueFailure<T> {
  const factory InvalidDateOfBirth({@required T failedValue}) =
      _$InvalidDateOfBirth<T>;

  T get failedValue;
  @JsonKey(ignore: true)
  $InvalidDateOfBirthCopyWith<T, InvalidDateOfBirth<T>> get copyWith;
}

/// @nodoc
abstract class $InvalidBoolCopyWith<T, $Res> {
  factory $InvalidBoolCopyWith(
          InvalidBool<T> value, $Res Function(InvalidBool<T>) then) =
      _$InvalidBoolCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidBoolCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidBoolCopyWith<T, $Res> {
  _$InvalidBoolCopyWithImpl(
      InvalidBool<T> _value, $Res Function(InvalidBool<T>) _then)
      : super(_value, (v) => _then(v as InvalidBool<T>));

  @override
  InvalidBool<T> get _value => super._value as InvalidBool<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidBool<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$InvalidBool<T> implements InvalidBool<T> {
  const _$InvalidBool({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidBool(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidBool<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $InvalidBoolCopyWith<T, InvalidBool<T>> get copyWith =>
      _$InvalidBoolCopyWithImpl<T, InvalidBool<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult exceedingLength(T failedValue, int max),
    @required TResult exceedingValue(T failedValue, num max),
    @required TResult invalidDate(T failedValue),
    @required TResult invalidDateOfBirth(T failedValue),
    @required TResult invalidBool(T failedValue),
    @required TResult empty(T failedValue),
    @required TResult listTooLong(T failedValue, int max),
    @required TResult invalidEmail(String failedValue),
    @required TResult shortPassword(String failedValue),
  }) {
    assert(exceedingLength != null);
    assert(exceedingValue != null);
    assert(invalidDate != null);
    assert(invalidDateOfBirth != null);
    assert(invalidBool != null);
    assert(empty != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    return invalidBool(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult exceedingLength(T failedValue, int max),
    TResult exceedingValue(T failedValue, num max),
    TResult invalidDate(T failedValue),
    TResult invalidDateOfBirth(T failedValue),
    TResult invalidBool(T failedValue),
    TResult empty(T failedValue),
    TResult listTooLong(T failedValue, int max),
    TResult invalidEmail(String failedValue),
    TResult shortPassword(String failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidBool != null) {
      return invalidBool(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult exceedingValue(ExceedingValue<T> value),
    @required TResult invalidDate(InvalidDate<T> value),
    @required TResult invalidDateOfBirth(InvalidDateOfBirth<T> value),
    @required TResult invalidBool(InvalidBool<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult listTooLong(ListTooLong<T> value),
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult shortPassword(ShortPassword<T> value),
  }) {
    assert(exceedingLength != null);
    assert(exceedingValue != null);
    assert(invalidDate != null);
    assert(invalidDateOfBirth != null);
    assert(invalidBool != null);
    assert(empty != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    return invalidBool(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult exceedingLength(ExceedingLength<T> value),
    TResult exceedingValue(ExceedingValue<T> value),
    TResult invalidDate(InvalidDate<T> value),
    TResult invalidDateOfBirth(InvalidDateOfBirth<T> value),
    TResult invalidBool(InvalidBool<T> value),
    TResult empty(Empty<T> value),
    TResult listTooLong(ListTooLong<T> value),
    TResult invalidEmail(InvalidEmail<T> value),
    TResult shortPassword(ShortPassword<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidBool != null) {
      return invalidBool(this);
    }
    return orElse();
  }
}

abstract class InvalidBool<T> implements ValueFailure<T> {
  const factory InvalidBool({@required T failedValue}) = _$InvalidBool<T>;

  T get failedValue;
  @JsonKey(ignore: true)
  $InvalidBoolCopyWith<T, InvalidBool<T>> get copyWith;
}

/// @nodoc
abstract class $EmptyCopyWith<T, $Res> {
  factory $EmptyCopyWith(Empty<T> value, $Res Function(Empty<T>) then) =
      _$EmptyCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$EmptyCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $EmptyCopyWith<T, $Res> {
  _$EmptyCopyWithImpl(Empty<T> _value, $Res Function(Empty<T>) _then)
      : super(_value, (v) => _then(v as Empty<T>));

  @override
  Empty<T> get _value => super._value as Empty<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(Empty<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$Empty<T> implements Empty<T> {
  const _$Empty({@required this.failedValue}) : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.empty(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Empty<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $EmptyCopyWith<T, Empty<T>> get copyWith =>
      _$EmptyCopyWithImpl<T, Empty<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult exceedingLength(T failedValue, int max),
    @required TResult exceedingValue(T failedValue, num max),
    @required TResult invalidDate(T failedValue),
    @required TResult invalidDateOfBirth(T failedValue),
    @required TResult invalidBool(T failedValue),
    @required TResult empty(T failedValue),
    @required TResult listTooLong(T failedValue, int max),
    @required TResult invalidEmail(String failedValue),
    @required TResult shortPassword(String failedValue),
  }) {
    assert(exceedingLength != null);
    assert(exceedingValue != null);
    assert(invalidDate != null);
    assert(invalidDateOfBirth != null);
    assert(invalidBool != null);
    assert(empty != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    return empty(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult exceedingLength(T failedValue, int max),
    TResult exceedingValue(T failedValue, num max),
    TResult invalidDate(T failedValue),
    TResult invalidDateOfBirth(T failedValue),
    TResult invalidBool(T failedValue),
    TResult empty(T failedValue),
    TResult listTooLong(T failedValue, int max),
    TResult invalidEmail(String failedValue),
    TResult shortPassword(String failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult exceedingValue(ExceedingValue<T> value),
    @required TResult invalidDate(InvalidDate<T> value),
    @required TResult invalidDateOfBirth(InvalidDateOfBirth<T> value),
    @required TResult invalidBool(InvalidBool<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult listTooLong(ListTooLong<T> value),
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult shortPassword(ShortPassword<T> value),
  }) {
    assert(exceedingLength != null);
    assert(exceedingValue != null);
    assert(invalidDate != null);
    assert(invalidDateOfBirth != null);
    assert(invalidBool != null);
    assert(empty != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult exceedingLength(ExceedingLength<T> value),
    TResult exceedingValue(ExceedingValue<T> value),
    TResult invalidDate(InvalidDate<T> value),
    TResult invalidDateOfBirth(InvalidDateOfBirth<T> value),
    TResult invalidBool(InvalidBool<T> value),
    TResult empty(Empty<T> value),
    TResult listTooLong(ListTooLong<T> value),
    TResult invalidEmail(InvalidEmail<T> value),
    TResult shortPassword(ShortPassword<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty<T> implements ValueFailure<T> {
  const factory Empty({@required T failedValue}) = _$Empty<T>;

  T get failedValue;
  @JsonKey(ignore: true)
  $EmptyCopyWith<T, Empty<T>> get copyWith;
}

/// @nodoc
abstract class $ListTooLongCopyWith<T, $Res> {
  factory $ListTooLongCopyWith(
          ListTooLong<T> value, $Res Function(ListTooLong<T>) then) =
      _$ListTooLongCopyWithImpl<T, $Res>;
  $Res call({T failedValue, int max});
}

/// @nodoc
class _$ListTooLongCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ListTooLongCopyWith<T, $Res> {
  _$ListTooLongCopyWithImpl(
      ListTooLong<T> _value, $Res Function(ListTooLong<T>) _then)
      : super(_value, (v) => _then(v as ListTooLong<T>));

  @override
  ListTooLong<T> get _value => super._value as ListTooLong<T>;

  @override
  $Res call({
    Object failedValue = freezed,
    Object max = freezed,
  }) {
    return _then(ListTooLong<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
      max: max == freezed ? _value.max : max as int,
    ));
  }
}

/// @nodoc
class _$ListTooLong<T> implements ListTooLong<T> {
  const _$ListTooLong({@required this.failedValue, @required this.max})
      : assert(failedValue != null),
        assert(max != null);

  @override
  final T failedValue;
  @override
  final int max;

  @override
  String toString() {
    return 'ValueFailure<$T>.listTooLong(failedValue: $failedValue, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ListTooLong<T> &&
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
  $ListTooLongCopyWith<T, ListTooLong<T>> get copyWith =>
      _$ListTooLongCopyWithImpl<T, ListTooLong<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult exceedingLength(T failedValue, int max),
    @required TResult exceedingValue(T failedValue, num max),
    @required TResult invalidDate(T failedValue),
    @required TResult invalidDateOfBirth(T failedValue),
    @required TResult invalidBool(T failedValue),
    @required TResult empty(T failedValue),
    @required TResult listTooLong(T failedValue, int max),
    @required TResult invalidEmail(String failedValue),
    @required TResult shortPassword(String failedValue),
  }) {
    assert(exceedingLength != null);
    assert(exceedingValue != null);
    assert(invalidDate != null);
    assert(invalidDateOfBirth != null);
    assert(invalidBool != null);
    assert(empty != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    return listTooLong(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult exceedingLength(T failedValue, int max),
    TResult exceedingValue(T failedValue, num max),
    TResult invalidDate(T failedValue),
    TResult invalidDateOfBirth(T failedValue),
    TResult invalidBool(T failedValue),
    TResult empty(T failedValue),
    TResult listTooLong(T failedValue, int max),
    TResult invalidEmail(String failedValue),
    TResult shortPassword(String failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (listTooLong != null) {
      return listTooLong(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult exceedingValue(ExceedingValue<T> value),
    @required TResult invalidDate(InvalidDate<T> value),
    @required TResult invalidDateOfBirth(InvalidDateOfBirth<T> value),
    @required TResult invalidBool(InvalidBool<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult listTooLong(ListTooLong<T> value),
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult shortPassword(ShortPassword<T> value),
  }) {
    assert(exceedingLength != null);
    assert(exceedingValue != null);
    assert(invalidDate != null);
    assert(invalidDateOfBirth != null);
    assert(invalidBool != null);
    assert(empty != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    return listTooLong(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult exceedingLength(ExceedingLength<T> value),
    TResult exceedingValue(ExceedingValue<T> value),
    TResult invalidDate(InvalidDate<T> value),
    TResult invalidDateOfBirth(InvalidDateOfBirth<T> value),
    TResult invalidBool(InvalidBool<T> value),
    TResult empty(Empty<T> value),
    TResult listTooLong(ListTooLong<T> value),
    TResult invalidEmail(InvalidEmail<T> value),
    TResult shortPassword(ShortPassword<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (listTooLong != null) {
      return listTooLong(this);
    }
    return orElse();
  }
}

abstract class ListTooLong<T> implements ValueFailure<T> {
  const factory ListTooLong({@required T failedValue, @required int max}) =
      _$ListTooLong<T>;

  T get failedValue;
  int get max;
  @JsonKey(ignore: true)
  $ListTooLongCopyWith<T, ListTooLong<T>> get copyWith;
}

/// @nodoc
abstract class $InvalidEmailCopyWith<T, $Res> {
  factory $InvalidEmailCopyWith(
          InvalidEmail<T> value, $Res Function(InvalidEmail<T>) then) =
      _$InvalidEmailCopyWithImpl<T, $Res>;
  $Res call({String failedValue});
}

/// @nodoc
class _$InvalidEmailCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidEmailCopyWith<T, $Res> {
  _$InvalidEmailCopyWithImpl(
      InvalidEmail<T> _value, $Res Function(InvalidEmail<T>) _then)
      : super(_value, (v) => _then(v as InvalidEmail<T>));

  @override
  InvalidEmail<T> get _value => super._value as InvalidEmail<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidEmail<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as String,
    ));
  }
}

/// @nodoc
class _$InvalidEmail<T> implements InvalidEmail<T> {
  const _$InvalidEmail({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidEmail<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      _$InvalidEmailCopyWithImpl<T, InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult exceedingLength(T failedValue, int max),
    @required TResult exceedingValue(T failedValue, num max),
    @required TResult invalidDate(T failedValue),
    @required TResult invalidDateOfBirth(T failedValue),
    @required TResult invalidBool(T failedValue),
    @required TResult empty(T failedValue),
    @required TResult listTooLong(T failedValue, int max),
    @required TResult invalidEmail(String failedValue),
    @required TResult shortPassword(String failedValue),
  }) {
    assert(exceedingLength != null);
    assert(exceedingValue != null);
    assert(invalidDate != null);
    assert(invalidDateOfBirth != null);
    assert(invalidBool != null);
    assert(empty != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult exceedingLength(T failedValue, int max),
    TResult exceedingValue(T failedValue, num max),
    TResult invalidDate(T failedValue),
    TResult invalidDateOfBirth(T failedValue),
    TResult invalidBool(T failedValue),
    TResult empty(T failedValue),
    TResult listTooLong(T failedValue, int max),
    TResult invalidEmail(String failedValue),
    TResult shortPassword(String failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult exceedingValue(ExceedingValue<T> value),
    @required TResult invalidDate(InvalidDate<T> value),
    @required TResult invalidDateOfBirth(InvalidDateOfBirth<T> value),
    @required TResult invalidBool(InvalidBool<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult listTooLong(ListTooLong<T> value),
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult shortPassword(ShortPassword<T> value),
  }) {
    assert(exceedingLength != null);
    assert(exceedingValue != null);
    assert(invalidDate != null);
    assert(invalidDateOfBirth != null);
    assert(invalidBool != null);
    assert(empty != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult exceedingLength(ExceedingLength<T> value),
    TResult exceedingValue(ExceedingValue<T> value),
    TResult invalidDate(InvalidDate<T> value),
    TResult invalidDateOfBirth(InvalidDateOfBirth<T> value),
    TResult invalidBool(InvalidBool<T> value),
    TResult empty(Empty<T> value),
    TResult listTooLong(ListTooLong<T> value),
    TResult invalidEmail(InvalidEmail<T> value),
    TResult shortPassword(ShortPassword<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements ValueFailure<T> {
  const factory InvalidEmail({@required String failedValue}) =
      _$InvalidEmail<T>;

  String get failedValue;
  @JsonKey(ignore: true)
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith;
}

/// @nodoc
abstract class $ShortPasswordCopyWith<T, $Res> {
  factory $ShortPasswordCopyWith(
          ShortPassword<T> value, $Res Function(ShortPassword<T>) then) =
      _$ShortPasswordCopyWithImpl<T, $Res>;
  $Res call({String failedValue});
}

/// @nodoc
class _$ShortPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ShortPasswordCopyWith<T, $Res> {
  _$ShortPasswordCopyWithImpl(
      ShortPassword<T> _value, $Res Function(ShortPassword<T>) _then)
      : super(_value, (v) => _then(v as ShortPassword<T>));

  @override
  ShortPassword<T> get _value => super._value as ShortPassword<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(ShortPassword<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as String,
    ));
  }
}

/// @nodoc
class _$ShortPassword<T> implements ShortPassword<T> {
  const _$ShortPassword({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.shortPassword(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShortPassword<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $ShortPasswordCopyWith<T, ShortPassword<T>> get copyWith =>
      _$ShortPasswordCopyWithImpl<T, ShortPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult exceedingLength(T failedValue, int max),
    @required TResult exceedingValue(T failedValue, num max),
    @required TResult invalidDate(T failedValue),
    @required TResult invalidDateOfBirth(T failedValue),
    @required TResult invalidBool(T failedValue),
    @required TResult empty(T failedValue),
    @required TResult listTooLong(T failedValue, int max),
    @required TResult invalidEmail(String failedValue),
    @required TResult shortPassword(String failedValue),
  }) {
    assert(exceedingLength != null);
    assert(exceedingValue != null);
    assert(invalidDate != null);
    assert(invalidDateOfBirth != null);
    assert(invalidBool != null);
    assert(empty != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    return shortPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult exceedingLength(T failedValue, int max),
    TResult exceedingValue(T failedValue, num max),
    TResult invalidDate(T failedValue),
    TResult invalidDateOfBirth(T failedValue),
    TResult invalidBool(T failedValue),
    TResult empty(T failedValue),
    TResult listTooLong(T failedValue, int max),
    TResult invalidEmail(String failedValue),
    TResult shortPassword(String failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (shortPassword != null) {
      return shortPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult exceedingValue(ExceedingValue<T> value),
    @required TResult invalidDate(InvalidDate<T> value),
    @required TResult invalidDateOfBirth(InvalidDateOfBirth<T> value),
    @required TResult invalidBool(InvalidBool<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult listTooLong(ListTooLong<T> value),
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult shortPassword(ShortPassword<T> value),
  }) {
    assert(exceedingLength != null);
    assert(exceedingValue != null);
    assert(invalidDate != null);
    assert(invalidDateOfBirth != null);
    assert(invalidBool != null);
    assert(empty != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    return shortPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult exceedingLength(ExceedingLength<T> value),
    TResult exceedingValue(ExceedingValue<T> value),
    TResult invalidDate(InvalidDate<T> value),
    TResult invalidDateOfBirth(InvalidDateOfBirth<T> value),
    TResult invalidBool(InvalidBool<T> value),
    TResult empty(Empty<T> value),
    TResult listTooLong(ListTooLong<T> value),
    TResult invalidEmail(InvalidEmail<T> value),
    TResult shortPassword(ShortPassword<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (shortPassword != null) {
      return shortPassword(this);
    }
    return orElse();
  }
}

abstract class ShortPassword<T> implements ValueFailure<T> {
  const factory ShortPassword({@required String failedValue}) =
      _$ShortPassword<T>;

  String get failedValue;
  @JsonKey(ignore: true)
  $ShortPasswordCopyWith<T, ShortPassword<T>> get copyWith;
}
