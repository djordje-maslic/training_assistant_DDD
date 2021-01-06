import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reminder_app/domain/auth/value_objects.dart';
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

  const factory ExerciseDto(
          {@JsonKey(ignore: true) String id,
          @required String userId,
          @required String userName,
          @required String name,
          @required int date,
          @required List<SetsDto> setsList,
          @required @ServerTimestampConverter() FieldValue serverTimeStamp}) =
      _ExerciseDto;

  factory ExerciseDto.fromDomain(Exercise exercise) {
    return ExerciseDto(
      id: exercise.id.getOrCrash(),
      userId: exercise.userId.getOrCrash(),
      userName: exercise.userName.getOrCrash(),
      name: exercise.name.getOrCrash(),
      date: exercise.date.getOrCrash(),
      setsList: exercise.setsList
          .getOrCrash()
          .asList()
          .map((sets) => SetsDto.fromDomain(sets))
          .toList(),
      serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  Exercise toDomain() {
    return Exercise(
      id: UniqueId.withUniqueString(id),
      userId: UniqueId.withUniqueString(userId),
      userName: UserName(userName),
      name: ExerciseName(name),
      date: ExerciseDate(date),
      setsList:
          SetsList(setsList.map((dto) => dto.toDomain()).toImmutableList()),
    );
  }

  factory ExerciseDto.fromJson(Map<String, dynamic> json) =>
      _$ExerciseDtoFromJson(json);

  factory ExerciseDto.fromFirestore(DocumentSnapshot doc) {
    return ExerciseDto.fromJson(doc.data()).copyWith(id: doc.id);
  }
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
    @required int goodReps,
    @required int badReps,
    @required double weights,
    @required double distance,
    @required int setDuration,
  }) = _SetsDto;

  factory SetsDto.fromDomain(Sets sets) {
    return SetsDto(
      id: sets.id.getOrCrash(),
      number: sets.number.getOrCrash(),
      goodReps: sets.goodReps.getOrCrash(),
      badReps: sets.badReps.getOrCrash(),
      weights: sets.weights.getOrCrash(),
      distance: sets.distance.getOrCrash(),
      setDuration: sets.setDuration.getOrCrash(),
    );
  }

  Sets toDomain() {
    return Sets(
      id: UniqueId.withUniqueString(id),
      number: RepetitionsNumb(number),
      goodReps: GoodReps(goodReps),
      badReps: BadReps(badReps),
      weights: Weights(weights),
      distance: Distance(distance),
      setDuration: SetDuration(setDuration),

    );
  }

  factory SetsDto.fromJson(Map<String, dynamic> json) =>
      _$SetsDtoFromJson(json);
}
