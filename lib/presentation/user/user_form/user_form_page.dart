import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';
import 'package:reminder_app/application/user/user_form_bloc/user_form_bloc.dart';
import 'package:reminder_app/application/user/user_watcher/user_watcher_bloc.dart';
import 'package:reminder_app/domain/auth/user.dart';
import 'package:reminder_app/injectable.dart';
import 'package:reminder_app/presentation/exercise/exercise_form/misc/date_presentation_classes.dart';
import 'package:reminder_app/presentation/user/user_form/widgets/date_picker.dart';
import 'package:reminder_app/presentation/user/user_form/widgets/user_form_toggle_button.dart';

class UserFormPage extends HookWidget {
  final User initialUser;

  const UserFormPage({@required this.initialUser, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UserFormBloc>(
      create: (context) => getIt<UserFormBloc>()
        ..add(
          UserFormEvent.initialized(
            optionOf(initialUser),
          ),
        ),
      child: BlocConsumer<UserFormBloc, UserFormState>(
        listenWhen: (p, c) =>
            p.saveFailureOrSuccessOption != c.saveFailureOrSuccessOption,
        listener: (context, state) {
          state.saveFailureOrSuccessOption.fold(
            () {},
            (either) {
              either.fold(
                (failure) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: failure.map(
                        noUserProfile: (_) => const Text('No user profile'),
                        unexpected: (_) => const Text(
                            'Unexpected error occurred , please contact support.'),
                        insufficientPermission: (_) =>
                            const Text('Insufficient permission ❌'),
                        unableToUpdate: (_) => const Text(
                            "Couldn't update the exercise. Was it deleted from another device?"),
                      ),
                    ),
                  );
                },
                (_) {
                  Navigator.of(context).pop();
                },
              );
            },
          );
        },
        buildWhen: (p, c) => p.isSaving != c.isSaving,
        builder: (context, state) {
          return Stack(
            children: [
              UserFormPageScaffold(
                user: initialUser,
              ),
              SavingInProgressOverlay(
                isSaving: state.isSaving,
              )
            ],
          );
        },
      ),
    );
  }
}

class SavingInProgressOverlay extends StatelessWidget {
  final bool isSaving;

