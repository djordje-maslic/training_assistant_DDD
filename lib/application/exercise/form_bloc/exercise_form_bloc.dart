import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';
import 'package:reminder_app/domain/auth/i_auth_facade.dart';
import 'package:reminder_app/domain/auth/value_objects.dart';
import 'package:reminder_app/domain/core/error.dart';
import 'package:reminder_app/domain/core/value_objects.dart';
import 'package:reminder_app/domain/exercise/exercise.dart';
import 'package:reminder_app/domain/exercise/exercise_failure.dart';
import 'package:reminder_app/domain/exercise/i_exercise_repository.dart';
import 'package:reminder_app/domain/exercise/value_objects.dart';
import 'package:reminder_app/injectable.dart';
import 'package:reminder_app/presentation/exercise/exercise_form/misc/set_presentation_classes.dart';

part 'exercise_form_event.dart';

part 'exercise_form_state.dart';

part 'exercise_form_bloc.freezed.dart';

@injectable
class ExerciseFormBloc extends Bloc<ExerciseFormEvent, ExerciseFormState> {
  final IExerciseRepository _iExerciseRepository;

  ExerciseFormBloc(this._iExerciseRepository)
      : super(ExerciseFormState.initial());

  @override
  Stream<ExerciseFormState> mapEventToState(
    ExerciseFormEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield e.initialExerciseOption.fold(
          () => state,
          (initialExercise) => state.copyWith(
            exercise: initialExercise,
            isEditing: true,
          ),
        );
      },
      exerciseNameChanged: (e) async* {
        yield state.copyWith(
          exercise: state.exercise.copyWith(name: ExerciseName(e.nameStr)),
          saveFailureOrSuccessOption: none(),
        );
      },
      exerciseDateChanged: (e) async* {
        yield state.copyWith(
          exercise: state.exercise.copyWith(
            date: ExerciseDate(e.dateInt),
          ),
          saveFailureOrSuccessOption: none(),
        );
      },
      exerciseUserNameChanged: (e) async* {
        yield state.copyWith(
          exercise: state.exercise.copyWith(
            userName: UserName(e.userName),
          ),
          saveFailureOrSuccessOption: none(),
        );
      },
      exerciseSetsChanged: (e) async* {
        yield state.copyWith(
          exercise: state.exercise.copyWith(
            setsList: SetsList(
              e.sets.map(
                (primitive) => primitive.toDomain(),
              ),
            ),
          ),
          saveFailureOrSuccessOption: none(),
        );
      },
      exerciseSaved: (e) async* {
        Either<ExerciseFailure, Unit> failureOrSuccess;

        final userOption = await getIt<IAuthFacade>().getSignInUser();
        final user = userOption.getOrElse(() => throw NotAuthenticatedError());

        yield state.copyWith(
          isSaving: true,
          saveFailureOrSuccessOption: none(),
        );

        if (state.exercise.failureOption.isNone()) {
          failureOrSuccess = state.isEditing
              ? await _iExerciseRepository.update(state.exercise)
              : await _iExerciseRepository.create(
                  state.exercise.copyWith(
                    userId: UniqueId.withUniqueString(
                      user.id.getOrCrash(),
                    ),
                  ),
                );
        }

        yield state.copyWith(
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
