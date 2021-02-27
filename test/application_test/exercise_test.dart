import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:reminder_app/application/exercise/form_bloc/exercise_form_bloc.dart';
import 'package:reminder_app/domain/auth/value_objects.dart';
import 'package:reminder_app/domain/core/value_objects.dart';
import 'package:reminder_app/domain/exercise/exercise.dart';
import 'package:reminder_app/domain/exercise/i_exercise_repository.dart';
import 'package:reminder_app/domain/exercise/value_objects.dart';

class MockExercise extends Mock implements Exercise {}

// Create mock object.

class MocIExerciseRepository extends Mock implements IExerciseRepository {}

void main() {
  MockExercise mockExercise;
  MocIExerciseRepository mockIExerciseRepository;
  ExerciseFormBloc exerciseFormBloc;

  setUp(() {
    mockExercise = MockExercise();
    mockIExerciseRepository = MocIExerciseRepository();
    exerciseFormBloc = ExerciseFormBloc(mockIExerciseRepository);
  });
  group(
    'exercise bloc test',
    () {
      test(
        'initial state',
        () {
          expect(
            exerciseFormBloc.state.copyWith(
              exercise: Exercise.empty().copyWith(
                id: UniqueId.withUniqueString('1234567'),
                date: ExerciseDate(1234567),
              ),
            ),
            ExerciseFormState.initial().copyWith(
              exercise: Exercise.empty().copyWith(
                id: UniqueId.withUniqueString('1234567'),
                date: ExerciseDate(1234567),
              ),
            ),
          );
        },
      );

      blocTest('exercise form bloc test',
          build: () => exerciseFormBloc,
          act: (bloc) {
            bloc.add(ExerciseFormEvent.initialized(optionOf(
              Exercise.empty().copyWith(
                id: UniqueId.withUniqueString('1234567'),
                date: ExerciseDate(1234567),
              ),
            )));

            bloc.add(const ExerciseFormEvent.exerciseNameChanged('1234567'));
            bloc.add(
                const ExerciseFormEvent.exerciseUserNameChanged('1234567'));
          },
          expect: [
            ExerciseFormState.initial().copyWith(
                exercise: Exercise.empty().copyWith(
                  name: ExerciseName(''),
                  id: UniqueId.withUniqueString('1234567'),
                  date: ExerciseDate(1234567),
                ),
                isEditing: true),
            ExerciseFormState.initial().copyWith(
                exercise: Exercise.empty().copyWith(
                  id: UniqueId.withUniqueString('1234567'),
                  date: ExerciseDate(1234567),
                  name: ExerciseName('1234567'),
                ),
                isEditing: true),
            ExerciseFormState.initial().copyWith(
                exercise: Exercise.empty().copyWith(
                  id: UniqueId.withUniqueString('1234567'),
                  date: ExerciseDate(1234567),
                  name: ExerciseName('1234567'),
                  userName: UserName('1234567'),
                ),
                isEditing: true),
          ]);

      tearDown(
        () {
          exerciseFormBloc.close();
        },
      );
    },
  );
}
