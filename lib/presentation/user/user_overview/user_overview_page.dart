import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reminder_app/application/auth/auth_bloc.dart';
import 'package:reminder_app/presentation/user/user_overview/widgets/data_table.dart';

class UserOverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[300],
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.indigo[900],
            ),
            onPressed: () => Navigator.of(context).pop()),
        title: Row(
          children: [
            Icon(
              Icons.account_circle,
              color: Colors.indigo[900],
            ),
            Text(
              context.watch<AuthBloc>().state.maybeMap(
                    orElse: () => 'User',
                    authenticated: (state) =>
                        state.user.emailAddress.getOrCrash(),
                  ),
              style: TextStyle(color: Colors.indigo[900]),
            ),
          ],
        ),
      ),
      body: const UserDataTable(),
    );
  }
}
