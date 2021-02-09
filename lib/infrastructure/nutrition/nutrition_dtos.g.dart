// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nutrition_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NutritionDto _$_$_NutritionDtoFromJson(Map<String, dynamic> json) {
  return _$_NutritionDto(
    userId: json['userId'] as String,
    userName: json['userName'] as String,
    nutritionName: json['nutritionName'] as String,
    nutritionDateTime: json['nutritionDateTime'] as int,
    nutrientsList: (json['nutrientsList'] as List)
        ?.map((e) =>
            e == null ? null : NutrientDto.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    serverTimeStamp:
        const ServerTimestampConverter().fromJson(json['serverTimeStamp']),
  );
}

Map<String, dynamic> _$_$_NutritionDtoToJson(_$_NutritionDto instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'userName': instance.userName,
      'nutritionName': instance.nutritionName,
      'nutritionDateTime': instance.nutritionDateTime,
      'nutrientsList':
          instance.nutrientsList?.map((e) => e?.toJson())?.toList(),
      'serverTimeStamp':
          const ServerTimestampConverter().toJson(instance.serverTimeStamp),
    };

_$_NutrientDto _$_$_NutrientDtoFromJson(Map<String, dynamic> json) {
  return _$_NutrientDto(
    id: json['id'] as String,
    nutrientName: json['nutrientName'] as String,
    nutrientPieces: (json['nutrientPieces'] as num)?.toDouble(),
    nutrientWeight: (json['nutrientWeight'] as num)?.toDouble(),
    nutrientVolume: (json['nutrientVolume'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$_$_NutrientDtoToJson(_$_NutrientDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nutrientName': instance.nutrientName,
      'nutrientPieces': instance.nutrientPieces,
      'nutrientWeight': instance.nutrientWeight,
      'nutrientVolume': instance.nutrientVolume,
    };
