import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:reminder_app/domain/auth/i_auth_facade.dart';
import 'package:reminder_app/domain/core/error.dart';
import 'package:reminder_app/injectable.dart';

extension FirestoreX on FirebaseFirestore {
  Future<CollectionReference> userDocument() async {
    return FirebaseFirestore.instance.collection('exercises');
  }
}

extension FirestoreX2 on FirebaseFirestore {
  Future<Query> exercisesOfUserQuery() async {
    final userOption = await getIt<IAuthFacade>().getSignInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());

    return FirebaseFirestore.instance
        .collection('exercises')
        .where('userId', isEqualTo: user.id.getOrCrash());
  }
}


extension DocumentReferenceX on DocumentReference {
  CollectionReference get exerciseCollection => collection('exercises');
}

extension FirestoreX3 on FirebaseFirestore {
  Future<Query> userQuery() async {
    return FirebaseFirestore.instance
        .collection('user');
  }
}

extension FirestoreX7 on FirebaseFirestore {
 Future<DocumentReference> userDocument1()async {
    final userOption = await getIt<IAuthFacade>().getSignInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return FirebaseFirestore.instance
        .collection('user').doc(user.id.getOrCrash());
  }
}

extension FirestoreX4 on FirebaseFirestore {
  Future<Query> bodyMeasuresOfUserQuery() async {
    final userOption = await getIt<IAuthFacade>().getSignInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());

    return FirebaseFirestore.instance
        .collection('bodyMeasures')
        .where('userId', isEqualTo: user.id.getOrCrash());
  }
}
