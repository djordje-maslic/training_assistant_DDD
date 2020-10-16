// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExerciseDto _$_$_ExerciseDtoFromJson(Map<String, dynamic> json) {
  return _$_ExerciseDto(
    name: json['name'] as String,
    date: json['date'] as int,
    seriesNumb: json['seriesNumb'] as int,
    repetitionsList: (json['repetitionsList'] as List)
        ?.map((e) =>
            e == null ? null : SeriesDto.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    serverTimeStamp:
        const ServerTimestampConverter().fromJson(json['serverTimeStamp']),
  );
}

Map<String, dynamic> _$_$_ExerciseDtoToJson(_$_ExerciseDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'date': instance.date,
      'seriesNumb': instance.seriesNumb,
      'repetitionsList': instance.repetitionsList,
      'serverTimeStamp':
          const ServerTimestampConverter().toJson(instance.serverTimeStamp),
    };

_$_SeriesDto _$_$_SeriesDtoFromJson(Map<String, dynamic> json) {
  return _$_SeriesDto(
    id: json['id'] as String,
    number: json['number'] as int,
  );
}

Map<String, dynamic> _$_$_SeriesDtoToJson(_$_SeriesDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
    };
