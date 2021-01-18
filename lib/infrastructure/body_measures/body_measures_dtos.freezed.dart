// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'body_measures_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
BodyMeasuresDto _$BodyMeasuresDtoFromJson(Map<String, dynamic> json) {
  return _BodyMeasuresDto.fromJson(json);
}

/// @nodoc
class _$BodyMeasuresDtoTearOff {
  const _$BodyMeasuresDtoTearOff();

// ignore: unused_element
  _BodyMeasuresDto call(
      {@JsonKey(ignore: true) String id,
      @required String userId,
      @required int bodyMeasuresDate,
      @required double bodyMeasuresWeight,
      @required double bodyMeasuresHeight}) {
    return _BodyMeasuresDto(
      id: id,
      userId: userId,
      bodyMeasuresDate: bodyMeasuresDate,
      bodyMeasuresWeight: bodyMeasuresWeight,
      bodyMeasuresHeight: bodyMeasuresHeight,
    );
  }

// ignore: unused_element
  BodyMeasuresDto fromJson(Map<String, Object> json) {
    return BodyMeasuresDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $BodyMeasuresDto = _$BodyMeasuresDtoTearOff();

/// @nodoc
mixin _$BodyMeasuresDto {
  @JsonKey(ignore: true)
  String get id;
  String get userId;
  int get bodyMeasuresDate;
  double get bodyMeasuresWeight;
  double get bodyMeasuresHeight;

  Map<String, dynamic> toJson();
  $BodyMeasuresDtoCopyWith<BodyMeasuresDto> get copyWith;
}

/// @nodoc
abstract class $BodyMeasuresDtoCopyWith<$Res> {
  factory $BodyMeasuresDtoCopyWith(
          BodyMeasuresDto value, $Res Function(BodyMeasuresDto) then) =
      _$BodyMeasuresDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String id,
      String userId,
      int bodyMeasuresDate,
      double bodyMeasuresWeight,
      double bodyMeasuresHeight});
}

/// @nodoc
class _$BodyMeasuresDtoCopyWithImpl<$Res>
    implements $BodyMeasuresDtoCopyWith<$Res> {
  _$BodyMeasuresDtoCopyWithImpl(this._value, this._then);

  final BodyMeasuresDto _value;
  // ignore: unused_field
  final $Res Function(BodyMeasuresDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object userId = freezed,
    Object bodyMeasuresDate = freezed,
    Object bodyMeasuresWeight = freezed,
    Object bodyMeasuresHeight = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      userId: userId == freezed ? _value.userId : userId as String,
      bodyMeasuresDate: bodyMeasuresDate == freezed
          ? _value.bodyMeasuresDate
          : bodyMeasuresDate as int,
      bodyMeasuresWeight: bodyMeasuresWeight == freezed
          ? _value.bodyMeasuresWeight
          : bodyMeasuresWeight as double,
      bodyMeasuresHeight: bodyMeasuresHeight == freezed
          ? _value.bodyMeasuresHeight
          : bodyMeasuresHeight as double,
    ));
  }
}

/// @nodoc
abstract class _$BodyMeasuresDtoCopyWith<$Res>
    implements $BodyMeasuresDtoCopyWith<$Res> {
  factory _$BodyMeasuresDtoCopyWith(
          _BodyMeasuresDto value, $Res Function(_BodyMeasuresDto) then) =
      __$BodyMeasuresDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String id,
      String userId,
      int bodyMeasuresDate,
      double bodyMeasuresWeight,
      double bodyMeasuresHeight});
}

