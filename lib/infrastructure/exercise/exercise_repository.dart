import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:reminder_app/domain/exercise/exercise.dart';
import 'package:reminder_app/domain/exercise/exercise_failure.dart';
import 'package:reminder_app/domain/exercise/i_exercise_repository.dart';
import 'package:reminder_app/infrastructure/core/firestore_helpers.dart';
import 'package:reminder_app/infrastructure/exercise/exercise_dtos.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: IExerciseRepository)
class ExerciseRepository implements IExerciseRepository {
  final FirebaseFirestore _firebaseFirestore;

  ExerciseRepository(this._firebaseFirestore);

  @override
  Stream<Either<ExerciseFailure, KtList<Exercise>>> watchAllExercise() async* {
    final userDocument = await _firebaseFirestore.userDocument();
    yield* userDocument.exerciseCollection
        .orderBy('serverTimeStamp', descending: true)
        .snapshots()
        .map((snapshot) =>
        right<ExerciseFailure, KtList<Exercise>>(snapshot.docs
            .map((doc) => ExerciseDto.fromFirestore(doc).toDomain())
            .toImmutableList())).onErrorReturnWith((e) {
      if (e is PlatformException && e.message.contains('PERMISSION_DENIED')) {
        return left(const ExerciseFailure.insufficientPermission());
      } else {
        return left(const ExerciseFailure.unexpected());
      }
    });
  }

// TODO: implement search
  @override
  Stream<Either<ExerciseFailure,
      KtList<Exercise>>> watchSearchedExercise() async* {
    final userDocument = await _firebaseFirestore.userDocument();
    yield* userDocument.exerciseCollection
        .orderBy('serverTimeStamp', descending: true)
        .snapshots()
        .map((snapshot) =>
        right<ExerciseFailure, KtList<Exercise>>(snapshot.docs
            .map((doc) => ExerciseDto.fromFirestore(doc).toDomain())
            .toImmutableList())).onErrorReturnWith((e) {
      if (e is PlatformException && e.message.contains('PERMISSION_DENIED')) {
        return left(const ExerciseFailure.insufficientPermission());
      } else {
        return left(const ExerciseFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<ExerciseFailure, Unit>> create(Exercise exercise) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<Either<ExerciseFailure, Unit>> delete(Exercise exercise) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Either<ExerciseFailure, Unit>> update(Exercise exercise) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
