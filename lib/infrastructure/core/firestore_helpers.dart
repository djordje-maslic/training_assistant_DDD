import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:reminder_app/domain/auth/i_auth_facade.dart';
import 'package:reminder_app/domain/auth/user.dart';
import 'package:reminder_app/domain/core/error.dart';
import 'package:reminder_app/injectable.dart';

extension FirestoreX on FirebaseFirestore {
  Future<CollectionReference> exerciseDocument() async {
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

extension FirestoreN on FirebaseFirestore {
  Future<CollectionReference> nutritionDocument() async {
    return FirebaseFirestore.instance.collection('nutrition');
  }
}

extension FirestoreN2 on FirebaseFirestore {
  Future<Query> nutritionOfUserQuery() async {
    final userOption = await getIt<IAuthFacade>().getSignInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());

    return FirebaseFirestore.instance
        .collection('nutrition')
        .where('userId', isEqualTo: user.id.getOrCrash());
  }
}

extension DocumentReferenceN on DocumentReference {
  CollectionReference get nutritionCollection => collection('nutrition');
}

extension FirestoreUQ on FirebaseFirestore {
  Future<Query> userQuery() async {
    return FirebaseFirestore.instance.collection('user');
  }
}

extension FirestoreU on FirebaseFirestore {
  Future<DocumentReference> userDocument() async {
    final userOption = await getIt<IAuthFacade>().getSignInUser();
    final user = userOption.getOrElse(() => User.empty());
    return FirebaseFirestore.instance
        .collection('user')
        .doc(user.id.getOrCrash());
  }
}

extension FirestoreBM on FirebaseFirestore {
  Future<Query> bodyMeasuresOfUserQuery() async {
    final userOption = await getIt<IAuthFacade>().getSignInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());

    return FirebaseFirestore.instance
        .collection('bodyMeasures')
        .where('userId', isEqualTo: user.id.getOrCrash());
  }
}
