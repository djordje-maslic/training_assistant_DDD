import 'package:flutter/material.dart';
import 'package:kt_dart/kt.dart';
import 'package:reminder_app/domain/exercise/exercise.dart';
import 'package:reminder_app/domain/exercise/value_objects.dart';
import 'package:reminder_app/presentation/splash/misc/exercise_time_from_now.dart';
import 'package:reminder_app/presentation/splash/misc/repetitions_combiner.dart';
import 'package:reminder_app/presentation/splash/misc/repetitions_max.dart';
import 'package:reminder_app/presentation/splash/widgets/line_chart.dart';
import 'package:reminder_app/presentation/splash/widgets/set_display.dart';

class SplashCard extends StatelessWidget {
  final Exercise exercise;

  const SplashCard({Key key, @required this.exercise}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 8.0, right: 8.0, top: 20.0, bottom: 8.0),
      child: Card(
        color: Colors.amber[500],
        child: Column(
          children: [
            if (exercise.setsList.length > 0)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: LineChartSample2(
                  list: exercise.setsList,
                ),
              ),
            Card(
              color: Colors.amber[500],
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: [
                  Row(children: [
                    Card(
                      color: Colors.indigo[100],
                      elevation: 10,
                      shape: const StadiumBorder(),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                            child: Text(
                          exercise.userName
                              .getOrCrash()
                              .substring(0, 2)
                              .toUpperCase(),
                          style: TextStyle(
                              fontSize: 20, color: Colors.indigo[900]),
                        )),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Card(
                      color: Colors.transparent,
                      elevation: 10,
                      child: Text(
                        exercise.name.getOrCrash(),
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.indigo[900]),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ]),
                  Text(
                    exerciseTimeFromNow(exercise),
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  if (exercise.setsList.length > 0) ...[
                    const SizedBox(
                      height: 4,
                    ),
                    Column(

                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Total Reps:',
                              style: TextStyle(
                                  color: Colors.indigo[300],
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              repetitionsCombiner(exercise.setsList),
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Max Reps in Set:',
                              style: TextStyle(
                                  color: Colors.indigo[300],
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              repetitionsMax(exercise.setsList),
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Wrap(
                      children: [
                        ...exercise.setsList
                            .getOrCrash()
                            .map((set) => SetDisplay(
                                  sets: set,
                                  setList: exercise.setsList,
                                ))
                            .iter,
                      ],
                    )
                  ],
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<int> setsListToIntLis(SetsList list) {
  final List<int> result = list
      .getOrCrash()
      .map((set) => set.number.getOrCrash())
      .map((numb) => int.parse(numb.toString()))
      .asList();
  return result;
}
