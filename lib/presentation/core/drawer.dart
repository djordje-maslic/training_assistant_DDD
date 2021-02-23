import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reminder_app/application/auth/auth_bloc.dart';
import 'package:reminder_app/application/user/user_watcher/user_watcher_bloc.dart';
import 'package:reminder_app/presentation/routes/router.gr.dart';

class DrawerCore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Column(
              children: [
                context.watch<AuthBloc>().state.map(
                      initial: (_) => const Text(''),
                      authenticated: (authUser) => FlatButton(
                        onPressed: () {
                          context
                              .read<UserWatcherBloc>()
                              .add(const UserWatcherEvent.watchUser());
                          ExtendedNavigator.of(context)
                              .popAndPush(Routes.userOverviewPage);
                        },
                        child: Column(
                          children: [
                            const Icon(
                              Icons.account_circle,
                              size: 80,
                              color: Colors.amber,
                            ),
                            Text(
                              authUser.user.emailAddress.getOrCrash(),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              'View Profile',
                              style: TextStyle(color: Colors.blueAccent),
                            ),
                          ],
                        ),
                      ),
                      unauthenticated: (_) => Column(
                        children: [
                          const Icon(
                            Icons.account_circle,
                            size: 80,
                            color: Colors.amber,
                          ),
                          RaisedButton(
                            onPressed: () {
                              ExtendedNavigator.of(context).pushSignIn();
                            },
                            child: const Text('Sign in/ Register'),
                          ),
                        ],
                      ),
                    ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RaisedButton(
              color: Colors.grey,
              onPressed: () {
                ExtendedNavigator.of(context).popAndPush(Routes.splashPage);
              },
              child: Row(
                children: const [Icon(Icons.home), Text('Home')],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RaisedButton(
              color: Colors.amber,
              onPressed: () {
                context
                    .read<UserWatcherBloc>()
                    .add(const UserWatcherEvent.watchUser());
                context.read<AuthBloc>().state.map(
                      initial: (_) {},
                      authenticated: (_) => ExtendedNavigator.of(context)
                          .popAndPush(Routes.exerciseOverviewPage),
                      unauthenticated: (_) =>
                          ExtendedNavigator.of(context).pushSignIn(),
                    );
              },
              child: Row(
                children: const [Icon(Icons.fitness_center), Text('Exercises')],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RaisedButton(
              color: Colors.cyan,
              onPressed: () {
                context
                    .read<UserWatcherBloc>()
                    .add(const UserWatcherEvent.watchUser());
                context.read<AuthBloc>().state.map(
                      initial: (_) {},
                      authenticated: (_) => ExtendedNavigator.of(context)
                          .popAndPush(Routes.nutritionOverviewPage),
                      unauthenticated: (_) =>
                          ExtendedNavigator.of(context).pushSignIn(),
                    );
              },
              child: Row(
                children: const [Icon(Icons.restaurant), Text('Nutrition')],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
