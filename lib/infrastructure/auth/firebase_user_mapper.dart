import 'package:firebase_auth/firebase_auth.dart' as firebase;
import 'package:reminder_app/domain/auth/user.dart';
import 'package:reminder_app/domain/core/value_objects.dart';

extension FirebaseUserToDomainExtension on firebase.User{
  User toDomain(){
    return User(id: UniqueId.withUniqueString(uid));
  }
}