/// @nodoc
class __$BodyMeasuresDtoCopyWithImpl<$Res>
    extends _$BodyMeasuresDtoCopyWithImpl<$Res>
    implements _$BodyMeasuresDtoCopyWith<$Res> {
  __$BodyMeasuresDtoCopyWithImpl(
      _BodyMeasuresDto _value, $Res Function(_BodyMeasuresDto) _then)
      : super(_value, (v) => _then(v as _BodyMeasuresDto));

  @override
  _BodyMeasuresDto get _value => super._value as _BodyMeasuresDto;

  @override
  $Res call({
    Object id = freezed,
    Object userId = freezed,
    Object bodyMeasuresDate = freezed,
    Object bodyMeasuresWeight = freezed,
    Object bodyMeasuresHeight = freezed,
  }) {
    return _then(_BodyMeasuresDto(
      id: id == freezed ? _value.id : id as String,
      userId: userId == freezed ? _value.userId : userId as String,
      bodyMeasuresDate: bodyMeasuresDate == freezed
          ? _value.bodyMeasuresDate
          : bodyMeasuresDate as int,
      bodyMeasuresWeight: bodyMeasuresWeight == freezed
          ? _value.bodyMeasuresWeight
          : bodyMeasuresWeight as double,
      bodyMeasuresHeight: bodyMeasuresHeight == freezed
          ? _value.bodyMeasuresHeight
          : bodyMeasuresHeight as double,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_BodyMeasuresDto extends _BodyMeasuresDto {
  const _$_BodyMeasuresDto(
      {@JsonKey(ignore: true) this.id,
      @required this.userId,
      @required this.bodyMeasuresDate,
      @required this.bodyMeasuresWeight,
      @required this.bodyMeasuresHeight})
      : assert(userId != null),
        assert(bodyMeasuresDate != null),
        assert(bodyMeasuresWeight != null),
        assert(bodyMeasuresHeight != null),
        super._();

  factory _$_BodyMeasuresDto.fromJson(Map<String, dynamic> json) =>
      _$_$_BodyMeasuresDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final String userId;
  @override
  final int bodyMeasuresDate;
  @override
  final double bodyMeasuresWeight;
  @override
  final double bodyMeasuresHeight;

  @override
  String toString() {
    return 'BodyMeasuresDto(id: $id, userId: $userId, bodyMeasuresDate: $bodyMeasuresDate, bodyMeasuresWeight: $bodyMeasuresWeight, bodyMeasuresHeight: $bodyMeasuresHeight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BodyMeasuresDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.bodyMeasuresDate, bodyMeasuresDate) ||
                const DeepCollectionEquality()
                    .equals(other.bodyMeasuresDate, bodyMeasuresDate)) &&
            (identical(other.bodyMeasuresWeight, bodyMeasuresWeight) ||
                const DeepCollectionEquality()
                    .equals(other.bodyMeasuresWeight, bodyMeasuresWeight)) &&
            (identical(other.bodyMeasuresHeight, bodyMeasuresHeight) ||
                const DeepCollectionEquality()
                    .equals(other.bodyMeasuresHeight, bodyMeasuresHeight)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(bodyMeasuresDate) ^
      const DeepCollectionEquality().hash(bodyMeasuresWeight) ^
      const DeepCollectionEquality().hash(bodyMeasuresHeight);

  @override
  _$BodyMeasuresDtoCopyWith<_BodyMeasuresDto> get copyWith =>
      __$BodyMeasuresDtoCopyWithImpl<_BodyMeasuresDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BodyMeasuresDtoToJson(this);
  }
}

abstract class _BodyMeasuresDto extends BodyMeasuresDto {
  const _BodyMeasuresDto._() : super._();
  const factory _BodyMeasuresDto(
      {@JsonKey(ignore: true) String id,
      @required String userId,
      @required int bodyMeasuresDate,
      @required double bodyMeasuresWeight,
      @required double bodyMeasuresHeight}) = _$_BodyMeasuresDto;

  factory _BodyMeasuresDto.fromJson(Map<String, dynamic> json) =
      _$_BodyMeasuresDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  String get userId;
  @override
  int get bodyMeasuresDate;
  @override
  double get bodyMeasuresWeight;
  @override
  double get bodyMeasuresHeight;
  @override
  _$BodyMeasuresDtoCopyWith<_BodyMeasuresDto> get copyWith;
}
