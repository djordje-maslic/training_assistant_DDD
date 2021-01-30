import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reminder_app/domain/auth/value_objects.dart';
import 'package:reminder_app/domain/core/failures.dart';
import 'package:reminder_app/domain/core/value_objects.dart';

part 'user.freezed.dart';

@freezed
abstract class User implements _$User {
  const User._();

  const factory User({
    @required UniqueId id,
    @required EmailAddress emailAddress,
    @required UserName userName,
    @required UserDateOfBirth userDateOfBirth,
    @required UserGender userGender,
  }) = _User;

  factory User.empty() => User(
        id: UniqueId(),
        emailAddress: EmailAddress(''),
        userName: UserName('NN'),
        userDateOfBirth: UserDateOfBirth(0),
        userGender: UserGender(input: true),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return userName.failureOrUnit
        .andThen(userDateOfBirth.failureOrUnit)
        .andThen(userGender.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
