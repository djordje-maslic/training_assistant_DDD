import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:reminder_app/domain/body_measures/body_measures.dart';
import 'package:reminder_app/domain/body_measures/body_measures_failures.dart';

abstract class IBodyMeasuresRepository {
  Stream<Either<BodyMeasuresFailure, KtList<BodyMeasures>>> watchBodyMeasures();

  Future<Either<BodyMeasuresFailure, Unit>> create(BodyMeasures bodyMeasures);

  Future<Either<BodyMeasuresFailure, Unit>> update(BodyMeasures bodyMeasures);

  Future<Either<BodyMeasuresFailure, Unit>> delete(BodyMeasures bodyMeasures);
}
