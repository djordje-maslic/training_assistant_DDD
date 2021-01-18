import 'package:freezed_annotation/freezed_annotation.dart';

part 'body_measures_failures.freezed.dart';

@freezed
abstract class BodyMeasuresFailure with _$BodyMeasuresFailure {
  const factory BodyMeasuresFailure.unexpected() = _Unexpected;

  const factory BodyMeasuresFailure.insufficientPermission() =
      _InsufficientPermission;

  const factory BodyMeasuresFailure.unableToUpdate() = _UnableToUpdate;
}
