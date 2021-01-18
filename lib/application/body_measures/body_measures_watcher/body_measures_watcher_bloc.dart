import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:reminder_app/domain/body_measures/body_measures.dart';
import 'package:reminder_app/domain/body_measures/body_measures_failures.dart';
import 'package:reminder_app/domain/body_measures/i_body_measures_repository.dart';

part 'body_measures_watcher_bloc.freezed.dart';

part 'body_measures_watcher_event.dart';

part 'body_measures_watcher_state.dart';

@injectable
class BodyMeasuresWatcherBloc
    extends Bloc<BodyMeasuresWatcherEvent, BodyMeasuresWatcherState> {
  final IBodyMeasuresRepository _iBodyMeasuresRepository;

  BodyMeasuresWatcherBloc(this._iBodyMeasuresRepository)
      : super(const BodyMeasuresWatcherState.initial());

  StreamSubscription<Either<BodyMeasuresFailure, KtList<BodyMeasures>>>
  _bodyMeasuresStreamSubscription;

  @override
  Stream<BodyMeasuresWatcherState> mapEventToState(
      BodyMeasuresWatcherEvent event,) async* {
    event.map(
        watchAllStarted: (e) async* {
          yield const BodyMeasuresWatcherState.loadInProgress();
          await _bodyMeasuresStreamSubscription?.cancel();
          _bodyMeasuresStreamSubscription = _iBodyMeasuresRepository
              .watchBodyMeasures()
              .listen((failureOrBodyMeasures) =>
              add(BodyMeasuresWatcherEvent.bodyMeasureReceived(
                  failureOrBodyMeasures)));
        },
        bodyMeasureReceived: (e) async* {
          yield e.failureOrBodyMeasures.fold(
                (failure) => BodyMeasuresWatcherState.loadFailure(failure),
                (bodyMeasure) =>
                BodyMeasuresWatcherState.loadSuccess(bodyMeasure),
          );
        },
    );
    @override
    Future<void> close() async {
      await _bodyMeasuresStreamSubscription?.cancel();
      return super.close();
    }
  }
}