import 'package:firebase_auth/firebase_auth.dart' as firebase;
import 'package:reminder_app/domain/auth/user.dart';
import 'package:reminder_app/domain/auth/value_objects.dart';
import 'package:reminder_app/domain/core/value_objects.dart';

extension FirebaseUserToDomainExtension on firebase.User {
  User toDomain() {
    return User(
      id: UniqueId.withUniqueString(uid),
      emailAddress: EmailAddress(email),
      userName: UserName(''),
      userWeight: UserWeight(0.0),
      userHeight: UserHeight(0.0),
    );
  }
}
