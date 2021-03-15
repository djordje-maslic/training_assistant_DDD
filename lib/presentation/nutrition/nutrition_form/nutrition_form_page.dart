import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:reminder_app/application/nutrition/nutrition_form/nutrition_form_bloc.dart';
import 'package:reminder_app/domain/nutrition/nutrition.dart';
import 'package:reminder_app/injectable.dart';
import 'package:reminder_app/presentation/nutrition/misc/date_time_presentation_classes_n.dart';
import 'package:reminder_app/presentation/nutrition/misc/nutrients_presentation_classes.dart';
import 'package:reminder_app/presentation/nutrition/nutrition_form/widgets/nutrition_add_nutrient_tile.dart';
import 'package:reminder_app/presentation/nutrition/nutrition_form/widgets/nutrition_date_time_field.dart';
import 'package:reminder_app/presentation/nutrition/nutrition_form/widgets/nutrition_list_widget.dart';
import 'package:reminder_app/presentation/nutrition/nutrition_form/widgets/nutrition_name_field.dart';
import 'package:reminder_app/presentation/routes/router.gr.dart';

class NutritionFormPage extends StatelessWidget {
  final Nutrition editedNutrition;

  const NutritionFormPage({Key key, @required this.editedNutrition})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<NutritionFormBloc>()
        ..add(
          NutritionFormEvent.initialized(
            optionOf(editedNutrition),
          ),
        ),
      child: BlocConsumer<NutritionFormBloc, NutritionFormState>(
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
                        unexpected: (_) => const Text(
                            'Unexpected error occurred , please contact support.'),
                        insufficientPermission: (_) =>
                            const Text('Insufficient permission ❌'),
                        unableToUpdate: (_) => const Text(
                            "Couldn't update the nutrition. Was it deleted from another device?"),
                      ),
                    ),
                  );
                },
                (_) {
                  ExtendedNavigator.of(context).popUntil((route) =>
                      route.settings.name == Routes.nutritionOverviewPage);
                },
              );
            },
          );
        },
        buildWhen: (p, c) => p.isSaving != c.isSaving,
        builder: (context, state) {
          return Stack(
            children: [
              const NutritionFormPageScaffold(),
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

class NutritionFormPageScaffold extends StatelessWidget {
  const NutritionFormPageScaffold({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BlocBuilder<NutritionFormBloc, NutritionFormState>(
          buildWhen: (p, c) => p.isEditing != c.isEditing,
          builder: (context, state) => Row(
            children: [
              const Text('T'),
              const Icon(Icons.architecture),
              Text(state.isEditing ? 'Edit nutrition' : 'Create nutrition'),
            ],
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.check),
            onPressed: () {
              context
                  .read<NutritionFormBloc>()
                  .add(const NutritionFormEvent.nutritionSaved());
            },
          )
        ],
      ),
      body: BlocBuilder<NutritionFormBloc, NutritionFormState>(
        buildWhen: (p, c) => p.showErrorMessages != c.showErrorMessages,
        builder: (context, state) {
          return MultiProvider(
            providers: [
              ChangeNotifierProvider<FormDateTimeN>(
                create: (_) => FormDateTimeN(),
              ),
              ChangeNotifierProvider<FormNutrientsList>(
                create: (_) => FormNutrientsList(),
              ),
            ],
            child: Form(
              autovalidateMode: state.showErrorMessages
                  ? AutovalidateMode.always
                  : AutovalidateMode.disabled,
              child: SingleChildScrollView(
                child: Column(
                  children: const [
                    NutritionNameField(),
                    NutritionDateTimeField(),
                    NutritionListWidget(),
                    AddNutrientTile(),
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
