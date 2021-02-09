import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reminder_app/domain/auth/value_objects.dart';
import 'package:reminder_app/domain/core/value_objects.dart';
import 'package:kt_dart/kt.dart';
import 'package:reminder_app/domain/nutrition/nutrient.dart';
import 'package:reminder_app/domain/nutrition/nutrition.dart';
import 'package:reminder_app/domain/nutrition/value_objects.dart';

part 'nutrition_dtos.freezed.dart';

part 'nutrition_dtos.g.dart';

@freezed
abstract class NutritionDto implements _$NutritionDto {
  const NutritionDto._();

  const factory NutritionDto(
          {@JsonKey(ignore: true) String id,
          @required String userId,
          @required String userName,
          @required String nutritionName,
          @required int nutritionDateTime,
          @required List<NutrientDto> nutrientsList,
          @required @ServerTimestampConverter() FieldValue serverTimeStamp}) =
      _NutritionDto;

  factory NutritionDto.fromDomain(Nutrition nutrition) {
    return NutritionDto(
      id: nutrition.id.getOrCrash(),
      userId: nutrition.userId.getOrCrash(),
      userName: nutrition.userName.getOrCrash(),
      nutritionName: nutrition.nutritionName.getOrCrash(),
      nutritionDateTime: nutrition.nutritionDateTime.getOrCrash(),
      nutrientsList: nutrition.nutrientsList
          .getOrCrash()
          .asList()
          .map((nutrient) => NutrientDto.fromDomain(nutrient))
          .toList(),
      serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  Nutrition toDomain() {
    return Nutrition(
      id: UniqueId.withUniqueString(id),
      userId: UniqueId.withUniqueString(userId),
      userName: UserName(userName),
      nutritionName: NutritionName(nutritionName),
      nutritionDateTime: NutritionDateTime(nutritionDateTime),
      nutrientsList: NutrientsList(
          nutrientsList.map((dto) => dto.toDomain()).toImmutableList()),
    );
  }

  factory NutritionDto.fromJson(Map<String, dynamic> json) =>
      _$NutritionDtoFromJson(json);

  factory NutritionDto.fromFirestore(DocumentSnapshot doc) {
    return NutritionDto.fromJson(doc.data()).copyWith(id: doc.id);
  }
}

class ServerTimestampConverter implements JsonConverter<FieldValue, Object> {
  const ServerTimestampConverter();

  @override
  FieldValue fromJson(Object json) {
    return FieldValue.serverTimestamp();
  }

  @override
  Object toJson(FieldValue fieldValue) => fieldValue;
}

@freezed
abstract class NutrientDto implements _$NutrientDto {
  const NutrientDto._();

  const factory NutrientDto({
    @required String id,
    @required String nutrientName,
    @required double nutrientPieces,
    @required double nutrientWeight,
    @required double nutrientVolume,
  }) = _NutrientDto;

  factory NutrientDto.fromDomain(Nutrient nutrient) {
    return NutrientDto(
      id: nutrient.id.getOrCrash(),
      nutrientName: nutrient.nutrientName.getOrCrash(),
      nutrientPieces: nutrient.nutrientPieces.getOrCrash(),
      nutrientWeight: nutrient.nutrientWeight.getOrCrash(),
      nutrientVolume: nutrient.nutrientVolume.getOrCrash(),
    );
  }

  Nutrient toDomain() {
    return Nutrient(
      id: UniqueId.withUniqueString(id),
      nutrientName: NutrientName(nutrientName),
      nutrientPieces: NutrientPieces(nutrientPieces),
      nutrientWeight: NutrientWeight(nutrientWeight),
      nutrientVolume: NutrientVolume(nutrientVolume),
    );
  }

  factory NutrientDto.fromJson(Map<String, dynamic> json) =>
      _$NutrientDtoFromJson(json);
}
