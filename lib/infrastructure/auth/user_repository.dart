import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:reminder_app/domain/auth/i_auth_facade.dart';
import 'package:reminder_app/domain/auth/i_user_repository.dart';
import 'package:reminder_app/domain/auth/user.dart' as user;
import 'package:reminder_app/domain/auth/user_failure.dart';
import 'package:reminder_app/domain/core/error.dart';
import 'package:reminder_app/infrastructure/auth/user_dtos.dart';
import 'package:reminder_app/infrastructure/core/firestore_helpers.dart';
import 'package:reminder_app/injectable.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: IUserRepository)
class UserRepository implements IUserRepository {
  final FirebaseFirestore _firebaseFirestore;

  UserRepository(this._firebaseFirestore);

  @override
  Future<Option<user.User>> read() async {
    final signInUser = await getIt<IAuthFacade>().getSignInUser();
    final userNew = signInUser.getOrElse(() => throw NotAuthenticatedError());
    final userDocument = await _firebaseFirestore.userDocument();
    final DocumentSnapshot snapshot = await userDocument.get();
    final user =
        snapshot.exists ? UserDto.fromFirestore(snapshot).toDomain() : userNew;
    return optionOf(user);
  }

  @override
  Stream<Either<UserFailure, user.User>> watchUser() async* {
    final userDocument = await _firebaseFirestore.userQuery();
    final signInUser = await getIt<IAuthFacade>().getSignInUser();
    final userNew = signInUser.getOrElse(() => throw NotAuthenticatedError());

    yield* userDocument
        .snapshots()
        .map((snapshot) => right<UserFailure, user.User>(snapshot.docs
            .map((doc) => UserDto.fromFirestore(doc).toDomain())
            .toList()
            .firstWhere((element) =>
                element.id.getOrCrash() == userNew.id.getOrCrash())))
        .onErrorReturnWith((e) {
      if (e is FirebaseException && e.message.contains('PERMISSION_DENIED')) {
        return left(const UserFailure.insufficientPermission());
      } else {
        return left(const UserFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<UserFailure, Unit>> create(user.User user) async {
    try {
      final userDoc = _firebaseFirestore.collection('user');
      final userDto = UserDto.fromDomain(user);

      await userDoc.doc(userDto.id).set(userDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const UserFailure.insufficientPermission());
      } else {
        return left(const UserFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<UserFailure, Unit>> update(user.User user) async {
    try {
      final userDoc = _firebaseFirestore.collection('user');
      final userDto = UserDto.fromDomain(user);

      await userDoc.doc(userDto.id).update(userDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const UserFailure.insufficientPermission());
      } else if (e.message.contains('NOT_FOUND')) {
        return left(const UserFailure.unableToUpdate());
      } else {
        return left(const UserFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<UserFailure, Unit>> delete(user.User user) async {
    try {
      final userDoc = _firebaseFirestore.collection('user');
      final userId = user.id.getOrCrash();

      await userDoc.doc(userId).delete();

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const UserFailure.insufficientPermission());
      } else if (e.message.contains('NOT_FOUND')) {
        return left(const UserFailure.unableToUpdate());
      } else {
        return left(const UserFailure.unexpected());
      }
    }
  }
}
