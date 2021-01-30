import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';
import 'package:reminder_app/application/body_measures/body_measures_actor/body_measures_actor_bloc.dart';
import 'package:reminder_app/application/body_measures/body_measures_form/body_measures_form_bloc.dart';
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
    final TextEditingController weightTextController = useTextEditingController(
        text: lastBodyMeasuresForHintText == null
            ? bodyMeasures.bodyMeasuresWeight.getOrCrash().toString()??
            '0'
            : lastBodyMeasuresForHintText.bodyMeasuresWeight
                    .getOrCrash()
                    .toString() );
    final TextEditingController heightTextController = useTextEditingController(
        text: lastBodyMeasuresForHintText == null
            ? bodyMeasures.bodyMeasuresHeight.getOrCrash().toString()??
            '0'
            : lastBodyMeasuresForHintText.bodyMeasuresHeight
            .getOrCrash()
            .toString());
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
      child: Scaffold(
        backgroundColor: Colors.amber[300],
        appBar: AppBar(
          title: const Text('Body measures'),
        ),
        body: Builder(
          builder: (context) {
            return Form(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: weightTextController,
                      decoration: const InputDecoration(labelText: 'Weight'),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: heightTextController,
                      decoration: const InputDecoration(labelText: 'height'),
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
                                  BodyMeasuresActorEvent.deleted(bodyMeasures));
                              ExtendedNavigator.of(context)
                                  .pushUserOverviewPage();
                            },
                            child: const Text('Delete'),
                          ),
                        const SizedBox(
                          width: 50,
                        ),
                        RaisedButton(
                          color: Colors.amber,
                          onPressed: () {
                            context.read<BodyMeasuresFormBloc>().add(
                              BodyMeasuresFormEvent.bodyMeasuresHeightChanged(
                                double.tryParse(heightTextController.text),
                              ),
                            );
                            context.read<BodyMeasuresFormBloc>().add(
                              BodyMeasuresFormEvent.bodyMeasuresWeightChanged(
                                double.tryParse(weightTextController.text),
                              ),
                            );
                            context.read<BodyMeasuresFormBloc>().add(
                                  const BodyMeasuresFormEvent
                                      .bodyMeasuresSaved(),
                                );
                            ExtendedNavigator.of(context)
                                .pushUserOverviewPage();
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
  }
}
