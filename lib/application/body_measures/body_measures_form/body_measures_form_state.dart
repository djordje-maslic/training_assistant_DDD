part of 'body_measures_form_bloc.dart';

@freezed
abstract class BodyMeasuresFormState with _$BodyMeasuresFormState {
  const factory BodyMeasuresFormState({
    @required BodyMeasures bodyMeasures,
    @required bool showErrorMessages,
    @required bool isEditing,
    @required bool isSaving,
    @required
        Option<Either<BodyMeasuresFailure, Unit>> saveFailureOrSuccessOption,
  }) = _BodyMeasuresFormState;

  factory BodyMeasuresFormState.initial() => BodyMeasuresFormState(
        bodyMeasures: BodyMeasures.empty(),
        showErrorMessages: false,
        isEditing: false,
        isSaving: false,
        saveFailureOrSuccessOption: none(),
      );
}
