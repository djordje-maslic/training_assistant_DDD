import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
    final userDocument = await _firebaseFirestore.exerciseDocument();
    yield* userDocument
       .orderBy('date',descending: true)
        .snapshots()
        .map((snapshot) => right<ExerciseFailure, KtList<Exercise>>(snapshot
            .docs
            .map((doc) => ExerciseDto.fromFirestore(doc).toDomain())
            .toImmutableList()))
        .onErrorReturnWith((e) {
      if (e is FirebaseException && e.message.contains('PERMISSION_DENIED')) {
        return left(const ExerciseFailure.insufficientPermission());
      } else {
        return left(const ExerciseFailure.unexpected());
      }
    });
  }


  @override
  Stream<Either<ExerciseFailure, KtList<Exercise>>>
      watchUsersExercises() async* {
    final exerciseUserQuery = await _firebaseFirestore.exercisesOfUserQuery();

    yield* exerciseUserQuery
        .snapshots()
        .map((snapshot) => right<ExerciseFailure, KtList<Exercise>>(snapshot
            .docs
            .map((doc) => ExerciseDto.fromFirestore(doc).toDomain())
            .toImmutableList()))
        .onErrorReturnWith((e) {
      if (e is FirebaseException && e.message.contains('PERMISSION_DENIED')) {
        return left(const ExerciseFailure.insufficientPermission());
      } else {
        return left(const ExerciseFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<ExerciseFailure, Unit>> create(Exercise exercise) async {
    try {
      final exercisesDoc = _firebaseFirestore.collection('exercises');
      final exerciseDto = ExerciseDto.fromDomain(exercise);

      await exercisesDoc.doc(exerciseDto.id).set(exerciseDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const ExerciseFailure.insufficientPermission());
      } else {
        return left(const ExerciseFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<ExerciseFailure, Unit>> update(Exercise exercise) async {
    try {
      final exercisesDoc = _firebaseFirestore.collection('exercises');
      final exerciseDto = ExerciseDto.fromDomain(exercise);

      await exercisesDoc.doc(exerciseDto.id).update(exerciseDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const ExerciseFailure.insufficientPermission());
      } else if (e.message.contains('NOT_FOUND')) {
        return left(const ExerciseFailure.unableToUpdate());
      } else {
        return left(const ExerciseFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<ExerciseFailure, Unit>> delete(Exercise exercise) async {
    try {
      final exercisesDoc = _firebaseFirestore.collection('exercises');
      final exerciseId = exercise.id.getOrCrash();

      await exercisesDoc.doc(exerciseId).delete();

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const ExerciseFailure.insufficientPermission());
      } else if (e.message.contains('NOT_FOUND')) {
        return left(const ExerciseFailure.unableToUpdate());
      } else {
        return left(const ExerciseFailure.unexpected());
      }
    }
  }
}
