import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:reminder_app/domain/core/failures.dart';
import 'package:reminder_app/domain/core/value_objects.dart';
import 'package:reminder_app/domain/core/value_validators.dart';



class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  const EmailAddress._(this.value);

  factory EmailAddress(String input) {
    assert(input != null);
    return EmailAddress._(validateEmailAddress(input));
  }
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  const Password._(this.value);

  factory Password(String input) {
    assert(input != null);
    return Password._(validatePassword(input));
  }
}


class UserName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  static const maxLength = 30;
  const UserName._(this.value);

  factory UserName(String input) {
    assert(input != null);
    return UserName._(validateMaxStringLength(input,maxLength));
  }
}



class UserDateOfBirth extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;
 const UserDateOfBirth._(this.value);

  factory UserDateOfBirth (int input) {
    assert(input != null);
    return UserDateOfBirth._(validateDateOfBirth(input));
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

class UserGender extends ValueObject<bool> {
  @override
  final Either<ValueFailure<bool>, bool> value;

  const UserGender._(this.value);

  factory UserGender ({@required bool input}) {
    assert(input != null);
    return UserGender._(validateUserGender(input: input));
  }
}
