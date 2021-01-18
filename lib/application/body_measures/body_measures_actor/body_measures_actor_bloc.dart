import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:reminder_app/domain/body_measures/body_measures.dart';
import 'package:reminder_app/domain/body_measures/body_measures_failures.dart';
import 'package:reminder_app/domain/body_measures/i_body_measures_repository.dart';

part 'body_measures_actor_bloc.freezed.dart';

part 'body_measures_actor_event.dart';

part 'body_measures_actor_state.dart';

@injectable
class BodyMeasuresActorBloc
    extends Bloc<BodyMeasuresActorEvent, BodyMeasuresActorState> {
  BodyMeasuresActorBloc(this._iBodyMeasuresRepository)
      : super(const BodyMeasuresActorState.initial());

  final IBodyMeasuresRepository _iBodyMeasuresRepository;

  @override
  Stream<BodyMeasuresActorState> mapEventToState(
    BodyMeasuresActorEvent event,
  ) async* {
    yield const BodyMeasuresActorState.actionInProgress();
    final possibleFailure =
        await _iBodyMeasuresRepository.delete(event.bodyMeasures);
    yield possibleFailure.fold(
        (failure) => BodyMeasuresActorState.deleteFailure(failure),
        (_) => const BodyMeasuresActorState.deleteSuccess());
  }
}
