import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:reminder_app/application/auth/auth_bloc.dart';
import 'package:reminder_app/application/body_measures/body_measures_watcher/body_measures_watcher_bloc.dart';
import 'package:reminder_app/application/user/user_watcher/user_watcher_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reminder_app/injectable.dart';
import 'package:reminder_app/presentation/body_measures/body_measures_overview/widgets/body_measures_data_table_widget.dart';
import 'package:reminder_app/presentation/exercise/exercise_form/misc/date_time_converter.dart';
import 'package:reminder_app/presentation/routes/router.gr.dart';

class UserDataTable extends StatelessWidget {
  const UserDataTable({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserWatcherBloc, UserWatcherState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => const CircularProgressIndicator(),
          loadInProgress: (_) => const CircularProgressIndicator(),
          loadSuccess: (stateN) {
            final user = stateN.user;

            return ListView(
              children: [
                SingleChildScrollView(scrollDirection: Axis.horizontal,
                  child: DataTable(
                    columnSpacing: 20.0,
                    dataRowHeight: 40,
                    headingRowHeight: 40,
                    columns: const [
                      DataColumn(
                        label: Text(
                          'User name',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                      DataColumn(
                        tooltip: 'Number of set',
                        label: Text(
                          'Date of birth',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Gender',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                    rows: [
                      DataRow(
                        cells: [
                          DataCell(
                            Text(
                              user.userName.getOrCrash() ?? 'none',
                              style: const TextStyle(
                                fontSize: 20,
                              ),
                            ),showEditIcon: true,onTap: ()=> ExtendedNavigator.of(context)
                              .pushUserFormPage(initialUser: user),
                          ),
                          DataCell(
                            Text(
                              '${dateTimeConverter(user.userDateOfBirth.getOrCrash())} ',
                              style: const TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                          DataCell(
                            Text(
                              user.userGender.getOrCrash() ? 'male' : 'female',
                              style: const TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                BlocProvider<BodyMeasuresWatcherBloc>(
                  create: (context) => getIt<BodyMeasuresWatcherBloc>()
                    ..add(
                      const BodyMeasuresWatcherEvent.watchAllStarted(),
                    ),
                  child: const BodyMeasuresDataTableWidget(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 120,
                      child: RaisedButton(color: Colors.indigo[100],elevation: 10,
                        onPressed: () {

                          context
                              .read<AuthBloc>()
                              .add(const AuthEvent.signOut());

                        },
                        child: Row(
                          children: const [
                            Icon(Icons.exit_to_app),
                            Text('Sign Out'),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 200,)
                  ],
                ),
              ],
            );
          },
          loadFailure: (failure) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(color: Colors.indigo[100],
                    onPressed: () {
                      ExtendedNavigator.of(context)
                          .pushUserFormPage(initialUser: null);
                    },
                    child: Row(
                      children: const [
                        Icon(Icons.edit),
                        Text('Edit profile'),
                      ],
                    ),
                  ),
                ),
                DataTable(
                  columnSpacing: 20.0,
                  dataRowHeight: 60,
                  columns: const [
                    DataColumn(

                      label: Text(
                        'User name',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                    DataColumn(
                      tooltip: 'Number of set',
                      label: Text(
                        'Date of birth',
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
                  rows: const [
                    DataRow(
                      cells: [
                        DataCell(
                          Text(
                            'none',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                        DataCell(
                          Text(
                            'none',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                        DataCell(
                          Text(
                            '0.0',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 120,
                      child: RaisedButton(
                        onPressed: () {
                          context
                              .read<AuthBloc>()
                              .add(const AuthEvent.signOut());
                        },
                        child: Row(
                          children: const [
                            Icon(Icons.exit_to_app),
                            Text('Sign Out'),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 200,)
                  ],
                ),
              ],
            );
          },
        );
      },
    );
  }
}
