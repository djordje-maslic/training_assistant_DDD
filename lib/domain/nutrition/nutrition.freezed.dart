// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'nutrition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$NutritionTearOff {
  const _$NutritionTearOff();

// ignore: unused_element
  _Nutrition call(
      {@required UniqueId id,
      @required UniqueId userId,
      @required UserName userName,
      @required NutritionName nutritionName,
      @required NutritionDateTime nutritionDateTime,
      @required NutrientsList<Nutrient> nutrientsList}) {
    return _Nutrition(
      id: id,
      userId: userId,
      userName: userName,
      nutritionName: nutritionName,
      nutritionDateTime: nutritionDateTime,
      nutrientsList: nutrientsList,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Nutrition = _$NutritionTearOff();

/// @nodoc
mixin _$Nutrition {
  UniqueId get id;
  UniqueId get userId;
  UserName get userName;
  NutritionName get nutritionName;
  NutritionDateTime get nutritionDateTime;
  NutrientsList<Nutrient> get nutrientsList;

  @JsonKey(ignore: true)
  $NutritionCopyWith<Nutrition> get copyWith;
}

/// @nodoc
abstract class $NutritionCopyWith<$Res> {
  factory $NutritionCopyWith(Nutrition value, $Res Function(Nutrition) then) =
      _$NutritionCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      UniqueId userId,
      UserName userName,
      NutritionName nutritionName,
      NutritionDateTime nutritionDateTime,
      NutrientsList<Nutrient> nutrientsList});
}

/// @nodoc
class _$NutritionCopyWithImpl<$Res> implements $NutritionCopyWith<$Res> {
  _$NutritionCopyWithImpl(this._value, this._then);

  final Nutrition _value;
  // ignore: unused_field
  final $Res Function(Nutrition) _then;

  @override
  $Res call({
    Object id = freezed,
    Object userId = freezed,
    Object userName = freezed,
    Object nutritionName = freezed,
    Object nutritionDateTime = freezed,
    Object nutrientsList = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      userId: userId == freezed ? _value.userId : userId as UniqueId,
      userName: userName == freezed ? _value.userName : userName as UserName,
      nutritionName: nutritionName == freezed
          ? _value.nutritionName
          : nutritionName as NutritionName,
      nutritionDateTime: nutritionDateTime == freezed
          ? _value.nutritionDateTime
          : nutritionDateTime as NutritionDateTime,
      nutrientsList: nutrientsList == freezed
          ? _value.nutrientsList
          : nutrientsList as NutrientsList<Nutrient>,
    ));
  }
}

/// @nodoc
abstract class _$NutritionCopyWith<$Res> implements $NutritionCopyWith<$Res> {
  factory _$NutritionCopyWith(
          _Nutrition value, $Res Function(_Nutrition) then) =
      __$NutritionCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      UniqueId userId,
      UserName userName,
      NutritionName nutritionName,
      NutritionDateTime nutritionDateTime,
      NutrientsList<Nutrient> nutrientsList});
}

/// @nodoc
class __$NutritionCopyWithImpl<$Res> extends _$NutritionCopyWithImpl<$Res>
    implements _$NutritionCopyWith<$Res> {
  __$NutritionCopyWithImpl(_Nutrition _value, $Res Function(_Nutrition) _then)
      : super(_value, (v) => _then(v as _Nutrition));

  @override
  _Nutrition get _value => super._value as _Nutrition;

  @override
  $Res call({
    Object id = freezed,
    Object userId = freezed,
    Object userName = freezed,
    Object nutritionName = freezed,
    Object nutritionDateTime = freezed,
    Object nutrientsList = freezed,
  }) {
    return _then(_Nutrition(
      id: id == freezed ? _value.id : id as UniqueId,
      userId: userId == freezed ? _value.userId : userId as UniqueId,
      userName: userName == freezed ? _value.userName : userName as UserName,
      nutritionName: nutritionName == freezed
          ? _value.nutritionName
          : nutritionName as NutritionName,
      nutritionDateTime: nutritionDateTime == freezed
          ? _value.nutritionDateTime
          : nutritionDateTime as NutritionDateTime,
      nutrientsList: nutrientsList == freezed
          ? _value.nutrientsList
          : nutrientsList as NutrientsList<Nutrient>,
    ));
  }
}

/// @nodoc
class _$_Nutrition extends _Nutrition {
  const _$_Nutrition(
      {@required this.id,
      @required this.userId,
      @required this.userName,
      @required this.nutritionName,
      @required this.nutritionDateTime,
      @required this.nutrientsList})
      : assert(id != null),
        assert(userId != null),
        assert(userName != null),
        assert(nutritionName != null),
        assert(nutritionDateTime != null),
        assert(nutrientsList != null),
        super._();

  @override
  final UniqueId id;
  @override
  final UniqueId userId;
  @override
  final UserName userName;
  @override
  final NutritionName nutritionName;
  @override
  final NutritionDateTime nutritionDateTime;
  @override
  final NutrientsList<Nutrient> nutrientsList;

  @override
  String toString() {
    return 'Nutrition(id: $id, userId: $userId, userName: $userName, nutritionName: $nutritionName, nutritionDateTime: $nutritionDateTime, nutrientsList: $nutrientsList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Nutrition &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.nutritionName, nutritionName) ||
                const DeepCollectionEquality()
                    .equals(other.nutritionName, nutritionName)) &&
            (identical(other.nutritionDateTime, nutritionDateTime) ||
                const DeepCollectionEquality()
                    .equals(other.nutritionDateTime, nutritionDateTime)) &&
            (identical(other.nutrientsList, nutrientsList) ||
                const DeepCollectionEquality()
                    .equals(other.nutrientsList, nutrientsList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(nutritionName) ^
      const DeepCollectionEquality().hash(nutritionDateTime) ^
      const DeepCollectionEquality().hash(nutrientsList);

  @JsonKey(ignore: true)
  @override
  _$NutritionCopyWith<_Nutrition> get copyWith =>
      __$NutritionCopyWithImpl<_Nutrition>(this, _$identity);
}

abstract class _Nutrition extends Nutrition {
  const _Nutrition._() : super._();
  const factory _Nutrition(
      {@required UniqueId id,
      @required UniqueId userId,
      @required UserName userName,
      @required NutritionName nutritionName,
      @required NutritionDateTime nutritionDateTime,
      @required NutrientsList<Nutrient> nutrientsList}) = _$_Nutrition;

  @override
  UniqueId get id;
  @override
  UniqueId get userId;
  @override
  UserName get userName;
  @override
  NutritionName get nutritionName;
  @override
  NutritionDateTime get nutritionDateTime;
  @override
  NutrientsList<Nutrient> get nutrientsList;
  @override
  @JsonKey(ignore: true)
  _$NutritionCopyWith<_Nutrition> get copyWith;
}
