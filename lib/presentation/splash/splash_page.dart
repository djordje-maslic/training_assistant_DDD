import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reminder_app/application/auth/auth_bloc.dart';
import 'package:reminder_app/application/exercise/exercise_watcher/exercise_watcher_bloc.dart';
import 'package:reminder_app/injectable.dart';
import 'package:reminder_app/presentation/core/logo_painter.dart';
import 'package:reminder_app/presentation/routes/router.gr.dart';
import 'package:reminder_app/presentation/splash/widgets/splash_body.dart';


class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ExerciseWatcherBloc>(
      create: (context) => getIt<ExerciseWatcherBloc>()
        ..add(const ExerciseWatcherEvent.watchAllStarted()),
      child: Scaffold(
          endDrawer: Drawer(
            child: ListView(
              children: [
                DrawerHeader(
                    child: FlatButton(onPressed: (){}, child:Column(
                      children: [
                        Expanded(
                          child: IconButton(
                            icon: const Icon(Icons.account_circle,size: 80,color: Colors.amber,),
                            onPressed: () {
                              // TODO: complete user
                            },
                          ),
                        ),
                        context.watch<AuthBloc>().state.map(
                            initial: (_) => const Text(''),
                            authenticated: (authUser) =>
                                Text(authUser.user.emailAddress.getOrCrash()),
                            unauthenticated: (_) => RaisedButton(
                              onPressed: () {
                                context.read<AuthBloc>().state.map(
                                  initial: (_) {},
                                  authenticated: (_) =>
                                      ExtendedNavigator.of(context)
                                          .pushExerciseOverviewPage(),
                                  unauthenticated: (_) =>
                                      ExtendedNavigator.of(context)
                                          .pushSignIn(),
                                );
                              },
                              child: const Text('Sign in/ Register'),
                            ))
                      ],
                    ) )),
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
                      }, child: Row(children:const [ Icon(Icons.fitness_center),Text('Exercises')],),
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
                    }, child: Row(children:const [ Icon(Icons.restaurant),Text('Meals')],),
                  ),
                ),
              ],
            ),
          ),
          appBar: AppBar(
            leading:const CustomPaint(

              painter: LogoPainter(),

            ),
            title: const Text('Home'),
          ),
          body: SplashBody()),
    );
  }
}

