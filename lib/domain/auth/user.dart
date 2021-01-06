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
    UserName userName,
    UserWeight userWeight,
    UserHeight userHeight,
  }) = _User;

  factory User.empty() => User(
        id: UniqueId(),
        emailAddress: EmailAddress(''),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return userName.failureOrUnit
        .andThen(userWeight.failureOrUnit)
        .andThen(userHeight.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
