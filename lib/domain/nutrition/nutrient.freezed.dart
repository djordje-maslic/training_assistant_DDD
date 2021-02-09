// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'nutrient.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$NutrientTearOff {
  const _$NutrientTearOff();

// ignore: unused_element
  _Nutrient call(
      {@required UniqueId id,
      @required NutrientName nutrientName,
      @required NutrientPieces nutrientPieces,
      @required NutrientWeight nutrientWeight,
      @required NutrientVolume nutrientVolume}) {
    return _Nutrient(
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
const $Nutrient = _$NutrientTearOff();

/// @nodoc
mixin _$Nutrient {
  UniqueId get id;
  NutrientName get nutrientName;
  NutrientPieces get nutrientPieces;
  NutrientWeight get nutrientWeight;
  NutrientVolume get nutrientVolume;

  @JsonKey(ignore: true)
  $NutrientCopyWith<Nutrient> get copyWith;
}

/// @nodoc
abstract class $NutrientCopyWith<$Res> {
  factory $NutrientCopyWith(Nutrient value, $Res Function(Nutrient) then) =
      _$NutrientCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      NutrientName nutrientName,
      NutrientPieces nutrientPieces,
      NutrientWeight nutrientWeight,
      NutrientVolume nutrientVolume});
}

/// @nodoc
class _$NutrientCopyWithImpl<$Res> implements $NutrientCopyWith<$Res> {
  _$NutrientCopyWithImpl(this._value, this._then);

  final Nutrient _value;
  // ignore: unused_field
  final $Res Function(Nutrient) _then;

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
          : nutrientName as NutrientName,
      nutrientPieces: nutrientPieces == freezed
          ? _value.nutrientPieces
          : nutrientPieces as NutrientPieces,
      nutrientWeight: nutrientWeight == freezed
          ? _value.nutrientWeight
          : nutrientWeight as NutrientWeight,
      nutrientVolume: nutrientVolume == freezed
          ? _value.nutrientVolume
          : nutrientVolume as NutrientVolume,
    ));
  }
}

/// @nodoc
abstract class _$NutrientCopyWith<$Res> implements $NutrientCopyWith<$Res> {
  factory _$NutrientCopyWith(_Nutrient value, $Res Function(_Nutrient) then) =
      __$NutrientCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      NutrientName nutrientName,
      NutrientPieces nutrientPieces,
      NutrientWeight nutrientWeight,
      NutrientVolume nutrientVolume});
}

/// @nodoc
class __$NutrientCopyWithImpl<$Res> extends _$NutrientCopyWithImpl<$Res>
    implements _$NutrientCopyWith<$Res> {
  __$NutrientCopyWithImpl(_Nutrient _value, $Res Function(_Nutrient) _then)
      : super(_value, (v) => _then(v as _Nutrient));

  @override
  _Nutrient get _value => super._value as _Nutrient;

  @override
  $Res call({
    Object id = freezed,
    Object nutrientName = freezed,
    Object nutrientPieces = freezed,
    Object nutrientWeight = freezed,
    Object nutrientVolume = freezed,
  }) {
    return _then(_Nutrient(
      id: id == freezed ? _value.id : id as UniqueId,
      nutrientName: nutrientName == freezed
          ? _value.nutrientName
          : nutrientName as NutrientName,
      nutrientPieces: nutrientPieces == freezed
          ? _value.nutrientPieces
          : nutrientPieces as NutrientPieces,
      nutrientWeight: nutrientWeight == freezed
          ? _value.nutrientWeight
          : nutrientWeight as NutrientWeight,
      nutrientVolume: nutrientVolume == freezed
          ? _value.nutrientVolume
          : nutrientVolume as NutrientVolume,
    ));
  }
}

/// @nodoc
class _$_Nutrient extends _Nutrient {
  const _$_Nutrient(
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
  final NutrientName nutrientName;
  @override
  final NutrientPieces nutrientPieces;
  @override
  final NutrientWeight nutrientWeight;
  @override
  final NutrientVolume nutrientVolume;

  @override
  String toString() {
    return 'Nutrient(id: $id, nutrientName: $nutrientName, nutrientPieces: $nutrientPieces, nutrientWeight: $nutrientWeight, nutrientVolume: $nutrientVolume)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Nutrient &&
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
  _$NutrientCopyWith<_Nutrient> get copyWith =>
      __$NutrientCopyWithImpl<_Nutrient>(this, _$identity);
}

abstract class _Nutrient extends Nutrient {
  const _Nutrient._() : super._();
  const factory _Nutrient(
      {@required UniqueId id,
      @required NutrientName nutrientName,
      @required NutrientPieces nutrientPieces,
      @required NutrientWeight nutrientWeight,
      @required NutrientVolume nutrientVolume}) = _$_Nutrient;

  @override
  UniqueId get id;
  @override
  NutrientName get nutrientName;
  @override
  NutrientPieces get nutrientPieces;
  @override
  NutrientWeight get nutrientWeight;
  @override
  NutrientVolume get nutrientVolume;
  @override
  @JsonKey(ignore: true)
  _$NutrientCopyWith<_Nutrient> get copyWith;
}
