import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:reminder_app/domain/nutrition/i_nutrition_repository.dart';
import 'package:reminder_app/domain/nutrition/nutrition.dart';
import 'package:reminder_app/domain/nutrition/nutrition_failures.dart';
import 'package:reminder_app/infrastructure/core/firestore_helpers.dart';
import 'package:reminder_app/infrastructure/nutrition/nutrition_dtos.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: INutritionRepository)
class NutritionRepository implements INutritionRepository {
  final FirebaseFirestore _firebaseFirestore;

  NutritionRepository(this._firebaseFirestore);

  @override
  Stream<Either<NutritionFailure, KtList<Nutrition>>> watchNutrition() async* {
    final nutritionDocument = await _firebaseFirestore.nutritionDocument();
    yield* nutritionDocument
        .orderBy('nutritionDateTime', descending: true)
        .snapshots()
        .map((snapshot) => right<NutritionFailure, KtList<Nutrition>>(snapshot
            .docs
            .map((doc) => NutritionDto.fromFirestore(doc).toDomain())
            .toImmutableList()))
        .onErrorReturnWith((e) {
      if (e is FirebaseException && e.message.contains('PERMISSION_DENIED')) {
        return left(const NutritionFailure.insufficientPermission());
      } else {
        return left(const NutritionFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<NutritionFailure, KtList<Nutrition>>>
      watchUsersNutrition() async* {
    final nutritionUserQuery = await _firebaseFirestore.nutritionOfUserQuery();

    yield* nutritionUserQuery
        .snapshots()
        .map((snapshot) => right<NutritionFailure, KtList<Nutrition>>(snapshot
            .docs
            .map((doc) => NutritionDto.fromFirestore(doc).toDomain())
            .toImmutableList()))
        .onErrorReturnWith((e) {
      if (e is FirebaseException && e.message.contains('PERMISSION_DENIED')) {
        return left(const NutritionFailure.insufficientPermission());
      } else {
        return left(const NutritionFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<NutritionFailure, Unit>> create(Nutrition nutrition) async {
    try {
      final nutritionDoc = _firebaseFirestore.collection('nutrition');
      final nutritionDto = NutritionDto.fromDomain(nutrition);

      await nutritionDoc.doc(nutritionDto.id).set(nutritionDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const NutritionFailure.insufficientPermission());
      } else {
        return left(const NutritionFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<NutritionFailure, Unit>> update(Nutrition nutrition) async {
    try {
      final nutritionDoc = _firebaseFirestore.collection('nutrition');
      final nutritionDto = NutritionDto.fromDomain(nutrition);

      await nutritionDoc.doc(nutritionDto.id).update(nutritionDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const NutritionFailure.insufficientPermission());
      } else if (e.message.contains('NOT_FOUND')) {
        return left(const NutritionFailure.unableToUpdate());
      } else {
        return left(const NutritionFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<NutritionFailure, Unit>> delete(Nutrition nutrition) async {
    try {
      final nutritionDoc = _firebaseFirestore.collection('nutrition');
      final nutritionId = nutrition.id.getOrCrash();

      await nutritionDoc.doc(nutritionId).delete();

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const NutritionFailure.insufficientPermission());
      } else if (e.message.contains('NOT_FOUND')) {
        return left(const NutritionFailure.unableToUpdate());
      } else {
        return left(const NutritionFailure.unexpected());
      }
    }
  }
}
