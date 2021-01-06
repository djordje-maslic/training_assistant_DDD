import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:reminder_app/domain/auth/user.dart';
import 'package:reminder_app/domain/auth/user_failure.dart';
import 'package:reminder_app/domain/core/failures.dart';

abstract class IUserRepository {
  Future<Either<ValueFailure<User>, User>> getUser({@required User user});

  Stream<Either<UserFailure, User>> watchUser();

  Future<Either<UserFailure, Unit>> create(User user);

  Future<Either<UserFailure, User>> read();

  Future<Either<UserFailure, Unit>> update(User user);

  Future<Either<UserFailure, Unit>> delete(User user);
}
