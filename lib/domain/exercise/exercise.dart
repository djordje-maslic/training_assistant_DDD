import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
import 'package:reminder_app/domain/core/failures.dart';
import 'package:reminder_app/domain/core/value_objects.dart';
import 'package:reminder_app/domain/exercise/series.dart';
import 'package:reminder_app/domain/exercise/value_objects.dart';

part 'exercise.freezed.dart';

@freezed
abstract class Exercise implements _$Exercise {
  const Exercise._();

  const factory Exercise({
    @required UniqueId id,
    @required ExerciseName name,
    @required ExerciseDate date,
    @required SeriesNumb seriesNumb,
    @required RepetitionsList<Series> repetitionsList,
  }) = _Exercise;

  factory Exercise.empty() => Exercise(
        id: UniqueId(),
        name: ExerciseName(''),
        date: ExerciseDate(0),
        seriesNumb: SeriesNumb(0),
        repetitionsList: RepetitionsList(emptyList()),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return name.failureOrUnit
        .andThen(date.failureOrUnit)
        .andThen(seriesNumb.failureOrUnit)
        .andThen(repetitionsList.failureOrUnit)
        .andThen(repetitionsList
            .getOrCrash()
            .map((series) => series.failureOption)
            .filter((o) => o.isSome())
            .getOrElse(0, (_) => none())
            .fold(() => right(unit), (f) => left(f)))
        .fold((f) => some(f), (_) => none());
  }
}
