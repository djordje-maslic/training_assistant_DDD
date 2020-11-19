import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:reminder_app/domain/core/failures.dart';
import 'package:reminder_app/domain/core/value_objects.dart';
import 'package:reminder_app/domain/core/value_validators.dart';

class ExerciseName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  static const maxLength = 30;

  const ExerciseName._(this.value);

  factory ExerciseName(String input) {
    assert(input != null);
    return ExerciseName._(validateMaxStringLength(input, maxLength)
        .flatMap(validateStringNotEmpty));
  }
}

class ExerciseDate extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  const ExerciseDate._(this.value);

  factory ExerciseDate(int input) {
    assert(input != null);
    return ExerciseDate._(validateDateTime(input));
  }
}

class SeriesNumb extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;
  static const maxValue = 30;

  const SeriesNumb._(this.value);

  factory SeriesNumb(int input) {
    assert(input != null);
    return SeriesNumb._(
        validateMaxIntValue(input, maxValue).flatMap(validateIntNotEmpty));
  }
}

class RepetitionsNumb extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;
  static const maxValue = 1000;

  const RepetitionsNumb._(this.value);

  factory RepetitionsNumb(int input) {
    assert(input != null);
    return RepetitionsNumb._(
        validateMaxIntValue(input, maxValue).flatMap(validateIntNotEmpty));
  }
}

class RepetitionsList<T> extends ValueObject<KtList<T>> {
  @override
  final Either<ValueFailure<KtList<T>>, KtList<T>> value;
  static const maxLength = 30;

  factory RepetitionsList(KtList<T> input) {
    assert(input != null);
    return RepetitionsList._(validateMaxListLength(input, maxLength));
  }

  const RepetitionsList._(this.value);

  int get length {
    return value.getOrElse(() => emptyList()).size;
  }

  bool get isFull {
    return length == maxLength;
  }
}
