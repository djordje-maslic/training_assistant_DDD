import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reminder_app/application/body_measures/body_measures_watcher/body_measures_watcher_bloc.dart';
import 'package:reminder_app/application/user/user_watcher/user_watcher_bloc.dart';
import 'package:reminder_app/domain/body_measures/body_measures.dart';
import 'package:reminder_app/presentation/body_measures/body_measures_overview/widgets/body_measures_overview_chart.dart';
import 'package:reminder_app/presentation/core/misc/unit_converter.dart';
import 'package:reminder_app/presentation/exercise/exercise_form/misc/date_time_converter.dart';
import 'package:reminder_app/presentation/router/app_router.dart';

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
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.indigo[100]),
                      elevation: MaterialStateProperty.all(10),
                      shape: MaterialStateProperty.all(
                        const StadiumBorder(),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed(
                        '/body-measures-form-page',
                        arguments: ScreenBodyMeasuresArguments(
                            lastBodyMeasuresForHintText:
                                bodyMeasuresList.isEmpty
                                    ? BodyMeasures.empty()
                                    : bodyMeasuresList[0]),
                      );
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
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(
                    columnSpacing: 10,
                    dataRowHeight: 40,
                    columns: [
                      const DataColumn(
                        label: Text(
                          'Date',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                      DataColumn(
                        label: Column(
                          children: [
                            const Text(
                              'Weight',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                            Text(context.watch<UserWatcherBloc>().state.map(
                                  initial: (_) => '',
                                  loadInProgress: (_) => '',
                                  loadSuccess: (state) =>
                                      state.user.userWeightUnit.getOrCrash(),
                                  loadFailure: (_) => 'kg',
                                )),
                          ],
                        ),
                      ),
                      DataColumn(
                        label: Column(
                          children: [
                            const Text(
                              'Height',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                            Text(context.watch<UserWatcherBloc>().state.map(
                                  initial: (_) => '',
                                  loadInProgress: (_) => '',
                                  loadSuccess: (state) =>
                                      state.user.userHeightUnit.getOrCrash(),
                                  loadFailure: (_) => 'cm',
                                )),
                          ],
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
                              showEditIcon: true, onTap: () {
                            Navigator.of(context).pushNamed(
                              '/body-measures-form-page',
                              arguments: ScreenBodyMeasuresArguments(
                                bodyMeasures: bodyMeasure,
                              ),
                            );
                          }),
                          DataCell(
                            Text(
                              unitUserWeightConverter(
                                      weight: bodyMeasure.bodyMeasuresWeight
                                          .getOrCrash(),
                                      bloc: context.watch<UserWatcherBloc>())
                                  .toStringAsFixed(2),
                              style: const TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                          DataCell(
                            Text(
                              context.watch<UserWatcherBloc>().state.map(
                                          initial: (_) => '',
                                          loadInProgress: (_) => '',
                                          loadSuccess: (state) => state
                                              .user.userHeightUnit
                                              .getOrCrash(),
                                          loadFailure: (_) => 'cm') ==
                                      'ft'
                                  ? inToFeetInStringConverter(
                                      inches: unitUserHeightConverter(
                                        height: bodyMeasure.bodyMeasuresHeight
                                            .getOrCrash(),
                                        bloc: context.watch<UserWatcherBloc>(),
                                      ),
                                    )
                                  : unitUserHeightConverter(
                                          height: bodyMeasure.bodyMeasuresHeight
                                              .getOrCrash(),
                                          bloc:
                                              context.watch<UserWatcherBloc>())
                                      .toStringAsFixed(2),
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
                BodyMeasuresOverviewChart(
                  bodyMeasuresList: bodyMeasuresList,
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
