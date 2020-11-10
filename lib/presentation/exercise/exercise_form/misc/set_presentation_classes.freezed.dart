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
  _SetItemprimitive call({@required UniqueId id, @required int numb}) {
    return _SetItemprimitive(
      id: id,
      numb: numb,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SetItemPrimitive = _$SetItemPrimitiveTearOff();

/// @nodoc
mixin _$SetItemPrimitive {
  UniqueId get id;
  int get numb;

  $SetItemPrimitiveCopyWith<SetItemPrimitive> get copyWith;
}

/// @nodoc
abstract class $SetItemPrimitiveCopyWith<$Res> {
  factory $SetItemPrimitiveCopyWith(
          SetItemPrimitive value, $Res Function(SetItemPrimitive) then) =
      _$SetItemPrimitiveCopyWithImpl<$Res>;
  $Res call({UniqueId id, int numb});
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
    Object numb = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      numb: numb == freezed ? _value.numb : numb as int,
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
  $Res call({UniqueId id, int numb});
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
    Object numb = freezed,
  }) {
    return _then(_SetItemprimitive(
      id: id == freezed ? _value.id : id as UniqueId,
      numb: numb == freezed ? _value.numb : numb as int,
    ));
  }
}

/// @nodoc
class _$_SetItemprimitive extends _SetItemprimitive
    with DiagnosticableTreeMixin {
  const _$_SetItemprimitive({@required this.id, @required this.numb})
      : assert(id != null),
        assert(numb != null),
        super._();

  @override
  final UniqueId id;
  @override
  final int numb;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SetItemPrimitive(id: $id, numb: $numb)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SetItemPrimitive'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('numb', numb));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetItemprimitive &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.numb, numb) ||
                const DeepCollectionEquality().equals(other.numb, numb)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(numb);

  @override
  _$SetItemprimitiveCopyWith<_SetItemprimitive> get copyWith =>
      __$SetItemprimitiveCopyWithImpl<_SetItemprimitive>(this, _$identity);
}

abstract class _SetItemprimitive extends SetItemPrimitive {
  const _SetItemprimitive._() : super._();
  const factory _SetItemprimitive({@required UniqueId id, @required int numb}) =
      _$_SetItemprimitive;

  @override
  UniqueId get id;
  @override
  int get numb;
  @override
  _$SetItemprimitiveCopyWith<_SetItemprimitive> get copyWith;
}
