
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';
import 'package:mockito/mockito.dart';
import 'package:reminder_app/application/exercise/form_bloc/exercise_form_bloc.dart';
import 'package:reminder_app/domain/exercise/exercise.dart';
import 'package:reminder_app/domain/exercise/i_exercise_repository.dart';
import 'package:reminder_app/domain/exercise/sets.dart';
import 'package:reminder_app/domain/exercise/value_objects.dart';

class MockExercise extends Mock implements Exercise {}

// Create mock object.

class MocIExerciseRepository extends Mock
    implements IExerciseRepository {}

void main() {
  MockExercise mockExercise;
  MocIExerciseRepository mockIExerciseRepository;
  ExerciseFormBloc exerciseFormBloc;

  setUp(() {
    mockExercise = MockExercise();
    mockIExerciseRepository = MocIExerciseRepository();
    exerciseFormBloc = ExerciseFormBloc(mockIExerciseRepository);
  });
  group('exercise bloc test', () {
    test(
      'initial state',
          () {
        exerciseFormBloc
            .add(ExerciseFormEvent.initialized(some(Exercise.empty())));
        expect(
           ExerciseFormState.initial(),
         ''
        );

      },
    );




  tearDown(() {
    exerciseFormBloc.close();
  });});
}