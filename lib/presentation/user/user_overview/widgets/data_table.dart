import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:reminder_app/application/auth/auth_bloc.dart';
import 'package:reminder_app/application/user/user_watcher/user_watcher_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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

            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 250,
                        child: Text(
                          'Name: ${user.userName.getOrCrash()}',
                          style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      RaisedButton(
                        onPressed: () {
                          ExtendedNavigator.of(context)
                              .pushUserFormPage(initialUser: user);
                        },
                        child: Row(
                          children: const [
                            Icon(Icons.edit),
                            Text('Edit profile'),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                DataTable(
                  columnSpacing: 20.0,
                  dataRowHeight: 60,
                  columns: const [
                    DataColumn(
                      tooltip: 'Number of set',
                      label: Text(
                        'Weight',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Height',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ],
                  rows: [
                    DataRow(
                      cells: [
                        DataCell(
                          Text(
                            '${user.userWeight.getOrCrash().toString()} kg',
                            style: const TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ),
                        DataCell(
                          Text(
                            '${user.userHeight.getOrCrash().toString()} cm',
                            style: const TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(width: 120,
                  child: RaisedButton(
                    onPressed: () {
                      context.read<AuthBloc>().add(const AuthEvent.signOut());
                    },
                    child: Row(
                      children: const [
                        Icon(Icons.exit_to_app),
                        Text('Sign Out'),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
          loadFailure: (failure) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 300,
                        child: Text(
                          'Name: NONE',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      RaisedButton(
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
                      )
                    ],
                  ),
                ),
                DataTable(
                  columnSpacing: 20.0,
                  dataRowHeight: 60,
                  columns: const [
                    DataColumn(
                      tooltip: 'Number of set',
                      label: Text(
                        'Weight',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Height',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ],
                  rows: const [
                    DataRow(
                      cells: [
                        DataCell(
                          Text(
                            '0.0',
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ),
                        DataCell(
                          Text(
                            '0.0',
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ],
                    ),
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
