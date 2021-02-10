import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
import 'package:reminder_app/domain/auth/value_objects.dart';
import 'package:reminder_app/domain/core/failures.dart';
import 'package:reminder_app/domain/core/value_objects.dart';
import 'package:reminder_app/domain/nutrition/nutrient.dart';
import 'package:reminder_app/domain/nutrition/value_objects.dart';

part 'nutrition.freezed.dart';

@freezed
abstract class Nutrition implements _$Nutrition {
  const Nutrition._();

  const factory Nutrition({
    @required UniqueId id,
    @required UniqueId userId,
    @required UserName userName,
    @required NutritionName nutritionName,
    @required NutritionDateTime nutritionDateTime,
    @required NutrientsList<Nutrient> nutrientsList,
  }) = _Nutrition;

  factory Nutrition.empty() => Nutrition(
        id: UniqueId(),
        userId: UniqueId.withUniqueString(''),
        userName: UserName(''),
        nutritionName: NutritionName(''),
        nutritionDateTime:
            NutritionDateTime(DateTime.now().millisecondsSinceEpoch),
        nutrientsList: NutrientsList(emptyList()),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return nutritionName.failureOrUnit
        .andThen(nutritionDateTime.failureOrUnit)
        .andThen(nutrientsList.failureOrUnit)
        .andThen(
          nutrientsList
              .getOrCrash()
              .map((nutrient) => nutrient.failureOption)
              .filter(
                (o) => o.isSome(),
              )
              .getOrElse(
                0,
                (_) => none(),
              )
              .fold(
                () => right(unit),
                (f) => left(f),
              ),
        )
        .fold(
          (f) => some(f),
          (_) => none(),
        );
  }
}
