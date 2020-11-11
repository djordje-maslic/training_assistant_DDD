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
import 'application/exercise/exercise_actor/exercise_actor_bloc.dart';
import 'application/exercise/form_bloc/exercise_form_bloc.dart';
import 'infrastructure/exercise/exercise_repository.dart';
import 'application/exercise/exercise_watcher/exercise_watcher_bloc.dart';
import 'infrastructure/auth/firebase_auth_facade.dart';
import 'infrastructure/core/firebase_injectable_module.dart';
import 'domain/auth/i_auth_facade.dart';
import 'domain/exercise/i_exercise_repository.dart';
import 'application/auth/signIn/sign_in_form_bloc.dart';

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
  gh.lazySingleton<IExerciseRepository>(
      () => ExerciseRepository(get<FirebaseFirestore>()));
  gh.factory<SignInFormBloc>(() => SignInFormBloc(get<IAuthFacade>()));
  gh.factory<AuthBloc>(() => AuthBloc(get<IAuthFacade>()));
  gh.factory<ExerciseActorBloc>(
      () => ExerciseActorBloc(get<IExerciseRepository>()));
  gh.factory<ExerciseFormBloc>(
      () => ExerciseFormBloc(get<IExerciseRepository>()));
  gh.factory<ExerciseWatcherBloc>(
      () => ExerciseWatcherBloc(get<IExerciseRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