  const SavingInProgressOverlay({
    Key key,
    @required this.isSaving,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !isSaving,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        color: isSaving ? Colors.black.withOpacity(0.8) : Colors.transparent,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Visibility(
          visible: isSaving,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircularProgressIndicator(),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Saving',
                style: Theme.of(context)
                    .textTheme
                    .bodyText2
                    .copyWith(color: Colors.white, fontSize: 16),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class UserFormPageScaffold extends StatelessWidget {
  final User user;

  const UserFormPageScaffold({Key key, @required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<UserFormBloc, UserFormState>(
      listener: (context, state) {
        state.saveFailureOrSuccessOption.fold(
            () => () {},
            (either) => either.fold(
                    (f) => ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: f.map(
                              unexpected: (_) => const Text(
                                  'Something unexpected happened please contact support'),
                              noUserProfile: (_) =>
                                  const Text('No user profile'),
                              insufficientPermission: (_) =>
                                  const Text('Insufficient permission'),
                              unableToUpdate: (_) =>
                                  const Text('Unable to update'),
                            ),
                          ),
                        ), (r) {
                  Navigator.of(context)
                      .popAndPushNamed('/user-overview-page');
                }));
      },
      child: Scaffold(
        backgroundColor: Colors.amber[200],
        appBar: AppBar(
          title: BlocBuilder<UserFormBloc, UserFormState>(
            buildWhen: (p, c) => p.isEditing != c.isEditing,
            builder: (context, state) =>
                Text(state.isEditing ? 'Edit profile' : 'Create profile'),
          ),
          actions: [
            IconButton(
                icon: const Icon(Icons.check),
                onPressed: () {
                  context
                      .read<UserFormBloc>()
                      .add(const UserFormEvent.userSaved());
                  context
                      .read<UserWatcherBloc>()
                      .add(const UserWatcherEvent.watchUser());
                })
          ],
        ),
        body: BlocBuilder<UserFormBloc, UserFormState>(
          buildWhen: (p, c) => p.showErrorMessages != c.showErrorMessages,
          builder: (context, state) {
            return Form(
              autovalidateMode: state.showErrorMessages
                  ? AutovalidateMode.always
                  : AutovalidateMode.disabled,
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 10,
                      color: Colors.amber[200],
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          maxLength: 30,
                          initialValue:
                              user == null ? '' : user.userName.getOrCrash(),
                          validator: (_) => context
                              .read<UserFormBloc>()
                              .state
                              .user
                              .userName
                              .value
                              .fold(
                                  (f) => f.maybeMap(
                                      orElse: () => null,
                                      exceedingLength: (f) =>
                                          'Exceeding length ${f.max}'),
                                  (r) => null),
                          onChanged: (value) {
                            context
                                .read<UserFormBloc>()
                                .add(UserFormEvent.userNameChanged(value));
                          },
                          style: const TextStyle(
                              color: Colors.indigoAccent, fontSize: 30),
                          decoration: InputDecoration(
                            counterStyle: const TextStyle(fontSize: 15),
                            labelText: 'Name',
                            labelStyle: TextStyle(
                                fontSize: 30, color: Colors.indigo[300]),
                            border: const OutlineInputBorder(
                                borderSide: BorderSide.none),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Date of birth',
                      style: TextStyle(fontSize: 20, color: Colors.indigo[200]),
                    ),
                  ),
                  ChangeNotifierProvider<FormDate>(
                    create: (context) => FormDate(),
                    child: const UserDateOfBirthWidget(),
                  ),
                  BlocBuilder<UserFormBloc, UserFormState>(
                    builder: (context, state) {
                      final bool switcher = state.user.userGender.getOrCrash();
                      final switcherExerciseDistanceUnit =
                          state.user.exerciseDistanceUnit.getOrCrash();
                      final switcherExerciseWeightUnit =
                          state.user.exerciseWeightUnit.getOrCrash();
                      final switcherUserHeightUnit =
                          state.user.userHeightUnit.getOrCrash();
                      final switcherUserWeightUnit =
                          state.user.userWeightUnit.getOrCrash();
                      final switcherNutritionWeightUnit =
                          state.user.nutritionWeightUnit.getOrCrash();
                      final switcherNutritionVolumeUnit =
                          state.user.nutritionVolumeUnit.getOrCrash();
                      return Column(
                        children: [
                          UserFormToggleButton(
                            title: 'Gender',
                            isSelected: [switcher, !switcher],
                            onPressed: (int index) {
                              bool genderBool = true;
                              if (index != 0) {
                                genderBool = false;
                              }
                              context.read<UserFormBloc>().add(
                                    UserFormEvent.userGenderChanged(
                                        genderBool: genderBool),
                                  );
                            },
                            children: const [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'male',
                                  style: TextStyle(fontSize: 30),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'female',
                                  style: TextStyle(fontSize: 30),
                                ),
                              )
                            ],
                          ),
                          UserFormToggleButton(
                            title: 'Exercise distance unit',
                            isSelected: [
                              switcherExerciseDistanceUnit == 'km',
                              switcherExerciseDistanceUnit == 'mi'
                            ],
                            onPressed: (int index) {
                              String units = 'km';
                              if (index == 0) {
                                units = 'km';
                              } else if (index == 1) {
                                units = 'mi';
                              } else {
                                units = 'km';
                              }
                              context.read<UserFormBloc>().add(
                                    UserFormEvent.exerciseDistanceUnitChanged(
                                        exerciseDistanceUnitString: units),
                                  );
                            },
                            children: const [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'km',
                                  style: TextStyle(fontSize: 30),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'mi',
                                  style: TextStyle(fontSize: 30),
                                ),
                              ),
                            ],
                          ),
                          UserFormToggleButton(
                            title: 'Exercise weight unit',
                            isSelected: [
                              switcherExerciseWeightUnit == 'kg',
                              switcherExerciseWeightUnit == 'lb'
                            ],
                            onPressed: (int index) {
                              String units = 'kg';
                              if (index == 0) {
                                units = 'kg';
                              } else if (index == 1) {
                                units = 'lb';
                              } else {
                                units = 'kg';
                              }
                              context.read<UserFormBloc>().add(
                                    UserFormEvent.exerciseWeightUnitChanged(
                                        exerciseWeightUnitString: units),
                                  );
                            },
                            children: const [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'kg',
                                  style: TextStyle(fontSize: 30),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'lb',
                                  style: TextStyle(fontSize: 30),
                                ),
                              ),
                            ],
                          ),
                          UserFormToggleButton(
                            title: 'User height unit',
                            isSelected: [
                              switcherUserHeightUnit == 'cm',
                              switcherUserHeightUnit == 'ft'
                            ],
                            onPressed: (int index) {
                              String units = 'cm';
                              if (index == 0) {
                                units = 'cm';
                              } else if (index == 1) {
                                units = 'ft';
                              } else {
                                units = 'cm';
                              }
                              context.read<UserFormBloc>().add(
                                    UserFormEvent.userHeightUnitChanged(
                                        userHeightUnitString: units),
                                  );
                            },
                            children: const [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'cm',
                                  style: TextStyle(fontSize: 30),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'ft',
                                  style: TextStyle(fontSize: 30),
                                ),
                              ),
                            ],
                          ),
                          UserFormToggleButton(
                            title: 'User weight unit',
                            isSelected: [
                              switcherUserWeightUnit == 'kg',
                              switcherUserWeightUnit == 'lb'
                            ],
                            onPressed: (int index) {
                              String units = 'kg';
                              if (index == 0) {
                                units = 'kg';
                              } else if (index == 1) {
                                units = 'lb';
                              } else {
                                units = 'lb';
                              }
                              context.read<UserFormBloc>().add(
                                    UserFormEvent.userWeightUnitChanged(
                                        userWeightUnitString: units),
                                  );
                            },
                            children: const [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'kg',
                                  style: TextStyle(fontSize: 30),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'lb',
                                  style: TextStyle(fontSize: 30),
                                ),
                              ),
                            ],
                          ),
                          UserFormToggleButton(
                            title: 'Nutrition weight unit',
                            isSelected: [
                              switcherNutritionWeightUnit == 'g',
                              switcherNutritionWeightUnit == 'lb'
                            ],
                            onPressed: (int index) {
                              String units = 'g';
                              if (index == 0) {
                                units = 'g';
                              } else if (index == 1) {
                                units = 'lb';
                              } else {
                                units = 'g';
                              }
                              context.read<UserFormBloc>().add(
                                    UserFormEvent.nutritionWeightUnitChanged(
                                        nutritionWeightUnitString: units),
                                  );
                            },
                            children: const [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'g',
                                  style: TextStyle(fontSize: 30),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'lb',
                                  style: TextStyle(fontSize: 30),
                                ),
                              ),
                            ],
                          ),
                          UserFormToggleButton(
                            title: 'Nutrition volume unit',
                            isSelected: [
                              switcherNutritionVolumeUnit == 'ml',
                              switcherNutritionVolumeUnit == 'fl oz'
                            ],
                            onPressed: (int index) {
                              String units = 'ml';
                              if (index == 0) {
                                units = 'ml';
                              } else if (index == 1) {
                                units = 'fl oz';
                              } else {
                                units = 'ml';
                              }
                              context.read<UserFormBloc>().add(
                                    UserFormEvent.nutritionVolumeUnitChanged(
                                        nutritionVolumeUnitString: units),
                                  );
                            },
                            children: const [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'ml',
                                  style: TextStyle(fontSize: 30),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'fl oz',
                                  style: TextStyle(fontSize: 30),
                                ),
                              ),
                            ],
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
