import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reminder_app/application/body_measures/body_measures_watcher/body_measures_watcher_bloc.dart';
import 'package:reminder_app/domain/body_measures/body_measures.dart';

import 'package:reminder_app/presentation/exercise/exercise_form/misc/date_time_converter.dart';
import 'package:reminder_app/presentation/routes/router.gr.dart';

class BodyMeasuresDataTableWidget extends StatelessWidget {
  const BodyMeasuresDataTableWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BodyMeasuresWatcherBloc, BodyMeasuresWatcherState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Center(
            child: Column(
              children: const [CircularProgressIndicator(), Text('Initial')],
            ),
          ),
          loadInProgress: (_) => Center(
            child: Column(
              children: const [
                CircularProgressIndicator(),
                Text('Load in progress')
              ],
            ),
          ),
          loadSuccess: (stateNew) {
            final List<BodyMeasures> bodyMeasuresList =
                stateNew.bodyMeasures.asList().toList();
            for (int i = 0; i < bodyMeasuresList.length; i++) {
              for (int j = i + 1; j < bodyMeasuresList.length; j++) {
                if (bodyMeasuresList[i].bodyMeasuresDate.getOrCrash() <
                    bodyMeasuresList[j].bodyMeasuresDate.getOrCrash()) {
                  final BodyMeasures tmp = bodyMeasuresList[i];
                  bodyMeasuresList[i] = bodyMeasuresList[j];
                  bodyMeasuresList[j] = tmp;
                }
              }
            }
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: RaisedButton(color: Colors.indigo[100],elevation: 10,
                    shape: const StadiumBorder(),
                    onPressed: () {
                      ExtendedNavigator.of(context).pushBodyMeasuresFormPage(
                          bodyMeasures: null,
                          lastBodyMeasuresForHintText: bodyMeasuresList.isEmpty
                              ? BodyMeasures.empty()
                              : bodyMeasuresList[0]);
                    },
                    child: Row(
                      children: const [
                        Icon(Icons.add),
                        Text(
                          'New body measures',
                        ),
                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(scrollDirection: Axis.horizontal,
                  child: DataTable(
                    columnSpacing: 10,
                    dataRowHeight: 40,
                    columns: const [
                      DataColumn(
                        label: Text(
                          'Date',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Weight',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Height',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                    rows: bodyMeasuresList.map((bodyMeasure) {
                      return DataRow(
                        cells: [
                          DataCell(
                              Text(
                                dateTimeConverter(
                                    bodyMeasure.bodyMeasuresDate.getOrCrash()),
                                style: const TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              showEditIcon: true,
                              onTap: () {
                            ExtendedNavigator.of(context)
                                .pushBodyMeasuresFormPage(
                                    bodyMeasures: bodyMeasure,
                                    lastBodyMeasuresForHintText: null);
                          }),
                          DataCell(
                            Text(
                              bodyMeasure.bodyMeasuresWeight
                                  .getOrCrash()
                                  .toString(),
                              style: const TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                          DataCell(
                            Text(
                              bodyMeasure.bodyMeasuresHeight
                                  .getOrCrash()
                                  .toString(),
                              style: const TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      );
                    }).toList(),
                  ),
                ),
              ],
            );
          },
          loadFailure: (_) => const Text('Load failure'),
        );
      },
    );
  }
}
