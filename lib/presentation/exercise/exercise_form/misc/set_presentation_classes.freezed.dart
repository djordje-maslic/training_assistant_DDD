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
  _SetItemprimitive call({@required UniqueId id, @required int number}) {
    return _SetItemprimitive(
      id: id,
      number: number,
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

  $SetItemPrimitiveCopyWith<SetItemPrimitive> get copyWith;
}

/// @nodoc
abstract class $SetItemPrimitiveCopyWith<$Res> {
  factory $SetItemPrimitiveCopyWith(
          SetItemPrimitive value, $Res Function(SetItemPrimitive) then) =
      _$SetItemPrimitiveCopyWithImpl<$Res>;
  $Res call({UniqueId id, int number});
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
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      number: number == freezed ? _value.number : number as int,
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
  $Res call({UniqueId id, int number});
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
  }) {
    return _then(_SetItemprimitive(
      id: id == freezed ? _value.id : id as UniqueId,
      number: number == freezed ? _value.number : number as int,
    ));
  }
}

/// @nodoc
class _$_SetItemprimitive extends _SetItemprimitive
    with DiagnosticableTreeMixin {
  const _$_SetItemprimitive({@required this.id, @required this.number})
      : assert(id != null),
        assert(number != null),
        super._();

  @override
  final UniqueId id;
  @override
  final int number;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SetItemPrimitive(id: $id, number: $number)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SetItemPrimitive'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('number', number));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetItemprimitive &&
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
  _$SetItemprimitiveCopyWith<_SetItemprimitive> get copyWith =>
      __$SetItemprimitiveCopyWithImpl<_SetItemprimitive>(this, _$identity);
}

abstract class _SetItemprimitive extends SetItemPrimitive {
  const _SetItemprimitive._() : super._();
  const factory _SetItemprimitive(
      {@required UniqueId id, @required int number}) = _$_SetItemprimitive;

  @override
  UniqueId get id;
  @override
  int get number;
  @override
  _$SetItemprimitiveCopyWith<_SetItemprimitive> get copyWith;
}
