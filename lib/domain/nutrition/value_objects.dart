import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:reminder_app/domain/core/failures.dart';
import 'package:reminder_app/domain/core/value_objects.dart';
import 'package:reminder_app/domain/core/value_validators.dart';

class NutritionName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  static const maxLength = 60;

  const NutritionName._(this.value);

  factory NutritionName(String input) {
    assert(input != null);
    return NutritionName._(validateMaxStringLength(input, maxLength)
        .flatMap(validateStringNotEmpty));
  }
}

class NutritionDateTime extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;
  static const maxLength = 60;

  const NutritionDateTime._(this.value);

  factory NutritionDateTime(int input) {
    assert(input != null);
    return NutritionDateTime._(validateDateTime(input));
  }
}

class NutrientsList<Nutrient> extends ValueObject<KtList<Nutrient>> {
  @override
  final Either<ValueFailure<KtList<Nutrient>>, KtList<Nutrient>> value;
  static const maxLength = 30;

  factory NutrientsList(KtList<Nutrient> input) {
    assert(input != null);
    return NutrientsList._(validateMaxListLength(input, maxLength));
  }

  const NutrientsList._(this.value);

  int get length {
    return value.getOrElse(() => emptyList()).size;
  }

  bool get isFull {
    return length == maxLength;
  }
}

class NutrientName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  static const maxLength = 30;

  const NutrientName._(this.value);

  factory NutrientName(String input) {
    assert(input != null);
    return NutrientName._(validateMaxStringLength(input, maxLength)
        .flatMap(validateStringNotEmpty));
  }
}

class NutrientPieces extends ValueObject<double> {
  @override
  final Either<ValueFailure<double>, double> value;
  static const maxNumb = 10000.0;

  const NutrientPieces._(this.value);

  factory NutrientPieces(double input) {
    assert(input != null);
    return NutrientPieces._(validateMaxDoubleValue(input, maxNumb));
  }
}

class NutrientWeight extends ValueObject<double> {
  @override
  final Either<ValueFailure<double>, double> value;
  static const maxNumb = 10000.0;

  const NutrientWeight._(this.value);

  factory NutrientWeight(double input) {
    assert(input != null);
    return NutrientWeight._(validateMaxDoubleValue(input, maxNumb));
  }
}

class NutrientVolume extends ValueObject<double> {
  @override
  final Either<ValueFailure<double>, double> value;
  static const maxNumb = 10000.0;

  const NutrientVolume._(this.value);

  factory NutrientVolume(double input) {
    assert(input != null);
    return NutrientVolume._(validateMaxDoubleValue(input, maxNumb));
  }
}
