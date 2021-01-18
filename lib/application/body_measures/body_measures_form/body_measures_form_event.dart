part of 'body_measures_form_bloc.dart';

@freezed
abstract class BodyMeasuresFormEvent with _$BodyMeasuresFormEvent {
  const factory BodyMeasuresFormEvent.initialized(
      Option<BodyMeasures> initialBodyMeasuresOption) = _Initialized;

  const factory BodyMeasuresFormEvent.bodyMeasuresDateChanged(int dateInt) =
      _BodyMeasuresDateChanged;

  const factory BodyMeasuresFormEvent.bodyMeasuresWeightChanged(
      double weightDouble) = _BodyMeasuresWeightChanged;

  const factory BodyMeasuresFormEvent.bodyMeasuresHeightChanged(
      double heightDouble) = _BodyMeasuresHeightChanged;

  const factory BodyMeasuresFormEvent.bodyMeasuresSaved() = _BodyMeasuresSaved;
}
