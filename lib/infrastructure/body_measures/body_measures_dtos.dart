import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reminder_app/domain/body_measures/body_measures.dart';
import 'package:reminder_app/domain/body_measures/value_objects.dart';
import 'package:reminder_app/domain/core/value_objects.dart';

part 'body_measures_dtos.freezed.dart';

part 'body_measures_dtos.g.dart';

@freezed
abstract class BodyMeasuresDto implements _$BodyMeasuresDto {
  const BodyMeasuresDto._();

  const factory BodyMeasuresDto({
    @JsonKey(ignore: true) String id,
    @required String userId,
    @required int bodyMeasuresDate,
    @required double bodyMeasuresWeight,
    @required double bodyMeasuresHeight,
  }) = _BodyMeasuresDto;

  factory BodyMeasuresDto.fromDomain(BodyMeasures bodyMeasures) {
    return BodyMeasuresDto(
      id: bodyMeasures.id.getOrCrash(),
      userId: bodyMeasures.userId.getOrCrash(),
      bodyMeasuresDate: bodyMeasures.bodyMeasuresDate.getOrCrash(),
      bodyMeasuresWeight: bodyMeasures.bodyMeasuresWeight.getOrCrash(),
      bodyMeasuresHeight: bodyMeasures.bodyMeasuresHeight.getOrCrash(),
    );
  }

  BodyMeasures toDomain() {
    return BodyMeasures(
      id: UniqueId.withUniqueString(id),
      userId: UniqueId.withUniqueString(userId),
      bodyMeasuresDate: MeasuresDate(bodyMeasuresDate),
      bodyMeasuresWeight: UserWeight(bodyMeasuresWeight),
      bodyMeasuresHeight: UserHeight(bodyMeasuresHeight),
    );
  }

  factory BodyMeasuresDto.fromJson(Map<String, dynamic> json) =>
      _$BodyMeasuresDtoFromJson(json);

  factory BodyMeasuresDto.fromFirestore(DocumentSnapshot doc) {
    return BodyMeasuresDto.fromJson(doc.data()).copyWith(id: doc.id);
  }
}
