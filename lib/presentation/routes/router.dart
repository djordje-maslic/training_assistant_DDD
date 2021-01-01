import 'package:auto_route/auto_route_annotations.dart';
import 'package:reminder_app/presentation/exercise/exercise_form/exercise_form_page.dart';
import 'package:reminder_app/presentation/exercise/exercise_overview/exercise_overview_page.dart';
import 'package:reminder_app/presentation/sign_in/sign_in_page.dart';
import 'package:reminder_app/presentation/splash/splash_page.dart';

@MaterialAutoRouter(generateNavigationHelperExtension: true
  ,routes: <AutoRoute>[
    // initial route is named "/"
    MaterialRoute(page: SplashPage,initial: true),
    MaterialRoute(page: SignIn,),
    MaterialRoute(page: ExerciseOverviewPage,),
    MaterialRoute(page: ExerciseFormPage,fullscreenDialog: true),
  ],
)
class $Router {}