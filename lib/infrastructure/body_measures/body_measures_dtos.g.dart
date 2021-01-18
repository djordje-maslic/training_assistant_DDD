// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'body_measures_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BodyMeasuresDto _$_$_BodyMeasuresDtoFromJson(Map<String, dynamic> json) {
  return _$_BodyMeasuresDto(
    userId: json['userId'] as String,
    bodyMeasuresDate: json['bodyMeasuresDate'] as int,
    bodyMeasuresWeight: (json['bodyMeasuresWeight'] as num)?.toDouble(),
    bodyMeasuresHeight: (json['bodyMeasuresHeight'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$_$_BodyMeasuresDtoToJson(_$_BodyMeasuresDto instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'bodyMeasuresDate': instance.bodyMeasuresDate,
      'bodyMeasuresWeight': instance.bodyMeasuresWeight,
      'bodyMeasuresHeight': instance.bodyMeasuresHeight,
    };
