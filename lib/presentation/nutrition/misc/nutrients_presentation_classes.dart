import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
import 'package:reminder_app/domain/core/value_objects.dart';
import 'package:reminder_app/domain/nutrition/nutrient.dart';
import 'package:reminder_app/domain/nutrition/value_objects.dart';

part 'nutrients_presentation_classes.freezed.dart';

class FormNutrientsList extends ValueNotifier<KtList<NutrientItemPrimitive>> {
  FormNutrientsList() : super(emptyList<NutrientItemPrimitive>());
}

@freezed
abstract class NutrientItemPrimitive implements _$NutrientItemPrimitive {
  const NutrientItemPrimitive._();

  const factory NutrientItemPrimitive({
    @required UniqueId id,
    @required String nutrientName,
    @required double nutrientPieces,
    @required double nutrientWeight,
    @required double nutrientVolume,
  }) = _NutrientItemPrimitive;

  factory NutrientItemPrimitive.empty() => NutrientItemPrimitive(
      id: UniqueId(),
      nutrientName: '',
      nutrientPieces: 0.0,
      nutrientWeight: 0.0,
      nutrientVolume: 0.0,
  );

  factory NutrientItemPrimitive.fromDomain(Nutrient nutrient ) {
    return NutrientItemPrimitive(
      id: nutrient.id,
      nutrientName: nutrient.nutrientName.getOrCrash(),
      nutrientPieces: nutrient.nutrientPieces.getOrCrash(),
      nutrientWeight: nutrient.nutrientWeight.getOrCrash(),
      nutrientVolume: nutrient.nutrientVolume.getOrCrash(),
    );
  }

  Nutrient toDomain() {
    return Nutrient(
        id: id,
        nutrientName: NutrientName(nutrientName),
        nutrientPieces: NutrientPieces(nutrientPieces),
        nutrientWeight: NutrientWeight(nutrientWeight),
        nutrientVolume: NutrientVolume(nutrientVolume),
    );
  }
}
