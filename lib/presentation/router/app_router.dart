import 'package:flutter/material.dart';
import 'package:reminder_app/domain/auth/user.dart';
import 'package:reminder_app/domain/body_measures/body_measures.dart';
import 'package:reminder_app/domain/exercise/exercise.dart';
import 'package:reminder_app/domain/nutrition/nutrition.dart';
import 'package:reminder_app/presentation/body_measures/body_measures_form/body_measures_form_page.dart';
import 'package:reminder_app/presentation/exercise/exercise_form/exercise_form_page.dart';
import 'package:reminder_app/presentation/exercise/exercise_overview/exercise_overview_page.dart';
import 'package:reminder_app/presentation/nutrition/nutrition_form/nutrition_form_page.dart';
import 'package:reminder_app/presentation/nutrition/nutrition_overview/nutrition_overview.page.dart';
import 'package:reminder_app/presentation/sign_in/sign_in_page.dart';
import 'package:reminder_app/presentation/splash/splash_page.dart';
import 'package:reminder_app/presentation/user/user_form/user_form_page.dart';
import 'package:reminder_app/presentation/user/user_overview/user_overview_page.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => SplashPage());
        break;
      case '/sign-in':
        return MaterialPageRoute(builder: (_) => SignIn());
        break;
      case '/exercise-overview-page':
        return MaterialPageRoute(builder: (_) => ExerciseOverviewPage());
        break;
      case '/exercise-form-page':
        final Exercise editedExercise = routeSettings.arguments as Exercise;
        return MaterialPageRoute(
          builder: (_) => ExerciseFormPage(
            editedExercise: editedExercise,
          ),
          fullscreenDialog: true,
        );
        break;
      case '/user-overview-page':
        return MaterialPageRoute(builder: (_) => UserOverviewPage());
        break;
      case '/user-form-page':
        final User initialUser = routeSettings.arguments as User;

        return MaterialPageRoute(
          builder: (_) => UserFormPage(
            initialUser: initialUser,
          ),
          fullscreenDialog: true,
        );
        break;
      case '/body-measures-form-page':
       final ScreenBodyMeasuresArguments screenBodyMeasuresArguments= routeSettings.arguments as ScreenBodyMeasuresArguments;

        return MaterialPageRoute(
          builder: (_) => BodyMeasuresFormPage(
            lastBodyMeasuresForHintText: screenBodyMeasuresArguments.lastBodyMeasuresForHintText,
            bodyMeasures: screenBodyMeasuresArguments.bodyMeasures,
          ),
          fullscreenDialog: true,
        );
        break;
      case '/nutrition-overview-page':
        return MaterialPageRoute(
          builder: (_) => NutritionOverviewPage(),
        );
        break;
      case '/nutrition-form-page':
        final Nutrition editedNutrition = routeSettings.arguments as Nutrition;

        return MaterialPageRoute(
          builder: (_) => NutritionFormPage(
            editedNutrition: editedNutrition,
          ),
          fullscreenDialog: true,
        );
        break;
      default:
        return null;
    }
  }
}

class ScreenBodyMeasuresArguments {
  final BodyMeasures lastBodyMeasuresForHintText;
  final BodyMeasures bodyMeasures;

  ScreenBodyMeasuresArguments({
    this.lastBodyMeasuresForHintText,
    this.bodyMeasures,
  });
}
