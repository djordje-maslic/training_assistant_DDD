import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';
import 'package:reminder_app/domain/exercise/exercise.dart';
import 'package:reminder_app/domain/exercise/exercise_failure.dart';
import 'package:reminder_app/domain/exercise/i_exercise_repository.dart';

part 'exercise_watcher_event.dart';

part 'exercise_watcher_state.dart';

part 'exercise_watcher_bloc.freezed.dart';

@injectable
class ExerciseWatcherBloc
    extends Bloc<ExerciseWatcherEvent, ExerciseWatcherState> {
  final IExerciseRepository _exerciseRepository;

  ExerciseWatcherBloc(this._exerciseRepository)
      : super(const ExerciseWatcherState.initial());

  StreamSubscription<Either<ExerciseFailure, KtList<Exercise>>>
      _exerciseStreamSubscription;

  @override
  Stream<ExerciseWatcherState> mapEventToState(
    ExerciseWatcherEvent event,
  ) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        yield const ExerciseWatcherState.loadInProgress();
        await _exerciseStreamSubscription?.cancel();
        _exerciseStreamSubscription = _exerciseRepository
            .watchAllExercise()
            .listen((failureOrExercise) =>
                add(ExerciseWatcherEvent.exerciseReceived(failureOrExercise)));
      },
      watchUsersExercises: (e) async* {
        yield const ExerciseWatcherState.loadInProgress();
        await _exerciseStreamSubscription?.cancel();
        _exerciseStreamSubscription = _exerciseRepository
            .watchUsersExercises()
            .listen((failureOrExercise) =>
                add(ExerciseWatcherEvent.exerciseReceived(failureOrExercise)));
      },
      exerciseReceived: (e) async* {
        yield e.failureOrExercise.fold(
          (failure) => ExerciseWatcherState.loadFailure(failure),
          (exercise) => ExerciseWatcherState.loadSuccess(exercise),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _exerciseStreamSubscription?.cancel();
    return super.close();
  }
}
