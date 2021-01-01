import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reminder_app/domain/core/failures.dart';
import 'package:reminder_app/domain/core/value_objects.dart';
import 'package:reminder_app/domain/exercise/value_objects.dart';

part 'sets.freezed.dart';

@freezed
abstract class Sets implements _$Sets {
  const Sets._();

  const factory Sets({
    @required UniqueId id,
    @required RepetitionsNumb number,
    @required GoodReps goodReps,
    @required BadReps badReps,
    @required Weights weights,
    @required Distance distance,
    @required SetDuration setDuration,
  }) = _Sets;

  factory Sets.empty() => Sets(
        id: UniqueId(),
        number: RepetitionsNumb(0),
        goodReps: GoodReps(0),
        badReps: BadReps(0),
        weights: Weights(0.0),
        distance: Distance(0.0),
        setDuration: SetDuration(0),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return number.failureOrUnit
        .andThen(goodReps.failureOrUnit.andThen(badReps.failureOrUnit.andThen(
            weights.failureOrUnit.andThen(
                distance.failureOrUnit.andThen(setDuration.failureOrUnit)))))
        .fold((f) => some(f), (r) => none());
  }
}
