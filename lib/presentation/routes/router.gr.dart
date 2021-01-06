// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../domain/exercise/exercise.dart';
import '../exercise/exercise_form/exercise_form_page.dart';
import '../exercise/exercise_overview/exercise_overview_page.dart';
import '../meal/meal_overview/meal_overview_page.dart';
import '../sign_in/sign_in_page.dart';
import '../splash/splash_page.dart';

class Routes {
  static const String splashPage = '/';
  static const String signIn = '/sign-in';
  static const String exerciseOverviewPage = '/exercise-overview-page';
  static const String exerciseFormPage = '/exercise-form-page';
  static const String mealOverviewPage = '/meal-overview-page';
  static const all = <String>{
    splashPage,
    signIn,
    exerciseOverviewPage,
    exerciseFormPage,
    mealOverviewPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashPage, page: SplashPage),
    RouteDef(Routes.signIn, page: SignIn),
    RouteDef(Routes.exerciseOverviewPage, page: ExerciseOverviewPage),
    RouteDef(Routes.exerciseFormPage, page: ExerciseFormPage),
    RouteDef(Routes.mealOverviewPage, page: MealOverviewPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SplashPage(),
        settings: data,
      );
    },
    SignIn: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignIn(),
        settings: data,
      );
    },
    ExerciseOverviewPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ExerciseOverviewPage(),
        settings: data,
      );
    },
    ExerciseFormPage: (data) {
      final args = data.getArgs<ExerciseFormPageArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => ExerciseFormPage(
          key: args.key,
          editedExercise: args.editedExercise,
        ),
        settings: data,
        fullscreenDialog: true,
      );
    },
    MealOverviewPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => MealOverviewPage(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension RouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushSplashPage() => push<dynamic>(Routes.splashPage);

  Future<dynamic> pushSignIn() => push<dynamic>(Routes.signIn);

  Future<dynamic> pushExerciseOverviewPage() =>
      push<dynamic>(Routes.exerciseOverviewPage);

  Future<dynamic> pushExerciseFormPage({
    Key key,
    @required Exercise editedExercise,
  }) =>
      push<dynamic>(
        Routes.exerciseFormPage,
        arguments:
            ExerciseFormPageArguments(key: key, editedExercise: editedExercise),
      );

  Future<dynamic> pushMealOverviewPage() =>
      push<dynamic>(Routes.mealOverviewPage);
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// ExerciseFormPage arguments holder class
class ExerciseFormPageArguments {
  final Key key;
  final Exercise editedExercise;
  ExerciseFormPageArguments({this.key, @required this.editedExercise});
}
