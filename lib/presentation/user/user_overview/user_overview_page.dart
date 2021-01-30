import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reminder_app/application/auth/auth_bloc.dart';
import 'package:reminder_app/application/user/user_watcher/user_watcher_bloc.dart';
import 'package:reminder_app/injectable.dart';
import 'package:reminder_app/presentation/routes/router.gr.dart';
import 'package:reminder_app/presentation/user/user_overview/widgets/data_table.dart';

class UserOverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<UserWatcherBloc>(
      create: (context) => getIt<UserWatcherBloc>()
        ..add(
          const UserWatcherEvent.watchUser(),
        ),
      child: Scaffold(
        backgroundColor: Colors.amber[300],
        appBar: AppBar(
          leading: IconButton(
              icon:  Icon(Icons.arrow_back,color: Colors.grey[800],),
              onPressed: () => ExtendedNavigator.of(context).pushSplashPage()),
          title: Row(
            children: [
               Icon(Icons.account_circle,color:Colors.grey[800],),
              Text(
                context.watch<AuthBloc>().state.maybeMap(
                      orElse: () => 'User',
                      authenticated: (state) =>
                          state.user.emailAddress.getOrCrash(),
                    ),style: TextStyle(color: Colors.grey[800]),
              ),
            ],
          ),
        ),
        body: const UserDataTable(),
      ),
    );
  }
}
