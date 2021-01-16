import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:reminder_app/domain/core/failures.dart';

Either<ValueFailure<String>, String> validateMaxStringLength(
    String input, int maxLength) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(
        ValueFailure.exceedingLength(failedValue: input, max: maxLength));
  }
}

Either<ValueFailure<int>, int> validateMaxIntValue(int input, int maxNumb) {
  if (0 <= input && input <= maxNumb) {
    return right(input);
  } else {
    return left(ValueFailure.exceedingValue(failedValue: input, max: maxNumb));
  }
}

Either<ValueFailure<double>, double> validateMaxDoubleValue(double input, double maxNumb) {
  if (0 <= input && input <= maxNumb) {
    return right(input);
  } else {
    return left(ValueFailure.exceedingValue(failedValue: input, max: maxNumb));
  }
}


Either<ValueFailure<int>, int> validateDateTime(
    int input) {
  final bool dateTimeCheck = input >= 0;
  if (dateTimeCheck) {
    return right(input);
  } else {
    return left(ValueFailure.invalidDate(
        failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.empty(failedValue: input));
  }
}

Either<ValueFailure<int>, int> validateIntNotEmpty(int input) {
  if (input.toString().isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.empty(failedValue: input));
  }
}


Either<ValueFailure<KtList<T>>, KtList<T>> validateMaxListLength<T>(
    KtList<T> input, int maxLength) {
  if (input.size <= maxLength) {
    return right(input);
  } else {
    return left(ValueFailure.listTooLong(failedValue: input, max: maxLength));
  }
}

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegexp =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegexp).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length >= 6) {
    return right(input);
  } else {
    return left(ValueFailure.shortPassword(failedValue: input));
  }
}
