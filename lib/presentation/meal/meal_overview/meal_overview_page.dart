import 'package:flutter/material.dart';
import 'package:reminder_app/application/auth/auth_bloc.dart';
import 'package:reminder_app/presentation/core/drawer.dart';
import 'package:reminder_app/presentation/core/logo_painter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MealOverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return state.maybeMap(
          orElse:(){return Scaffold(
            endDrawer: DrawerCore(),
            appBar: AppBar(
              backgroundColor: Colors.cyan,
              leading: const CustomPaint(
                painter: LogoPainter(),
              ),
              title: const Text('Meals'),
            ),
            body: const Center(child: Text('You are not authenticated'),),
          );}, unauthenticated:(_){return Scaffold(
          endDrawer: DrawerCore(),
          appBar: AppBar(
            backgroundColor: Colors.cyan,
            leading: const CustomPaint(
              painter: LogoPainter(),
            ),
            title: const Text('Meals'),
          ),
          body:const Center(child: Text('You are not authenticated'),)
        );},
          authenticated: (_) {
            return Scaffold(
              endDrawer: DrawerCore(),
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
          },
        );
      },
    );
  }
}
