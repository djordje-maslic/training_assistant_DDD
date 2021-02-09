import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reminder_app/domain/core/failures.dart';
import 'package:reminder_app/domain/core/value_objects.dart';
import 'package:reminder_app/domain/nutrition/value_objects.dart';

part 'nutrient.freezed.dart';

@freezed
abstract class Nutrient implements _$Nutrient {
  const Nutrient._();

  const factory Nutrient({
    @required UniqueId id,
    @required NutrientName nutrientName,
    @required NutrientPieces nutrientPieces,
    @required NutrientWeight nutrientWeight,
    @required NutrientVolume nutrientVolume,
  }) = _Nutrient;

  factory Nutrient.empty() => Nutrient(
        id: UniqueId(),
        nutrientName: NutrientName(''),
        nutrientPieces: NutrientPieces(0.0),
        nutrientWeight: NutrientWeight(0.0),
        nutrientVolume: NutrientVolume(0.0),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return nutrientName.failureOrUnit
        .andThen(
          nutrientPieces.failureOrUnit.andThen(
            nutrientWeight.failureOrUnit.andThen(nutrientVolume.failureOrUnit),
          ),
        )
        .fold(
          (f) => some(f),
          (r) => none(),
        );
  }
}
