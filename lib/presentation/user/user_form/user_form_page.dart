import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:reminder_app/application/user/user_form_bloc/user_form_bloc.dart';
import 'package:reminder_app/domain/auth/user.dart';
import 'package:reminder_app/injectable.dart';
import 'package:reminder_app/presentation/routes/router.gr.dart';

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
                  FlushbarHelper.createError(
                    message: failure.map(
                      unexpected: (_) =>
                          'Unexpected error occurred , please contact support.',
                      insufficientPermission: (_) =>
                          'Insufficient permission ❌',
                      unableToUpdate: (_) =>
                          "Couldn't update the exercise. Was it deleted from another device?",
                    ),
                  ).show(context);
                },
                (_) {
                  ExtendedNavigator.of(context).popUntil((route) =>
                      route.settings.name == Routes.userOverviewPage);
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
      listener: (context, state) {},
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () =>
                  ExtendedNavigator.of(context).pushUserOverviewPage()),
          title: BlocBuilder<UserFormBloc, UserFormState>(
            buildWhen: (p, c) => p.isEditing != c.isEditing,
            builder: (context, state) =>
                Text(state.isEditing ? 'Edit user' : 'Create user'),
          ),
          actions: [
            IconButton(
                icon: const Icon(Icons.check),
                onPressed: () {
                  context
                      .read<UserFormBloc>()
                      .add(const UserFormEvent.userSaved());
                  ExtendedNavigator.of(context).pushUserOverviewPage();
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
                      color: Colors.amber,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
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
                          decoration: const InputDecoration(
                            labelText: 'Name',
                            labelStyle:
                                TextStyle(fontSize: 30, color: Colors.white),
                            border:
                                OutlineInputBorder(borderSide: BorderSide.none),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      color: Colors.amber,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          initialValue: user == null
                              ? '0.0'
                              : user.userWeight.getOrCrash().toString(),
                          validator: (_) => context
                              .read<UserFormBloc>()
                              .state
                              .user
                              .userWeight
                              .value
                              .fold(
                                  (f) => f.maybeMap(
                                      orElse: () => null,
                                      exceedingValue: (f) =>
                                          'Exceeding value ${f.max}'),
                                  (r) => null),
                          onChanged: (value) {
                            context.read<UserFormBloc>().add(
                                  UserFormEvent.userWeightChanged(
                                    double.tryParse(value),
                                  ),
                                );
                          },
                          decoration: const InputDecoration(
                            labelText: 'Weight',
                            labelStyle:
                                TextStyle(fontSize: 30, color: Colors.white),
                            suffixText: 'kg',
                            border:
                                OutlineInputBorder(borderSide: BorderSide.none),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      color: Colors.amber,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          initialValue: user == null
                              ? '0.0'
                              : user.userHeight.getOrCrash().toString(),
                          validator: (_) => context
                              .read<UserFormBloc>()
                              .state
                              .user
                              .userHeight
                              .value
                              .fold(
                                  (f) => f.maybeMap(
                                      orElse: () => null,
                                      exceedingValue: (f) =>
                                          'Exceeding value ${f.max}'),
                                  (r) => null),
                          onChanged: (value) {
                            context.read<UserFormBloc>().add(
                                UserFormEvent.userHeightChanged(
                                    double.tryParse(value)));
                          },
                          decoration: const InputDecoration(
                            labelText: 'Height',
                            labelStyle:
                                TextStyle(fontSize: 30, color: Colors.white),
                            suffixText: 'cm',
                            border:
                                OutlineInputBorder(borderSide: BorderSide.none),
                          ),
                        ),
                      ),
                    ),
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
