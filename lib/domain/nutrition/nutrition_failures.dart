import 'package:freezed_annotation/freezed_annotation.dart';

part 'nutrition_failures.freezed.dart';

@freezed
abstract class NutritionFailure with _$NutritionFailure {
  const factory NutritionFailure.unexpected() = _Unexpected;

  const factory NutritionFailure.insufficientPermission() =
      _InsufficientPermission;

  const factory NutritionFailure.unableToUpdate() = _UnableToUpdate;
}
