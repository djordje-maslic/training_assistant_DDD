import 'package:auto_route/auto_route_annotations.dart';
import 'package:reminder_app/presentation/body_measures/body_measures_form/body_measures_form_page.dart';
import 'package:reminder_app/presentation/exercise/exercise_form/exercise_form_page.dart';
import 'package:reminder_app/presentation/exercise/exercise_overview/exercise_overview_page.dart';
import 'package:reminder_app/presentation/nutrition/nutrition_form/nutrition_form_page.dart';
import 'package:reminder_app/presentation/nutrition/nutrition_overview/nutrition_overview.page.dart';
import 'package:reminder_app/presentation/sign_in/sign_in_page.dart';
import 'package:reminder_app/presentation/splash/splash_page.dart';
import 'package:reminder_app/presentation/user/user_form/user_form_page.dart';
import 'package:reminder_app/presentation/user/user_overview/user_overview_page.dart';

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    // initial route is named "/"
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(
      page: SignIn,
      fullscreenDialog: true,
    ),
    MaterialRoute(
      page: ExerciseOverviewPage,
    ),
    MaterialRoute(
      page: ExerciseFormPage,
      fullscreenDialog: true,
    ),
    MaterialRoute(
      page: UserOverviewPage,
    ),
    MaterialRoute(
      page: UserFormPage,
      fullscreenDialog: true,
    ),
    MaterialRoute(
      page: BodyMeasuresFormPage,
      fullscreenDialog: true,
    ),
    MaterialRoute(
      page: NutritionOverviewPage,
    ),
    MaterialRoute(
      page: NutritionFormPage,
      fullscreenDialog: true,
    ),
  ],
)
class $Router {}
