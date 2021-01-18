import 'package:dartz/dartz.dart';
import 'package:reminder_app/domain/core/failures.dart';
import 'package:reminder_app/domain/core/value_objects.dart';
import 'package:reminder_app/domain/core/value_validators.dart';

class UserWeight extends ValueObject<double> {
  @override
  final Either<ValueFailure<double>, double> value;
  static const maxWeight = 300.0;
  const UserWeight._(this.value);

  factory UserWeight (double input) {
    assert(input != null);
    return UserWeight._(validateMaxDoubleValue(input, maxWeight));
  }
}

class UserHeight extends ValueObject<double> {
  @override
  final Either<ValueFailure<double>, double> value;
  static const maxHeight = 250.0;
  const UserHeight._(this.value);

  factory UserHeight (double input) {
    assert(input != null);
    return UserHeight._(validateMaxDoubleValue(input, maxHeight));
  }
}
class MeasuresDate extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  const MeasuresDate._(this.value);

  factory MeasuresDate(int input) {
    assert(input != null);
    return MeasuresDate._(validateDateTime(input).flatMap(validateIntNotEmpty));
  }
}
