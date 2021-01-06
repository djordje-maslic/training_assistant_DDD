import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:reminder_app/domain/nutrition/meal/meal_failures.dart';
import 'package:reminder_app/domain/nutrition/meal/meal_object.dart';

abstract class IMealRepository {
  Stream<Either<MealFailures, KtList<MealObject>>> watchAllMeals();
}
