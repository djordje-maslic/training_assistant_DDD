import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reminder_app/domain/body_measures/value_objects.dart';
import 'package:reminder_app/domain/core/failures.dart';
import 'package:reminder_app/domain/core/value_objects.dart';

part 'body_measures.freezed.dart';

@freezed
abstract class BodyMeasures implements _$BodyMeasures {
  const BodyMeasures._();

  const factory BodyMeasures({
    @required UniqueId id,
    @required UniqueId userId,
    @required MeasuresDate bodyMeasuresDate,
    @required UserWeight bodyMeasuresWeight,
    @required UserHeight bodyMeasuresHeight,
  }) = _BodyMeasures;

  factory BodyMeasures.empty() => BodyMeasures(
        id: UniqueId(),
        userId: UniqueId.withUniqueString(''),
        bodyMeasuresDate: MeasuresDate(0),
        bodyMeasuresWeight: UserWeight(0.0),
        bodyMeasuresHeight: UserHeight(0.0),
      );


  Option<ValueFailure<dynamic>> get failureOption {
    return userId.failureOrUnit
        .andThen(bodyMeasuresDate.failureOrUnit)
        .andThen(bodyMeasuresWeight.failureOrUnit)
        .andThen(bodyMeasuresHeight.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
