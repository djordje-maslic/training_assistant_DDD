import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:reminder_app/domain/nutrition/i_nutrition_repository.dart';
import 'package:reminder_app/domain/nutrition/nutrition.dart';
import 'package:reminder_app/domain/nutrition/nutrition_failures.dart';

part 'nutrition_actor_event.dart';

part 'nutrition_actor_state.dart';

part 'nutrition_actor_bloc.freezed.dart';

@injectable
class NutritionActorBloc extends Bloc<NutritionActorEvent, NutritionActorState> {
  NutritionActorBloc(this._iNutritionRepository)
      : super(const NutritionActorState.initial());

  final INutritionRepository _iNutritionRepository;

  @override
  Stream<NutritionActorState> mapEventToState(
      NutritionActorEvent event,
      ) async* {
    yield const NutritionActorState.actionInProgress();
    final possibleFailure = await _iNutritionRepository.delete(event.nutrition);
    yield possibleFailure.fold(
            (failure) => NutritionActorState.deleteFailure(failure),
            (_) => const NutritionActorState.deleteSuccess());
  }
}
