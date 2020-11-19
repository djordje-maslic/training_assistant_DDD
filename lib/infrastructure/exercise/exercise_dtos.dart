import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reminder_app/domain/core/value_objects.dart';
import 'package:reminder_app/domain/exercise/exercise.dart';
import 'package:reminder_app/domain/exercise/series.dart';
import 'package:reminder_app/domain/exercise/value_objects.dart';
import 'package:kt_dart/kt.dart';

part 'exercise_dtos.freezed.dart';

part 'exercise_dtos.g.dart';

@freezed
abstract class ExerciseDto implements _$ExerciseDto {
  const ExerciseDto._();

  const factory ExerciseDto({
    @JsonKey(ignore: true) String id,
    @required String name,
    @required int date,
    @required int seriesNumb,
    @required List<SeriesDto> repetitionsList,
    @required @ServerTimestampConverter() FieldValue serverTimeStamp
  }) = _ExerciseDto;

  factory ExerciseDto.fromDomain(Exercise exercise) {
    return ExerciseDto(
      id: exercise.id.getOrCrash(),
      name: exercise.name.getOrCrash(),
      date: exercise.date.getOrCrash(),
      seriesNumb: exercise.seriesNumb.getOrCrash(),
      repetitionsList: exercise.repetitionsList
          .getOrCrash()
          .asList()
          .map((series) => SeriesDto.fromDomain(series)).toList()
          ,
      serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  Exercise toDomain() {
    return Exercise(
      id: UniqueId.withUniqueString(id),
      name: ExerciseName(name),
      date: ExerciseDate(date),
      seriesNumb: SeriesNumb(seriesNumb),
      repetitionsList: RepetitionsList(
          repetitionsList.map((dto) => dto.toDomain()).toImmutableList()),
    );
  }

  factory ExerciseDto.fromJson(Map<String, dynamic> json) =>
      _$ExerciseDtoFromJson(json);

  factory ExerciseDto.fromFirestore(DocumentSnapshot doc){
   return   ExerciseDto.fromJson(doc.data()).copyWith(id: doc.id);}
}

class ServerTimestampConverter implements JsonConverter<FieldValue, Object> {
  const ServerTimestampConverter();

  @override
  FieldValue fromJson(Object json) {
    return FieldValue.serverTimestamp();
  }
  @override
  Object toJson(FieldValue fieldValue) => fieldValue;
}

@freezed
abstract class SeriesDto implements _$SeriesDto {
  const SeriesDto._();

  const factory SeriesDto({
    @required String id,
    @required int number,
  }) = _SeriesDto;

  factory SeriesDto.fromDomain(Series series) {
    return SeriesDto(
      id: series.id.getOrCrash(),
      number: series.number.getOrCrash(),
    );
  }

  Series toDomain() {
    return Series(
        id: UniqueId.withUniqueString(id), number: RepetitionsNumb(number));
  }

  factory SeriesDto.fromJson(Map<String, dynamic> json) =>
      _$SeriesDtoFromJson(json);
}
