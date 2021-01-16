// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../domain/auth/user.dart';
import '../../domain/exercise/exercise.dart';
import '../exercise/exercise_form/exercise_form_page.dart';
import '../exercise/exercise_overview/exercise_overview_page.dart';
import '../meal/meal_overview/meal_overview_page.dart';
import '../sign_in/sign_in_page.dart';
import '../splash/splash_page.dart';
import '../user/user_form/user_form_page.dart';
import '../user/user_overview/user_overview_page.dart';

class Routes {
  static const String splashPage = '/';
  static const String signIn = '/sign-in';
  static const String exerciseOverviewPage = '/exercise-overview-page';
  static const String exerciseFormPage = '/exercise-form-page';
  static const String mealOverviewPage = '/meal-overview-page';
  static const String userOverviewPage = '/user-overview-page';
  static const String userFormPage = '/user-form-page';
  static const all = <String>{
    splashPage,
    signIn,
    exerciseOverviewPage,
    exerciseFormPage,
    mealOverviewPage,
    userOverviewPage,
    userFormPage,
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
    RouteDef(Routes.userOverviewPage, page: UserOverviewPage),
    RouteDef(Routes.userFormPage, page: UserFormPage),
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
    UserOverviewPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => UserOverviewPage(),
        settings: data,
      );
    },
    UserFormPage: (data) {
      final args = data.getArgs<UserFormPageArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => UserFormPage(
          initialUser: args.initialUser,
          key: args.key,
        ),
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

  Future<dynamic> pushUserOverviewPage() =>
      push<dynamic>(Routes.userOverviewPage);

  Future<dynamic> pushUserFormPage({
    @required User initialUser,
    Key key,
  }) =>
      push<dynamic>(
        Routes.userFormPage,
        arguments: UserFormPageArguments(initialUser: initialUser, key: key),
      );
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

/// UserFormPage arguments holder class
class UserFormPageArguments {
  final User initialUser;
  final Key key;
  UserFormPageArguments({@required this.initialUser, this.key});
}
