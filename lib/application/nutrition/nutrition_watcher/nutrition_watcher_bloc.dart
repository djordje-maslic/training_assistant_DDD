import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';
import 'package:reminder_app/domain/nutrition/i_nutrition_repository.dart';
import 'package:reminder_app/domain/nutrition/nutrition.dart';
import 'package:reminder_app/domain/nutrition/nutrition_failures.dart';

part 'nutrition_watcher_event.dart';

part 'nutrition_watcher_state.dart';

part 'nutrition_watcher_bloc.freezed.dart';

@injectable
class NutritionWatcherBloc
    extends Bloc<NutritionWatcherEvent, NutritionWatcherState> {
  final INutritionRepository _iNutritionRepository;

  NutritionWatcherBloc(this._iNutritionRepository)
      : super(const NutritionWatcherState.initial());

  StreamSubscription<Either<NutritionFailure, KtList<Nutrition>>>
  _nutritionStreamSubscription;

  @override
  Stream<NutritionWatcherState> mapEventToState(
      NutritionWatcherEvent event,
      ) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        yield const NutritionWatcherState.loadInProgress();
        await _nutritionStreamSubscription?.cancel();
        _nutritionStreamSubscription = _iNutritionRepository
            .watchNutrition()
            .listen((failureOrNutrition) =>
            add(NutritionWatcherEvent.nutritionReceived(failureOrNutrition)));
      },
      watchUsersNutrition: (e) async* {
        yield const NutritionWatcherState.loadInProgress();
        await _nutritionStreamSubscription?.cancel();
        _nutritionStreamSubscription = _iNutritionRepository
            .watchUsersNutrition()
            .listen((failureOrNutrition) =>
            add(NutritionWatcherEvent.nutritionReceived(failureOrNutrition)));
      },
      nutritionReceived: (e) async* {
        yield e.failureOrNutrition.fold(
              (failure) => NutritionWatcherState.loadFailure(failure),
              (nutrition) => NutritionWatcherState.loadSuccess(nutrition),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _nutritionStreamSubscription?.cancel();
    return super.close();
  }
}
