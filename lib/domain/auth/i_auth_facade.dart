import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:reminder_app/domain/auth/auth_failure.dart';
import 'package:reminder_app/domain/auth/user.dart';
import 'package:reminder_app/domain/auth/value_objects.dart';

abstract class IAuthFacade {
  Future<Option<User>> getSignInUser();

  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword(
      {@required EmailAddress emailAddress, @required Password password});

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {@required EmailAddress emailAddress, @required Password password});

  Future<Either<AuthFailure, Unit>> signInWithGoogle();

  Future<void> signOut();
}
