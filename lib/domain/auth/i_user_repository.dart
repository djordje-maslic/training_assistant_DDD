import 'package:dartz/dartz.dart';
import 'package:reminder_app/domain/auth/user.dart';
import 'package:reminder_app/domain/auth/user_failure.dart';

abstract class IUserRepository {
  Stream<Either<UserFailure, User>> watchUser();

  Future<Either<UserFailure, Unit>> create(User user);

  Future<Option<User>> read();

  Future<Either<UserFailure, Unit>> update(User user);

  Future<Either<UserFailure, Unit>> delete(User user);
}
