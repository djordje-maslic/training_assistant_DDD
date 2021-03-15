import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';
import 'package:reminder_app/application/body_measures/body_measures_actor/body_measures_actor_bloc.dart';
import 'package:reminder_app/application/body_measures/body_measures_form/body_measures_form_bloc.dart';
import 'package:reminder_app/application/user/user_watcher/user_watcher_bloc.dart';
import 'package:reminder_app/domain/body_measures/body_measures.dart';
import 'package:reminder_app/injectable.dart';
import 'package:reminder_app/presentation/body_measures/body_measures_form/misc/methods.dart';
import 'package:reminder_app/presentation/body_measures/body_measures_form/widgets/date_field_widget.dart';
import 'package:reminder_app/presentation/exercise/exercise_form/misc/date_presentation_classes.dart';
import 'package:reminder_app/presentation/routes/router.gr.dart';

class BodyMeasuresFormPage extends HookWidget {
  final BodyMeasures bodyMeasures;
  final BodyMeasures lastBodyMeasuresForHintText;

  const BodyMeasuresFormPage({
    Key key,
    @required this.bodyMeasures,
    @required this.lastBodyMeasuresForHintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double userWeightUnit = context.watch<UserWatcherBloc>().state.map(
        initial: (_) => 0.0,
        loadInProgress: (_) => 0.0,
        loadSuccess: (state) =>
            state.user.userWeightUnit.getOrCrash() == 'kg' ? 1.0 : 0.45359237,
        loadFailure: (_) => 1.0);
    final double userHeightUnit = context.watch<UserWatcherBloc>().state.map(
        initial: (_) => 0.0,
        loadInProgress: (_) => 0.0,
        loadSuccess: (state) =>
            state.user.userHeightUnit.getOrCrash() == 'cm' ? 1.0 : 2.54,
        loadFailure: (_) => 1.0);
    final TextEditingController weightTextController = useTextEditingController(
        text: lastBodyMeasuresForHintText == null
            ? (bodyMeasures.bodyMeasuresWeight.getOrCrash() / userWeightUnit)
                    .toStringAsFixed(2) ??
                '0'
            : (lastBodyMeasuresForHintText.bodyMeasuresWeight.getOrCrash() /
                    userWeightUnit)
                .toStringAsFixed(2));
    final double bodyMeasuresHeight = lastBodyMeasuresForHintText == null
        ? (bodyMeasures.bodyMeasuresHeight.getOrCrash() / userHeightUnit) ?? 0.0
        : (lastBodyMeasuresForHintText.bodyMeasuresHeight.getOrCrash() /
            userHeightUnit);

    final TextEditingController heightTextController =
        useTextEditingController(text: bodyMeasuresHeight.toStringAsFixed(2));
    final TextEditingController feet =
        useTextEditingController(text: (bodyMeasuresHeight ~/ 12).toString());

    final TextEditingController inches = useTextEditingController(
        text: (bodyMeasuresHeight - (bodyMeasuresHeight ~/ 12) * 12)
            .toStringAsFixed(2));

    return MultiBlocProvider(
      providers: [
        BlocProvider<BodyMeasuresActorBloc>(
          create: (context) => getIt<BodyMeasuresActorBloc>(),
        ),
        BlocProvider<BodyMeasuresFormBloc>(
          create: (context) => getIt<BodyMeasuresFormBloc>()
            ..add(
              BodyMeasuresFormEvent.initialized(
                optionOf(bodyMeasures),
              ),
            ),
        ),
      ],
      child: Builder(
        builder: (context) {
          return BlocListener<BodyMeasuresFormBloc, BodyMeasuresFormState>(
            listener: (context, state) {
              state.saveFailureOrSuccessOption.fold(() {}, (either) {
                either.fold((failure) {
                  ScaffoldMessenger(
                    child: SnackBar(
                      content: failure.map(
                        unexpected: (_) => const Text(
                            'Unexpected error occurred , please contact support.'),
                        insufficientPermission: (_) =>
                            const Text('Insufficient permission ❌'),
                        unableToUpdate: (_) => const Text(
                            "Couldn't update. Was it deleted from another device?"),
                      ),
                    ),
                  );
                }, (_) {
                  ExtendedNavigator.of(context).popUntil((route) =>
                      route.settings.name == Routes.userOverviewPage);
                });
              });
            },
            child: Scaffold(
              backgroundColor: Colors.amber[300],
              appBar: AppBar(
                title: const Text('Body measures'),
              ),
              body: Builder(
                builder: (context) {
                  return Form(
                    autovalidateMode: context
                            .watch<BodyMeasuresFormBloc>()
                            .state
                            .showErrorMessages
                        ? AutovalidateMode.always
                        : AutovalidateMode.disabled,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView(
                        children: [
                          const SizedBox(
                            height: 18,
                          ),
                          TextFormFieldBWeight(
                              weightTextController: weightTextController),
                          const SizedBox(
                            height: 16,
                          ),
                          context.watch<UserWatcherBloc>().state.map(
                                initial: (_) => TextFormFieldHeightCm(
                                    heightTextController: heightTextController),
                                loadInProgress: (_) => TextFormFieldHeightCm(
                                    heightTextController: heightTextController),
                                loadSuccess: (state) {
                                  if (state.user.userHeightUnit.getOrCrash() ==
                                      'ft') {
                                    return TextFormFieldHeightFt(
                                        feet: feet, inches: inches);
                                  } else {
                                    return TextFormFieldHeightCm(
                                        heightTextController:
                                            heightTextController);
                                  }
                                },
                                loadFailure: (_) => TextFormFieldHeightCm(
                                    heightTextController: heightTextController),
                              ),
                          ChangeNotifierProvider<FormDate>(
                            create: (_) => FormDate(),
                            child: const BodyMeasuresDateFieldWidget(),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              if (bodyMeasures != null)
                                ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.red)),
                                  onPressed: () {
                                    context.read<BodyMeasuresActorBloc>().add(
                                        BodyMeasuresActorEvent.deleted(
                                            bodyMeasures));
                                    ExtendedNavigator.of(context).pop();
                                  },
                                  child: const Text('Delete'),
                                ),
                              const SizedBox(
                                width: 50,
                              ),
                              ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.amber),
                                ),
                                onPressed: () async {
                                  final double doubleHeightTextController =
                                      double.tryParse(
                                              heightTextController.text ??
                                                  '0') ??
                                          0.0;
                                  final double heightCm = await context
                                      .read<UserWatcherBloc>()
                                      .state
                                      .map(
                                        initial: (_) =>
                                            doubleHeightTextController,
                                        loadInProgress: (_) =>
                                            doubleHeightTextController,
                                        loadSuccess: (state) => state
                                                    .user.userHeightUnit
                                                    .getOrCrash() ==
                                                'ft'
                                            ? ((((double.tryParse(feet.text ??
                                                                '0') ??
                                                            0.0) *
                                                        12) ??
                                                    0) +
                                                (double.tryParse(
                                                        inches.text ?? '0') ??
                                                    0.0))
                                            : doubleHeightTextController,
                                        loadFailure: (_) =>
                                            doubleHeightTextController,
                                      );

                                  context.read<BodyMeasuresFormBloc>().add(
                                        BodyMeasuresFormEvent
                                            .bodyMeasuresHeightChanged(
                                                (heightCm ?? 0.0) *
                                                    userHeightUnit),
                                      );
                                  context.read<BodyMeasuresFormBloc>().add(
                                        BodyMeasuresFormEvent
                                            .bodyMeasuresWeightChanged(
                                          (double.tryParse(weightTextController
                                                      .text) ??
                                                  0) *
                                              userWeightUnit,
                                        ),
                                      );
                                  context.read<BodyMeasuresFormBloc>().add(
                                        const BodyMeasuresFormEvent
                                            .bodyMeasuresSaved(),
                                      );
                                },
                                child: const Text('Save'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}

class TextFormFieldHeightFt extends StatelessWidget {
  const TextFormFieldHeightFt({
    Key key,
    @required this.feet,
    @required this.inches,
  }) : super(key: key);

  final TextEditingController feet;
  final TextEditingController inches;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 230,
        child: Row(
          children: [
            Expanded(
              child: TextFormField(
                style: TextStyle(fontSize: 20, color: Colors.indigoAccent[700]),
                keyboardType: TextInputType.number,
                controller: feet,
                decoration:
                    inputDecoration(labelText: 'Height', suffixText: 'ft'),
                validator: (value) {
                  return context
                      .read<BodyMeasuresFormBloc>()
                      .state
                      .bodyMeasures
                      .bodyMeasuresHeight
                      .value
                      .fold(
                          (failure) => failure.maybeMap(
                              orElse: () => 'error',
                              exceedingValue: (_) => 'Max 8ft 2.4in'),
                          (_) => null);
                },
              ),
            ),
            Expanded(
              child: TextFormField(
                style: TextStyle(fontSize: 20, color: Colors.indigoAccent[700]),
                keyboardType: TextInputType.number,
                controller: inches,
                decoration: inputDecoration(suffixText: 'in'),
                validator: (value) {
                  return context
                      .read<BodyMeasuresFormBloc>()
                      .state
                      .bodyMeasures
                      .bodyMeasuresHeight
                      .value
                      .fold(
                          (failure) => failure.maybeMap(
                              orElse: () => 'error',
                              exceedingValue: (_) => 'Max 8ft 2.4in'),
                          (_) => null);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TextFormFieldBWeight extends StatelessWidget {
  const TextFormFieldBWeight({
    Key key,
    @required this.weightTextController,
  }) : super(key: key);

  final TextEditingController weightTextController;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 230,
        child: TextFormField(
          style: TextStyle(fontSize: 20, color: Colors.indigoAccent[700]),
          key: const Key('weightBodyMeasuresFormField'),
          keyboardType: TextInputType.number,
          controller: weightTextController,
          decoration: inputDecoration(
            labelText: 'Weight',
            suffixText: context.watch<UserWatcherBloc>().state.map(
                initial: (_) => 'kg',
                loadInProgress: (_) => 'kg',
                loadSuccess: (state) {
                  return state.user.userWeightUnit.getOrCrash() == 'kg'
                      ? 'kg'
                      : 'lb';
                },
                loadFailure: (_) => 'lb'),
          ),
          validator: (value) {
            return context
                .read<BodyMeasuresFormBloc>()
                .state
                .bodyMeasures
                .bodyMeasuresWeight
                .value
                .fold(
                    (failure) => failure.maybeMap(
                        orElse: () => 'error',
                        exceedingValue: (_) => 'Max 661lb/300kg'),
                    (_) => null);
          },
        ),
      ),
    );
  }
}

class TextFormFieldHeightCm extends StatelessWidget {
  const TextFormFieldHeightCm({
    Key key,
    @required this.heightTextController,
  }) : super(key: key);

  final TextEditingController heightTextController;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 230,
        child: TextFormField(
          style: TextStyle(fontSize: 20, color: Colors.indigoAccent[700]),
          keyboardType: TextInputType.number,
          controller: heightTextController,
          decoration: inputDecoration(labelText: 'Height', suffixText: 'cm'),
          validator: (value) {
            return context
                .read<BodyMeasuresFormBloc>()
                .state
                .bodyMeasures
                .bodyMeasuresHeight
                .value
                .fold(
                    (failure) => failure.maybeMap(
                        orElse: () => 'error',
                        exceedingValue: (_) => 'Max 250cm'),
                    (_) => null);
          },
        ),
      ),
    );
  }
}
