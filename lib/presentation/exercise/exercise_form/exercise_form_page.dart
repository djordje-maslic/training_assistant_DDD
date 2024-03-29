import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:reminder_app/application/exercise/form_bloc/exercise_form_bloc.dart';
import 'package:reminder_app/domain/exercise/exercise.dart';
import 'package:reminder_app/injectable.dart';
import 'package:reminder_app/presentation/exercise/exercise_form/misc/date_presentation_classes.dart';
import 'package:reminder_app/presentation/exercise/exercise_form/misc/duration_picker_providers.dart';
import 'package:reminder_app/presentation/exercise/exercise_form/misc/set_presentation_classes.dart';
import 'package:reminder_app/presentation/exercise/exercise_form/widgets/add_set_tile_widget.dart';
import 'package:reminder_app/presentation/exercise/exercise_form/widgets/body_field_widget.dart';
import 'package:reminder_app/presentation/exercise/exercise_form/widgets/date_field_widget.dart';
import 'package:reminder_app/presentation/exercise/exercise_form/widgets/number_of_sets_field_widget.dart';
import 'package:reminder_app/presentation/exercise/exercise_form/widgets/set_list_widget.dart';
import 'package:reminder_app/presentation/routes/router.gr.dart';

class ExerciseFormPage extends StatelessWidget {
  final Exercise editedExercise;

  const ExerciseFormPage({Key key, @required this.editedExercise})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ExerciseFormBloc>()
        ..add(
          ExerciseFormEvent.initialized(
            optionOf(editedExercise),
          ),
        ),
      child: BlocConsumer<ExerciseFormBloc, ExerciseFormState>(
          listenWhen: (p, c) =>
              p.saveFailureOrSuccessOption != c.saveFailureOrSuccessOption,
          listener: (context, state) {
            state.saveFailureOrSuccessOption.fold(() {}, (either) {
              either.fold((failure) {
                FlushbarHelper.createError(
                  message: failure.map(
                    unexpected: (_) =>
                        'Unexpected error occurred , please contact support.',
                    insufficientPermission: (_) => 'Insufficient permission ❌',
                    unableToUpdate: (_) =>
                        "Couldn't update the exercise. Was it deleted from another device?",
                  ),
                ).show(context);
              }, (_) {
                ExtendedNavigator.of(context).popUntil((route) =>
                    route.settings.name == Routes.exerciseOverviewPage);
              });
            });
          },
          buildWhen: (p, c) => p.isSaving != c.isSaving,
          builder: (context, state) {
            return Stack(
              children: [
                const ExerciseFormPageScaffold(),
                SavingInProgressOverlay(
                  isSaving: state.isSaving,
                )
              ],
            );
          }),
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

class ExerciseFormPageScaffold extends StatelessWidget {
  const ExerciseFormPageScaffold({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: BlocBuilder<ExerciseFormBloc, ExerciseFormState>(
          buildWhen: (p, c) => p.isEditing != c.isEditing,
          builder: (context, state) =>
              Text(state.isEditing ? 'Edit exercise' : 'Create exercise'),
        ),
        actions: [
          IconButton(
              icon: const Icon(Icons.check),
              onPressed: () {
                context
                    .read<ExerciseFormBloc>()
                    .add(const ExerciseFormEvent.exerciseSaved());
              })
        ],
      ),
      body: BlocBuilder<ExerciseFormBloc, ExerciseFormState>(
       buildWhen: (p, c) => p.showErrorMessages != c.showErrorMessages,
        builder: (context, state) {
          return MultiProvider(
            providers: [
              ChangeNotifierProvider<FormDate>(
                create: (_) => FormDate(),
              ),
              ChangeNotifierProvider<FormSets>(
                create: (_) => FormSets(),
              ),
              ChangeNotifierProvider<HeightDurationPickerProvider>(
                create: (_) => HeightDurationPickerProvider(),
              ),
            ],
            child: Form(
              autovalidateMode: state.showErrorMessages
                  ? AutovalidateMode.always
                  : AutovalidateMode.disabled,
              child: SingleChildScrollView(
                child: Column(
                  children: const [
                    BodyField(),
                    DateFieldWidget(),
                    NumberOfSets(),
                    SetListWidget(),
                    AddSetTile(),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
