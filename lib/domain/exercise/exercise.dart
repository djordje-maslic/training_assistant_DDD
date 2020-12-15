import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
import 'package:reminder_app/domain/core/failures.dart';
import 'package:reminder_app/domain/core/value_objects.dart';
import 'package:reminder_app/domain/exercise/sets.dart';
import 'package:reminder_app/domain/exercise/value_objects.dart';

part 'exercise.freezed.dart';

@freezed
abstract class Exercise implements _$Exercise {
  const Exercise._();


  const factory Exercise({
    @required UniqueId id,
    @required UniqueId userId,
    @required ExerciseName name,
    @required ExerciseDate date,
    @required NumberOfSets numberOfSets,
    @required SetsList<Sets> setsList,
  }) = _Exercise;

  factory Exercise.empty() => Exercise(
        id: UniqueId(),
        userId: UniqueId.withUniqueString(''),
        name: ExerciseName(''),
        date: ExerciseDate(DateTime.now().millisecondsSinceEpoch),
        numberOfSets: NumberOfSets(0),
        setsList: SetsList(emptyList()),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return name.failureOrUnit
        .andThen(date.failureOrUnit)
        .andThen(numberOfSets.failureOrUnit)
        .andThen(setsList.failureOrUnit)
        .andThen(setsList
            .getOrCrash()
            .map((series) => series.failureOption)
            .filter((o) => o.isSome())
            .getOrElse(0, (_) => none())
            .fold(() => right(unit), (f) => left(f)))
        .fold((f) => some(f), (_) => none());
  }
}
