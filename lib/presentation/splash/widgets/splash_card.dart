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
        child: Column(
          children: [
            if (exercise.setsList.length > 0)
              Card(
                child: LineChartSample2(
                  list: exercise.setsList,
                ),
              ),
            Card(
              child: Column(children: [
                Row(children: [
                  Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.amber),
                    width: 50,
                    height: 50,
                    child:const Center(child:  Text('MD',style: TextStyle(fontSize: 20),)),
                  ),
                  const SizedBox(width: 10,),
                  Text(
                    exercise.name.getOrCrash(),
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  if (exercise.setsList.length > 0) ...[
                    Column(
                      children: [
                        Text(
                          'Total Reps:${repetitionsCombiner(exercise.setsList)}',
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Max Reps in Set:${repetitionsMax(exercise.setsList)}',
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ]),
                Text(
                  exerciseTimeFromNow(exercise),
                ),
                if (exercise.setsList.length > 0) ...[
                  const SizedBox(
                    height: 4,
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

