// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'nutrition_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
NutritionDto _$NutritionDtoFromJson(Map<String, dynamic> json) {
  return _NutritionDto.fromJson(json);
}

/// @nodoc
class _$NutritionDtoTearOff {
  const _$NutritionDtoTearOff();

// ignore: unused_element
  _NutritionDto call(
      {@JsonKey(ignore: true) String id,
      @required String userId,
      @required String userName,
      @required String nutritionName,
      @required int nutritionDateTime,
      @required List<NutrientDto> nutrientsList,
      @required @ServerTimestampConverter() FieldValue serverTimeStamp}) {
    return _NutritionDto(
      id: id,
      userId: userId,
      userName: userName,
      nutritionName: nutritionName,
      nutritionDateTime: nutritionDateTime,
      nutrientsList: nutrientsList,
      serverTimeStamp: serverTimeStamp,
    );
  }

// ignore: unused_element
  NutritionDto fromJson(Map<String, Object> json) {
    return NutritionDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $NutritionDto = _$NutritionDtoTearOff();

/// @nodoc
mixin _$NutritionDto {
  @JsonKey(ignore: true)
  String get id;
  String get userId;
  String get userName;
  String get nutritionName;
  int get nutritionDateTime;
  List<NutrientDto> get nutrientsList;
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $NutritionDtoCopyWith<NutritionDto> get copyWith;
}

/// @nodoc
abstract class $NutritionDtoCopyWith<$Res> {
  factory $NutritionDtoCopyWith(
          NutritionDto value, $Res Function(NutritionDto) then) =
      _$NutritionDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String id,
      String userId,
      String userName,
      String nutritionName,
      int nutritionDateTime,
      List<NutrientDto> nutrientsList,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

/// @nodoc
class _$NutritionDtoCopyWithImpl<$Res> implements $NutritionDtoCopyWith<$Res> {
  _$NutritionDtoCopyWithImpl(this._value, this._then);

  final NutritionDto _value;
  // ignore: unused_field
  final $Res Function(NutritionDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object userId = freezed,
    Object userName = freezed,
    Object nutritionName = freezed,
    Object nutritionDateTime = freezed,
    Object nutrientsList = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      userId: userId == freezed ? _value.userId : userId as String,
      userName: userName == freezed ? _value.userName : userName as String,
      nutritionName: nutritionName == freezed
          ? _value.nutritionName
          : nutritionName as String,
      nutritionDateTime: nutritionDateTime == freezed
          ? _value.nutritionDateTime
          : nutritionDateTime as int,
      nutrientsList: nutrientsList == freezed
          ? _value.nutrientsList
          : nutrientsList as List<NutrientDto>,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

/// @nodoc
abstract class _$NutritionDtoCopyWith<$Res>
    implements $NutritionDtoCopyWith<$Res> {
  factory _$NutritionDtoCopyWith(
          _NutritionDto value, $Res Function(_NutritionDto) then) =
      __$NutritionDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String id,
      String userId,
      String userName,
      String nutritionName,
      int nutritionDateTime,
      List<NutrientDto> nutrientsList,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

/// @nodoc
class __$NutritionDtoCopyWithImpl<$Res> extends _$NutritionDtoCopyWithImpl<$Res>
    implements _$NutritionDtoCopyWith<$Res> {
  __$NutritionDtoCopyWithImpl(
      _NutritionDto _value, $Res Function(_NutritionDto) _then)
      : super(_value, (v) => _then(v as _NutritionDto));

  @override
  _NutritionDto get _value => super._value as _NutritionDto;

  @override
  $Res call({
    Object id = freezed,
    Object userId = freezed,
    Object userName = freezed,
    Object nutritionName = freezed,
    Object nutritionDateTime = freezed,
    Object nutrientsList = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_NutritionDto(
      id: id == freezed ? _value.id : id as String,
      userId: userId == freezed ? _value.userId : userId as String,
      userName: userName == freezed ? _value.userName : userName as String,
      nutritionName: nutritionName == freezed
          ? _value.nutritionName
          : nutritionName as String,
      nutritionDateTime: nutritionDateTime == freezed
          ? _value.nutritionDateTime
          : nutritionDateTime as int,
      nutrientsList: nutrientsList == freezed
          ? _value.nutrientsList
          : nutrientsList as List<NutrientDto>,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_NutritionDto extends _NutritionDto {
  const _$_NutritionDto(
      {@JsonKey(ignore: true) this.id,
      @required this.userId,
      @required this.userName,
      @required this.nutritionName,
      @required this.nutritionDateTime,
      @required this.nutrientsList,
      @required @ServerTimestampConverter() this.serverTimeStamp})
      : assert(userId != null),
        assert(userName != null),
        assert(nutritionName != null),
        assert(nutritionDateTime != null),
        assert(nutrientsList != null),
        assert(serverTimeStamp != null),
        super._();

  factory _$_NutritionDto.fromJson(Map<String, dynamic> json) =>
      _$_$_NutritionDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final String userId;
  @override
  final String userName;
  @override
  final String nutritionName;
  @override
  final int nutritionDateTime;
  @override
  final List<NutrientDto> nutrientsList;
  @override
  @ServerTimestampConverter()
  final FieldValue serverTimeStamp;

  @override
  String toString() {
    return 'NutritionDto(id: $id, userId: $userId, userName: $userName, nutritionName: $nutritionName, nutritionDateTime: $nutritionDateTime, nutrientsList: $nutrientsList, serverTimeStamp: $serverTimeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NutritionDto &&
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
                    .equals(other.nutrientsList, nutrientsList)) &&
            (identical(other.serverTimeStamp, serverTimeStamp) ||
                const DeepCollectionEquality()
                    .equals(other.serverTimeStamp, serverTimeStamp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(nutritionName) ^
      const DeepCollectionEquality().hash(nutritionDateTime) ^
      const DeepCollectionEquality().hash(nutrientsList) ^
      const DeepCollectionEquality().hash(serverTimeStamp);

  @JsonKey(ignore: true)
  @override
  _$NutritionDtoCopyWith<_NutritionDto> get copyWith =>
      __$NutritionDtoCopyWithImpl<_NutritionDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NutritionDtoToJson(this);
  }
}

abstract class _NutritionDto extends NutritionDto {
  const _NutritionDto._() : super._();
  const factory _NutritionDto(
          {@JsonKey(ignore: true) String id,
          @required String userId,
          @required String userName,
          @required String nutritionName,
          @required int nutritionDateTime,
          @required List<NutrientDto> nutrientsList,
          @required @ServerTimestampConverter() FieldValue serverTimeStamp}) =
      _$_NutritionDto;

  factory _NutritionDto.fromJson(Map<String, dynamic> json) =
      _$_NutritionDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  String get userId;
  @override
  String get userName;
  @override
  String get nutritionName;
  @override
  int get nutritionDateTime;
  @override
  List<NutrientDto> get nutrientsList;
  @override
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;
  @override
  @JsonKey(ignore: true)
  _$NutritionDtoCopyWith<_NutritionDto> get copyWith;
}

NutrientDto _$NutrientDtoFromJson(Map<String, dynamic> json) {
  return _NutrientDto.fromJson(json);
}

/// @nodoc
class _$NutrientDtoTearOff {
  const _$NutrientDtoTearOff();

// ignore: unused_element
  _NutrientDto call(
      {@required String id,
      @required String nutrientName,
      @required double nutrientPieces,
      @required double nutrientWeight,
      @required double nutrientVolume}) {
    return _NutrientDto(
      id: id,
      nutrientName: nutrientName,
      nutrientPieces: nutrientPieces,
      nutrientWeight: nutrientWeight,
      nutrientVolume: nutrientVolume,
    );
  }

// ignore: unused_element
  NutrientDto fromJson(Map<String, Object> json) {
    return NutrientDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $NutrientDto = _$NutrientDtoTearOff();

/// @nodoc
mixin _$NutrientDto {
  String get id;
  String get nutrientName;
  double get nutrientPieces;
  double get nutrientWeight;
  double get nutrientVolume;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $NutrientDtoCopyWith<NutrientDto> get copyWith;
}

/// @nodoc
abstract class $NutrientDtoCopyWith<$Res> {
  factory $NutrientDtoCopyWith(
          NutrientDto value, $Res Function(NutrientDto) then) =
      _$NutrientDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String nutrientName,
      double nutrientPieces,
      double nutrientWeight,
      double nutrientVolume});
}

/// @nodoc
class _$NutrientDtoCopyWithImpl<$Res> implements $NutrientDtoCopyWith<$Res> {
  _$NutrientDtoCopyWithImpl(this._value, this._then);

  final NutrientDto _value;
  // ignore: unused_field
  final $Res Function(NutrientDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object nutrientName = freezed,
    Object nutrientPieces = freezed,
    Object nutrientWeight = freezed,
    Object nutrientVolume = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
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
abstract class _$NutrientDtoCopyWith<$Res>
    implements $NutrientDtoCopyWith<$Res> {
  factory _$NutrientDtoCopyWith(
          _NutrientDto value, $Res Function(_NutrientDto) then) =
      __$NutrientDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String nutrientName,
      double nutrientPieces,
      double nutrientWeight,
      double nutrientVolume});
}

/// @nodoc
class __$NutrientDtoCopyWithImpl<$Res> extends _$NutrientDtoCopyWithImpl<$Res>
    implements _$NutrientDtoCopyWith<$Res> {
  __$NutrientDtoCopyWithImpl(
      _NutrientDto _value, $Res Function(_NutrientDto) _then)
      : super(_value, (v) => _then(v as _NutrientDto));

  @override
  _NutrientDto get _value => super._value as _NutrientDto;

  @override
  $Res call({
    Object id = freezed,
    Object nutrientName = freezed,
    Object nutrientPieces = freezed,
    Object nutrientWeight = freezed,
    Object nutrientVolume = freezed,
  }) {
    return _then(_NutrientDto(
      id: id == freezed ? _value.id : id as String,
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

@JsonSerializable()

/// @nodoc
class _$_NutrientDto extends _NutrientDto {
  const _$_NutrientDto(
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

  factory _$_NutrientDto.fromJson(Map<String, dynamic> json) =>
      _$_$_NutrientDtoFromJson(json);

  @override
  final String id;
  @override
  final String nutrientName;
  @override
  final double nutrientPieces;
  @override
  final double nutrientWeight;
  @override
  final double nutrientVolume;

  @override
  String toString() {
    return 'NutrientDto(id: $id, nutrientName: $nutrientName, nutrientPieces: $nutrientPieces, nutrientWeight: $nutrientWeight, nutrientVolume: $nutrientVolume)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NutrientDto &&
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
  _$NutrientDtoCopyWith<_NutrientDto> get copyWith =>
      __$NutrientDtoCopyWithImpl<_NutrientDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NutrientDtoToJson(this);
  }
}

abstract class _NutrientDto extends NutrientDto {
  const _NutrientDto._() : super._();
  const factory _NutrientDto(
      {@required String id,
      @required String nutrientName,
      @required double nutrientPieces,
      @required double nutrientWeight,
      @required double nutrientVolume}) = _$_NutrientDto;

  factory _NutrientDto.fromJson(Map<String, dynamic> json) =
      _$_NutrientDto.fromJson;

  @override
  String get id;
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
  _$NutrientDtoCopyWith<_NutrientDto> get copyWith;
}
