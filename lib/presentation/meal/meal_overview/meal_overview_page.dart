import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:reminder_app/application/auth/auth_bloc.dart';
import 'package:reminder_app/presentation/core/logo_painter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reminder_app/presentation/routes/router.gr.dart';

class MealOverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Column(
                children: [
                  context.watch<AuthBloc>().state.map(
                        initial: (_) => const Text(''),
                        authenticated: (authUser) => FlatButton(
                          onPressed: () {
                            ExtendedNavigator.of(context)
                                .pushUserOverviewPage();
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
                  context.read<AuthBloc>().state.map(
                        initial: (_) {},
                        authenticated: (_) =>
                            ExtendedNavigator.of(context).pushSplashPage(),
                        unauthenticated: (_) =>
                            ExtendedNavigator.of(context).pushSignIn(),
                      );
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
                  context.read<AuthBloc>().state.map(
                        initial: (_) {},
                        authenticated: (_) => ExtendedNavigator.of(context)
                            .pushExerciseOverviewPage(),
                        unauthenticated: (_) =>
                            ExtendedNavigator.of(context).pushSignIn(),
                      );
                },
                child: Row(
                  children: const [
                    Icon(Icons.fitness_center),
                    Text('Exercises')
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                color: Colors.cyan,
                onPressed: () {
                  context.read<AuthBloc>().state.map(
                        initial: (_) {},
                        authenticated: (_) => ExtendedNavigator.of(context)
                            .pushMealOverviewPage(),
                        unauthenticated: (_) =>
                            ExtendedNavigator.of(context).pushSignIn(),
                      );
                },
                child: Row(
                  children: const [
                    Icon(Icons.restaurant),
                    Text('Meals'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        leading: const CustomPaint(
          painter: LogoPainter(),
        ),
        title: const Text('Meals'),
      ),
      body: ListView.builder(
          itemCount: 8,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.cyanAccent,
              child: Text('$index'),
            );
          }),
    );
  }
}
