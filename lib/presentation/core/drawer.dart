import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reminder_app/application/auth/auth_bloc.dart';
import 'package:reminder_app/application/user/user_watcher/user_watcher_bloc.dart';

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
                      authenticated: (authUser) => TextButton(
                        onPressed: () {
                          context
                              .read<UserWatcherBloc>()
                              .add(const UserWatcherEvent.watchUser());
                          Navigator.of(context)
                              .popAndPushNamed('/user-overview-page');
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
                              height: 8,
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
                          TextButton(
                            onPressed: () {
                                Navigator.of(context).pushNamed('/sign-in');
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
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.grey),
              ),
              onPressed: () {
                Navigator.of(context).popAndPushNamed('/');
              },
              child: Row(
                children: const [Icon(Icons.home), Text('Home')],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.amber),
              ),
              onPressed: () {
                context
                    .read<UserWatcherBloc>()
                    .add(const UserWatcherEvent.watchUser());
                context.read<AuthBloc>().state.map(
                      initial: (_) {},
                      authenticated: (_) => Navigator.of(context)
                          .popAndPushNamed('/exercise-overview-page'),
                      unauthenticated: (_) =>
                          Navigator.of(context).pushNamed('/sign-in'),
                    );
              },
              child: Row(
                children: const [Icon(Icons.fitness_center), Text('Exercises')],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.cyan),
              ),
              onPressed: () {
                context
                    .read<UserWatcherBloc>()
                    .add(const UserWatcherEvent.watchUser());
                context.read<AuthBloc>().state.map(
                      initial: (_) {},
                      authenticated: (_) => Navigator.of(context)
                          .popAndPushNamed('/nutrition-overview-page'),
                      unauthenticated: (_) =>
                          Navigator.of(context).pushNamed('/sign-in'),
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
