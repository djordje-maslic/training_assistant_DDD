import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:reminder_app/domain/exercise/exercise.dart';
import 'package:reminder_app/domain/exercise/exercise_failure.dart';

abstract class IExerciseRepository {
  Stream<Either<ExerciseFailure, KtList<Exercise>>> watchAllExercise();

  Stream<Either<ExerciseFailure, KtList<Exercise>>> watchSearchedExercise();

  Future<Either<ExerciseFailure, Unit>> create(Exercise exercise);

  Future<Either<ExerciseFailure, Unit>> update(Exercise exercise);

  Future<Either<ExerciseFailure, Unit>> delete(Exercise exercise);
}
