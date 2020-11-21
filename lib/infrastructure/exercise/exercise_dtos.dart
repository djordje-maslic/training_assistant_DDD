import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reminder_app/domain/core/value_objects.dart';
import 'package:reminder_app/domain/exercise/exercise.dart';
import 'package:reminder_app/domain/exercise/sets.dart';
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
    @required int setsNumb,
    @required List<SetsDto> setsList,
    @required @ServerTimestampConverter() FieldValue serverTimeStamp
  }) = _ExerciseDto;

  factory ExerciseDto.fromDomain(Exercise exercise) {
    return ExerciseDto(
      id: exercise.id.getOrCrash(),
      name: exercise.name.getOrCrash(),
      date: exercise.date.getOrCrash(),
      setsNumb: exercise.numberOfSets.getOrCrash(),
      setsList: exercise.setsList
          .getOrCrash()
          .asList()
          .map((sets) => SetsDto.fromDomain(sets)).toList()
          ,
      serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  Exercise toDomain() {
    return Exercise(
      id: UniqueId.withUniqueString(id),
      name: ExerciseName(name),
      date: ExerciseDate(date),
      numberOfSets: NumberOfSets(setsNumb),
      setsList: SetsList(
          setsList.map((dto) => dto.toDomain()).toImmutableList()),
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
abstract class SetsDto implements _$SetsDto {
  const SetsDto._();

  const factory SetsDto({
    @required String id,
    @required int number,
  }) = _SetsDto;

  factory SetsDto.fromDomain(Sets sets) {
    return SetsDto(
      id: sets.id.getOrCrash(),
      number: sets.number.getOrCrash(),
    );
  }

  Sets toDomain() {
    return Sets(
        id: UniqueId.withUniqueString(id), number: RepetitionsNumb(number));
  }

  factory SetsDto.fromJson(Map<String, dynamic> json) =>
      _$SetsDtoFromJson(json);
}
