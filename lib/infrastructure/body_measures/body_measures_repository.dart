import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:reminder_app/domain/body_measures/body_measures.dart';
import 'package:reminder_app/domain/body_measures/body_measures_failures.dart';
import 'package:reminder_app/domain/body_measures/i_body_measures_repository.dart';
import 'package:reminder_app/infrastructure/body_measures/body_measures_dtos.dart';
import 'package:reminder_app/infrastructure/core/firestore_helpers.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: IBodyMeasuresRepository)
class BodyMeasuresRepository implements IBodyMeasuresRepository {
  final FirebaseFirestore _firebaseFirestore;

  const BodyMeasuresRepository(this._firebaseFirestore);

  @override
  Stream<Either<BodyMeasuresFailure, KtList<BodyMeasures>>>
      watchBodyMeasures() async* {
    final bodyMeasuresOfUserQuery =
        await _firebaseFirestore.bodyMeasuresOfUserQuery();

    yield* bodyMeasuresOfUserQuery
        .snapshots()
        .map((snapshot) => right<BodyMeasuresFailure, KtList<BodyMeasures>>(
            snapshot.docs
                .map((doc) => BodyMeasuresDto.fromFirestore(doc).toDomain())
                .toImmutableList()))
        .onErrorReturnWith((e) {
      if (e is FirebaseException && e.message.contains('PERMISSION_DENIED')) {
        return left(const BodyMeasuresFailure.insufficientPermission());
      } else {
        return left(const BodyMeasuresFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<BodyMeasuresFailure, Unit>> create(
      BodyMeasures bodyMeasures) async {
    try {
      final bodyMeasuresDoc = _firebaseFirestore.collection('bodyMeasures');
      final bodyMeasuresDto = BodyMeasuresDto.fromDomain(bodyMeasures);

      await bodyMeasuresDoc
          .doc(bodyMeasuresDto.id)
          .set(bodyMeasuresDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const BodyMeasuresFailure.insufficientPermission());
      } else {
        return left(const BodyMeasuresFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<BodyMeasuresFailure, Unit>> update(
      BodyMeasures bodyMeasures) async {
    try {
      final bodyMeasuresDoc = _firebaseFirestore.collection('bodyMeasures');
      final bodyMeasuresDto = BodyMeasuresDto.fromDomain(bodyMeasures);

      await bodyMeasuresDoc
          .doc(bodyMeasuresDto.id)
          .update(bodyMeasuresDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const BodyMeasuresFailure.insufficientPermission());
      } else {
        return left(const BodyMeasuresFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<BodyMeasuresFailure, Unit>> delete(
      BodyMeasures bodyMeasures) async {
    try {
      final bodyMeasuresDoc = _firebaseFirestore.collection('bodyMeasures');
      final bodyMeasuresId = bodyMeasures.id.getOrCrash();

      await bodyMeasuresDoc.doc(bodyMeasuresId).delete();

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const BodyMeasuresFailure.insufficientPermission());
      } else if (e.message.contains('NOT_FOUND')) {
        return left(const BodyMeasuresFailure.unableToUpdate());
      } else {
        return left(const BodyMeasuresFailure.unexpected());
      }
    }
  }
}
