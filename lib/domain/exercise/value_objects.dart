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
    return ExerciseDate._(validateDateTime(input).flatMap(validateIntNotEmpty));
  }
}

class NumberOfSets extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;
  static const maxValue = 30;

  const NumberOfSets._(this.value);

  factory NumberOfSets(int input) {
    assert(input != null);
    return NumberOfSets._(
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

class BadReps extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;
  static const maxValue = 1000;

  const BadReps._(this.value);

  factory BadReps(int input) {
    assert(input != null);
    return BadReps._(
        validateMaxIntValue(input, maxValue));
  }
}

class Weights extends ValueObject<double> {
  @override
  final Either<ValueFailure<double>, double> value;
  static const maxValue = 1000.0;

  const Weights._(this.value);

  factory Weights(double input) {
    assert(input != null);
    return Weights._(
        validateMaxDoubleValue(input,maxValue));
  }
}

class Distance extends ValueObject<double> {
  @override
  final Either<ValueFailure<double>, double> value;
  static const maxValue = 1000.0;

  const Distance._(this.value);

  factory Distance(double input) {
    assert(input != null);
    return Distance._(
        validateMaxDoubleValue(input, maxValue));
  }
}

class SetDuration extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;
  static const maxValue = 86400000;

  const SetDuration._(this.value);

  factory SetDuration(int input) {
    assert(input != null);
    return SetDuration._(
        validateMaxIntValue(input, maxValue));
  }


  String get  clockDisplay{ 
  final int hours = (value.getOrElse(() => 0) / 3600000).floor();
  final String hoursString = hours >9 ? '$hours' : '0$hours';
  final int minutes = ((value.getOrElse(() => 0) % 3600000) / 60000).floor();
  final String minutesString = minutes >9 ? '$minutes' : '0$minutes';

  final int seconds = (((value.getOrElse(() => 0) % 3600000) % 60000) / 1000).floor();
  final String secondsString = seconds >9 ? '$seconds' : '0$seconds';
  final String result = '$hoursString:$minutesString:$secondsString';
  return result;
  }

}

class SetsList<T> extends ValueObject<KtList<T>> {
  @override
  final Either<ValueFailure<KtList<T>>, KtList<T>> value;
  static const maxLength = 30;

  factory SetsList(KtList<T> input) {
    assert(input != null);
    return SetsList._(validateMaxListLength(input, maxLength));
  }

  const SetsList._(this.value);

  int get length {
    return value.getOrElse(() => emptyList()).size;
  }

  bool get isFull {
    return length == maxLength;
  }
}
