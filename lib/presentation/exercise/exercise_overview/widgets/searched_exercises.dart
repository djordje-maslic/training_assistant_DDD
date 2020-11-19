import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:reminder_app/application/exercise/exercise_watcher/exercise_watcher_bloc.dart';

class SearchedExercises extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final searchState = useState(false);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: InkResponse(
        onTap: () {
          searchState.value = !searchState.value;
          context.read<ExerciseWatcherBloc>().add(searchState.value
              ? const ExerciseWatcherEvent.watchSearchedExercises()
              : const ExerciseWatcherEvent.watchAllStarted());
        },
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 1000),
          transitionBuilder: (child, animation) => ScaleTransition(
            scale: animation,
            child: child,
          ),
          child: searchState.value
              ? const Icon(
                  Icons.reply_all_outlined,
                  key: Key('all'),
                )
              : const Icon(
                  Icons.search,
                  key: Key('search'),
                ),
        ),
      ),
    );
  }
}
