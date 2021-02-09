// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'application/auth/auth_bloc.dart';
import 'application/body_measures/body_measures_actor/body_measures_actor_bloc.dart';
import 'application/body_measures/body_measures_form/body_measures_form_bloc.dart';
import 'infrastructure/body_measures/body_measures_repository.dart';
import 'application/body_measures/body_measures_watcher/body_measures_watcher_bloc.dart';
import 'application/exercise/exercise_actor/exercise_actor_bloc.dart';
import 'application/exercise/form_bloc/exercise_form_bloc.dart';
import 'infrastructure/exercise/exercise_repository.dart';
import 'application/exercise/exercise_watcher/exercise_watcher_bloc.dart';
import 'infrastructure/auth/firebase_auth_facade.dart';
import 'infrastructure/core/firebase_injectable_module.dart';
import 'domain/auth/i_auth_facade.dart';
import 'domain/body_measures/i_body_measures_repository.dart';
import 'domain/exercise/i_exercise_repository.dart';
import 'domain/nutrition/i_nutrition_repository.dart';
import 'domain/auth/i_user_repository.dart';
import 'application/nutrition/nutrition_actor/nutrition_actor_bloc.dart';
import 'application/nutrition/nutrition_form/nutrition_form_bloc.dart';
import 'infrastructure/nutrition/nutrition_repository.dart';
import 'application/nutrition/nutrition_watcher/nutrition_watcher_bloc.dart';
import 'application/auth/signIn/sign_in_form_bloc.dart';
import 'application/user/user_actor/user_actor_bloc.dart';
import 'application/user/user_form_bloc/user_form_bloc.dart';
import 'infrastructure/auth/user_repository.dart';
import 'application/user/user_watcher/user_watcher_bloc.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<FirebaseAuth>(() => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<FirebaseFirestore>(
      () => firebaseInjectableModule.firebaseFirestore);
  gh.lazySingleton<GoogleSignIn>(() => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<IAuthFacade>(
      () => FirebaseAuthFacade(get<FirebaseAuth>(), get<GoogleSignIn>()));
  gh.lazySingleton<IBodyMeasuresRepository>(
      () => BodyMeasuresRepository(get<FirebaseFirestore>()));
  gh.lazySingleton<IExerciseRepository>(
      () => ExerciseRepository(get<FirebaseFirestore>()));
  gh.lazySingleton<INutritionRepository>(
      () => NutritionRepository(get<FirebaseFirestore>()));
  gh.lazySingleton<IUserRepository>(
      () => UserRepository(get<FirebaseFirestore>()));
  gh.factory<NutritionActorBloc>(
      () => NutritionActorBloc(get<INutritionRepository>()));
  gh.factory<NutritionFormBloc>(
      () => NutritionFormBloc(get<INutritionRepository>()));
  gh.factory<NutritionWatcherBloc>(
      () => NutritionWatcherBloc(get<INutritionRepository>()));
  gh.factory<SignInFormBloc>(() => SignInFormBloc(get<IAuthFacade>()));
  gh.factory<UserActorBloc>(() => UserActorBloc(get<IUserRepository>()));
  gh.factory<UserFormBloc>(() => UserFormBloc(get<IUserRepository>()));
  gh.factory<UserWatcherBloc>(() => UserWatcherBloc(get<IUserRepository>()));
  gh.factory<AuthBloc>(() => AuthBloc(get<IAuthFacade>()));
  gh.factory<BodyMeasuresActorBloc>(
      () => BodyMeasuresActorBloc(get<IBodyMeasuresRepository>()));
  gh.factory<BodyMeasuresFormBloc>(
      () => BodyMeasuresFormBloc(get<IBodyMeasuresRepository>()));
  gh.factory<BodyMeasuresWatcherBloc>(
      () => BodyMeasuresWatcherBloc(get<IBodyMeasuresRepository>()));
  gh.factory<ExerciseActorBloc>(
      () => ExerciseActorBloc(get<IExerciseRepository>()));
  gh.factory<ExerciseFormBloc>(
      () => ExerciseFormBloc(get<IExerciseRepository>()));
  gh.factory<ExerciseWatcherBloc>(
      () => ExerciseWatcherBloc(get<IExerciseRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
