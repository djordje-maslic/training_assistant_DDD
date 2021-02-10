import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reminder_app/application/auth/auth_bloc.dart';
import 'package:reminder_app/application/nutrition/nutrition_actor/nutrition_actor_bloc.dart';
import 'package:reminder_app/application/nutrition/nutrition_watcher/nutrition_watcher_bloc.dart';
import 'package:reminder_app/injectable.dart';
import 'package:reminder_app/presentation/core/drawer.dart';
import 'package:reminder_app/presentation/core/logo_painter.dart';
import 'package:reminder_app/presentation/nutrition/nutrition_overview/widgets/nutrition_overview_body_widget.dart';
import 'package:reminder_app/presentation/routes/router.gr.dart';

class NutritionOverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NutritionWatcherBloc>(
          create: (context) => getIt<NutritionWatcherBloc>()
            ..add(
              const NutritionWatcherEvent.watchUsersNutrition(),
            ),
        ),
        BlocProvider<NutritionActorBloc>(
          create: (context) => getIt<NutritionActorBloc>(),
        )
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              state.maybeMap(
                unauthenticated: (_) {
                  ExtendedNavigator.of(context).replace(Routes.splashPage);
                },
                orElse: () {},
              );
            },
          ),
          BlocListener<NutritionActorBloc, NutritionActorState>(
              listener: (context, state) {
            state.maybeMap(
                deleteFailure: (state) {
                  FlushbarHelper.createError(
                    message: state.nutritionFailure.map(
                      unexpected: (_) =>
                          'Unexpected error occurred while deleting, please contact support.',
                      insufficientPermission: (_) =>
                          'Insufficient permissions ❌',
                      unableToUpdate: (_) => 'Impossible error',
                    ),
                    duration: const Duration(seconds: 5),
                  ).show(context);
                },
                orElse: () {});
          })
        ],
        child: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            return state.maybeMap(
              orElse: () {
                return Scaffold(
                  backgroundColor: Colors.amber,
                  endDrawer: DrawerCore(),
                  appBar: AppBar(
                    leading: const CustomPaint(
                      painter: LogoPainter(),
                    ),
                    title: const Text('Nutrition'),
                  ),
                  body: const Center(
                    child: Text('You are not authenticated'),
                  ),
                );
              },
              unauthenticated: (_) {
                return Scaffold(
                  backgroundColor: Colors.amber,
                  endDrawer: DrawerCore(),
                  appBar: AppBar(
                    leading: const CustomPaint(
                      painter: LogoPainter(),
                    ),
                    title: const Text('Nutrition'),
                  ),
                  body: const Center(
                    child: Text('You are not authenticated'),
                  ),
                );
              },
              authenticated: (_) {
                return Scaffold(
                  backgroundColor: Colors.amber,
                  endDrawer: DrawerCore(),
                  appBar: AppBar(
                    leading: const CustomPaint(
                      painter: LogoPainter(),
                    ),
                    title: const Text('Nutrition'),
                  ),
                  floatingActionButton: FloatingActionButton(
                    onPressed: () {
                      ExtendedNavigator.of(context)
                          .pushNutritionFormPage(editedNutrition: null);
                    },
                    child: const Icon(Icons.add),
                  ),
                  body: NutritionOverviewBody(),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
