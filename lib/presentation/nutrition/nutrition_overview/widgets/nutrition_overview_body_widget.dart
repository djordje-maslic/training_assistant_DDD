import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reminder_app/application/nutrition/nutrition_watcher/nutrition_watcher_bloc.dart';
import 'package:reminder_app/presentation/nutrition/nutrition_overview/widgets/critical_failure_display_widget.dart';
import 'package:reminder_app/presentation/nutrition/nutrition_overview/widgets/error_nutrition_card_widget.dart';
import 'package:reminder_app/presentation/nutrition/nutrition_overview/widgets/nutrition_card_widget.dart';

class NutritionOverviewBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NutritionWatcherBloc, NutritionWatcherState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(
            color: Colors.pinkAccent,
            width: 100,
            height: 100,
          ),
          loadInProgress: (_) => const Center(
            child: CircularProgressIndicator(),
          ),
          loadSuccess: (state) {
            return ListView.builder(
              itemBuilder: (context, index) {
                final nutrition = state.nutrition[index];
                if (nutrition.failureOption.isSome()) {
                  return ErrorNutritionCard(nutrition: nutrition);
                } else {
                  return NutritionCard(nutrition: nutrition);
                }
              },
              itemCount: state.nutrition.size,
            );
          },
          loadFailure: (state) {
            return CriticalFailureDisplay(
              nutritionFailure: state.failure,
            );
          },
        );
      },
    );
  }
}
