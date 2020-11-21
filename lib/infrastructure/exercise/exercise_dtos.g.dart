// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExerciseDto _$_$_ExerciseDtoFromJson(Map<String, dynamic> json) {
  return _$_ExerciseDto(
    name: json['name'] as String,
    date: json['date'] as int,
    setsNumb: json['setsNumb'] as int,
    setsList: (json['setsList'] as List)
        ?.map((e) =>
            e == null ? null : SetsDto.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    serverTimeStamp:
        const ServerTimestampConverter().fromJson(json['serverTimeStamp']),
  );
}

Map<String, dynamic> _$_$_ExerciseDtoToJson(_$_ExerciseDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'date': instance.date,
      'setsNumb': instance.setsNumb,
      'setsList': instance.setsList,
      'serverTimeStamp':
          const ServerTimestampConverter().toJson(instance.serverTimeStamp),
    };

_$_SetsDto _$_$_SetsDtoFromJson(Map<String, dynamic> json) {
  return _$_SetsDto(
    id: json['id'] as String,
    number: json['number'] as int,
  );
}

Map<String, dynamic> _$_$_SetsDtoToJson(_$_SetsDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
    };
