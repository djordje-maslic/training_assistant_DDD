import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:reminder_app/domain/nutrition/nutrition.dart';
import 'package:reminder_app/domain/nutrition/nutrition_failures.dart';

abstract class INutritionRepository {
  Stream<Either<NutritionFailure, KtList<Nutrition>>> watchNutrition();

  Stream<Either<NutritionFailure, KtList<Nutrition>>> watchUsersNutrition();

  Future<Either<NutritionFailure, Unit>> create(Nutrition nutrition);

  Future<Either<NutritionFailure, Unit>> update(Nutrition nutrition);

  Future<Either<NutritionFailure, Unit>> delete(Nutrition nutrition);
}
