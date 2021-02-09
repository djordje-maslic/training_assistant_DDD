// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'nutrients_presentation_classes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$NutrientItemPrimitiveTearOff {
  const _$NutrientItemPrimitiveTearOff();

// ignore: unused_element
  _NutrientItemPrimitive call(
      {@required UniqueId id,
      @required String nutrientName,
      @required double nutrientPieces,
      @required double nutrientWeight,
      @required double nutrientVolume}) {
    return _NutrientItemPrimitive(
      id: id,
      nutrientName: nutrientName,
      nutrientPieces: nutrientPieces,
      nutrientWeight: nutrientWeight,
      nutrientVolume: nutrientVolume,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $NutrientItemPrimitive = _$NutrientItemPrimitiveTearOff();

/// @nodoc
mixin _$NutrientItemPrimitive {
  UniqueId get id;
  String get nutrientName;
  double get nutrientPieces;
  double get nutrientWeight;
  double get nutrientVolume;

  @JsonKey(ignore: true)
  $NutrientItemPrimitiveCopyWith<NutrientItemPrimitive> get copyWith;
}

/// @nodoc
abstract class $NutrientItemPrimitiveCopyWith<$Res> {
  factory $NutrientItemPrimitiveCopyWith(NutrientItemPrimitive value,
          $Res Function(NutrientItemPrimitive) then) =
      _$NutrientItemPrimitiveCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      String nutrientName,
      double nutrientPieces,
      double nutrientWeight,
      double nutrientVolume});
}

/// @nodoc
class _$NutrientItemPrimitiveCopyWithImpl<$Res>
    implements $NutrientItemPrimitiveCopyWith<$Res> {
  _$NutrientItemPrimitiveCopyWithImpl(this._value, this._then);

  final NutrientItemPrimitive _value;
  // ignore: unused_field
  final $Res Function(NutrientItemPrimitive) _then;

  @override
  $Res call({
    Object id = freezed,
    Object nutrientName = freezed,
    Object nutrientPieces = freezed,
    Object nutrientWeight = freezed,
    Object nutrientVolume = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      nutrientName: nutrientName == freezed
          ? _value.nutrientName
          : nutrientName as String,
      nutrientPieces: nutrientPieces == freezed
          ? _value.nutrientPieces
          : nutrientPieces as double,
      nutrientWeight: nutrientWeight == freezed
          ? _value.nutrientWeight
          : nutrientWeight as double,
      nutrientVolume: nutrientVolume == freezed
          ? _value.nutrientVolume
          : nutrientVolume as double,
    ));
  }
}

/// @nodoc
abstract class _$NutrientItemPrimitiveCopyWith<$Res>
    implements $NutrientItemPrimitiveCopyWith<$Res> {
  factory _$NutrientItemPrimitiveCopyWith(_NutrientItemPrimitive value,
          $Res Function(_NutrientItemPrimitive) then) =
      __$NutrientItemPrimitiveCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      String nutrientName,
      double nutrientPieces,
      double nutrientWeight,
      double nutrientVolume});
}

/// @nodoc
class __$NutrientItemPrimitiveCopyWithImpl<$Res>
    extends _$NutrientItemPrimitiveCopyWithImpl<$Res>
    implements _$NutrientItemPrimitiveCopyWith<$Res> {
  __$NutrientItemPrimitiveCopyWithImpl(_NutrientItemPrimitive _value,
      $Res Function(_NutrientItemPrimitive) _then)
      : super(_value, (v) => _then(v as _NutrientItemPrimitive));

  @override
  _NutrientItemPrimitive get _value => super._value as _NutrientItemPrimitive;

  @override
  $Res call({
    Object id = freezed,
    Object nutrientName = freezed,
    Object nutrientPieces = freezed,
    Object nutrientWeight = freezed,
    Object nutrientVolume = freezed,
  }) {
    return _then(_NutrientItemPrimitive(
      id: id == freezed ? _value.id : id as UniqueId,
      nutrientName: nutrientName == freezed
          ? _value.nutrientName
          : nutrientName as String,
      nutrientPieces: nutrientPieces == freezed
          ? _value.nutrientPieces
          : nutrientPieces as double,
      nutrientWeight: nutrientWeight == freezed
          ? _value.nutrientWeight
          : nutrientWeight as double,
      nutrientVolume: nutrientVolume == freezed
          ? _value.nutrientVolume
          : nutrientVolume as double,
    ));
  }
}

/// @nodoc
class _$_NutrientItemPrimitive extends _NutrientItemPrimitive
    with DiagnosticableTreeMixin {
  const _$_NutrientItemPrimitive(
      {@required this.id,
      @required this.nutrientName,
      @required this.nutrientPieces,
      @required this.nutrientWeight,
      @required this.nutrientVolume})
      : assert(id != null),
        assert(nutrientName != null),
        assert(nutrientPieces != null),
        assert(nutrientWeight != null),
        assert(nutrientVolume != null),
        super._();

  @override
  final UniqueId id;
  @override
  final String nutrientName;
  @override
  final double nutrientPieces;
  @override
  final double nutrientWeight;
  @override
  final double nutrientVolume;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NutrientItemPrimitive(id: $id, nutrientName: $nutrientName, nutrientPieces: $nutrientPieces, nutrientWeight: $nutrientWeight, nutrientVolume: $nutrientVolume)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NutrientItemPrimitive'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('nutrientName', nutrientName))
      ..add(DiagnosticsProperty('nutrientPieces', nutrientPieces))
      ..add(DiagnosticsProperty('nutrientWeight', nutrientWeight))
      ..add(DiagnosticsProperty('nutrientVolume', nutrientVolume));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NutrientItemPrimitive &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.nutrientName, nutrientName) ||
                const DeepCollectionEquality()
                    .equals(other.nutrientName, nutrientName)) &&
            (identical(other.nutrientPieces, nutrientPieces) ||
                const DeepCollectionEquality()
                    .equals(other.nutrientPieces, nutrientPieces)) &&
            (identical(other.nutrientWeight, nutrientWeight) ||
                const DeepCollectionEquality()
                    .equals(other.nutrientWeight, nutrientWeight)) &&
            (identical(other.nutrientVolume, nutrientVolume) ||
                const DeepCollectionEquality()
                    .equals(other.nutrientVolume, nutrientVolume)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(nutrientName) ^
      const DeepCollectionEquality().hash(nutrientPieces) ^
      const DeepCollectionEquality().hash(nutrientWeight) ^
      const DeepCollectionEquality().hash(nutrientVolume);

  @JsonKey(ignore: true)
  @override
  _$NutrientItemPrimitiveCopyWith<_NutrientItemPrimitive> get copyWith =>
      __$NutrientItemPrimitiveCopyWithImpl<_NutrientItemPrimitive>(
          this, _$identity);
}

abstract class _NutrientItemPrimitive extends NutrientItemPrimitive {
  const _NutrientItemPrimitive._() : super._();
  const factory _NutrientItemPrimitive(
      {@required UniqueId id,
      @required String nutrientName,
      @required double nutrientPieces,
      @required double nutrientWeight,
      @required double nutrientVolume}) = _$_NutrientItemPrimitive;

  @override
  UniqueId get id;
  @override
  String get nutrientName;
  @override
  double get nutrientPieces;
  @override
  double get nutrientWeight;
  @override
  double get nutrientVolume;
  @override
  @JsonKey(ignore: true)
  _$NutrientItemPrimitiveCopyWith<_NutrientItemPrimitive> get copyWith;
}
