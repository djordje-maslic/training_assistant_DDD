import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';
import 'package:reminder_app/application/body_measures/body_measures_actor/body_measures_actor_bloc.dart';
import 'package:reminder_app/application/body_measures/body_measures_form/body_measures_form_bloc.dart';
import 'package:reminder_app/application/user/user_watcher/user_watcher_bloc.dart';
import 'package:reminder_app/domain/body_measures/body_measures.dart';
import 'package:reminder_app/injectable.dart';
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
    final double userWeightUnit = context
        .watch<UserWatcherBloc>()
        .state
        .map(
        initial: (_) => 0.0,
        loadInProgress: (_) => 0.0,
        loadSuccess: (state) =>
        state.user.userWeightUnit.getOrCrash() == 'kg' ? 1.0 : 0.45359237,
        loadFailure: (_) => 1.0);
    final double userHeightUnit = context
        .watch<UserWatcherBloc>()
        .state
        .map(
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
          create: (context) =>
          getIt<BodyMeasuresFormBloc>()
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
                  FlushbarHelper.createError(
                    message: failure.map(
                      unexpected: (_) =>
                      'Unexpected error occurred , please contact support.',
                      insufficientPermission: (_) =>
                      'Insufficient permission ❌',
                      unableToUpdate: (_) =>
                      "Couldn't update. Was it deleted from another device?",
                    ),
                  ).show(context);
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
                          TextFormFieldBWeight(
                              weightTextController: weightTextController),
                          const SizedBox(
                            height: 8,
                          ),
                          context
                              .watch<UserWatcherBloc>()
                              .state
                              .map(
                            initial: (_) =>
                                TextFormFieldHeightCm(
                                    heightTextController: heightTextController),
                            loadInProgress: (_) =>
                                TextFormFieldHeightCm(
                                    heightTextController: heightTextController),
                            loadSuccess: (state) {
                              if (state.user.userHeightUnit.getOrCrash() ==
                                  'ft') {
                                return Row(
                                  children: [
                                    SizedBox(
                                      width: 90,
                                      height: 70,
                                      child: TextFormField(
                                        keyboardType: TextInputType.number,
                                        controller: feet,
                                        decoration: const InputDecoration(
                                            labelText: 'Height',
                                            suffixText: 'ft'),
                                        validator: (value) {
                                          final double doubleVal = double
                                              .tryParse(value) ?? 0.0;
                                          if (doubleVal > 9) {
                                            return 'Exceeding value 9';
                                          } else {
                                            return null;
                                          }
                                        },
                                      ),
                                    ),
                                    SizedBox(
                                      width: 90,
                                      height: 70,
                                      child: TextFormField(
                                        keyboardType: TextInputType.number,
                                        controller: inches,
                                        decoration: const InputDecoration(
                                            suffixText: 'in'),
                                        validator: (value) {
                                       return   context
                                              .read<BodyMeasuresFormBloc>()
                                              .state
                                              .bodyMeasures
                                              .bodyMeasuresHeight
                                              .value
                                              .fold((failure) =>
                                              failure.maybeMap(orElse:()=> 'error',exceedingValue: (_)=>'Exceeding value 109'), (
                                              _) => null);
                                        },
                                      ),
                                    )
                                  ],
                                );
                              } else {
                                return TextFormFieldHeightCm(
                                    heightTextController:
                                    heightTextController);
                              }
                            },
                            loadFailure: (_) =>
                                TextFormFieldHeightCm(
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
                                RaisedButton(
                                  color: Colors.red,
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
                              RaisedButton(
                                color: Colors.amber,
                                onPressed: () async {
                                  final double heightCm = await context
                                      .read<UserWatcherBloc>()
                                      .state
                                      .map(
                                    initial: (_) =>
                                        double.tryParse(
                                            heightTextController.text ?? '0'),
                                    loadInProgress: (_) =>
                                        double.tryParse(
                                            heightTextController.text ?? '0'),
                                    loadSuccess: (state) =>
                                    state.user.userHeightUnit.getOrCrash() ==
                                        'ft' ? ((((double.tryParse(
                                        feet.text ?? '0') ?? 0.0) * 12) ?? 0) +
                                        (double.tryParse(inches.text ?? '0') ??
                                            0.0)) : double.tryParse(
                                        heightTextController.text ?? '0'),
                                    loadFailure: (_) =>
                                        double.tryParse(
                                            heightTextController.text ?? '0'),);


                                  context.read<BodyMeasuresFormBloc>().add(
                                    BodyMeasuresFormEvent
                                        .bodyMeasuresHeightChanged(
                                        heightCm * userHeightUnit),
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

class TextFormFieldBWeight extends StatelessWidget {
  const TextFormFieldBWeight({
    Key key,
    @required this.weightTextController,
  }) : super(key: key);

  final TextEditingController weightTextController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.number,
      controller: weightTextController,
      decoration: const InputDecoration(labelText: 'Weight'),
      validator: (value) {
        final double doubleVal = double.tryParse(value) ?? 0.0;
        if (doubleVal > 300) {
          return 'Exceeding value 300';
        } else {
          return null;
        }
      },
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
    return TextFormField(
      keyboardType: TextInputType.number,
      controller: heightTextController,
      decoration: const InputDecoration(labelText: 'height'),
      validator: (value) {
        final double doubleVal = double.tryParse(value);
        if (doubleVal > 250) {
          return 'Exceeding value 250';
        } else {
          return null;
        }
      },
    );
  }
}
