import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:reminder_app/domain/exercise/exercise.dart';
import 'package:reminder_app/domain/exercise/exercise_failure.dart';
import 'package:reminder_app/domain/exercise/i_exercise_repository.dart';

part 'exercise_actor_event.dart';

part 'exercise_actor_state.dart';

part 'exercise_actor_bloc.freezed.dart';

@injectable
class ExerciseActorBloc extends Bloc<ExerciseActorEvent, ExerciseActorState> {
  ExerciseActorBloc(this._exerciseRepository)
      : super(const ExerciseActorState.initial());

  final IExerciseRepository _exerciseRepository;

  @override
  Stream<ExerciseActorState> mapEventToState(
    ExerciseActorEvent event,
  ) async* {
    yield const ExerciseActorState.actionInProgress();
    final possibleFailure = await _exerciseRepository.delete(event.exercise);
    yield possibleFailure.fold(
        (failure) => ExerciseActorState.deleteFailure(failure),
        (_) => const ExerciseActorState.deleteSuccess());
  }
}
