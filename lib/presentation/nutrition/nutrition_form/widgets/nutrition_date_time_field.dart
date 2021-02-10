import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';
import 'package:reminder_app/application/nutrition/nutrition_form/nutrition_form_bloc.dart';
import 'package:reminder_app/presentation/nutrition/misc/build_context_nutrition.dart';
import 'package:reminder_app/presentation/exercise/exercise_form/misc/date_time_converter.dart';
import 'package:reminder_app/presentation/nutrition/misc/date_time_presentation_classes_n.dart';

class NutritionDateTimeField extends StatelessWidget {
  const NutritionDateTimeField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Consumer<FormDateTimeN>(
        builder: (context, formDateTimeN, child) {
          return DateText(
            formDateTimeN: formDateTimeN,
          );
        },
      ),
    );
  }
}

Future<void> _selectDate(
  BuildContext context,
  DateTime selectedDate,
) async {
  final DateTime picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      currentDate: DateTime.now(),
      firstDate: DateTime(2019),
      lastDate: DateTime.now(),
      builder: (context, child) {
        return Theme(
            data: ThemeData.from(
              colorScheme: const ColorScheme.light().copyWith(
                background: Colors.amber[100],
                onBackground: Colors.indigo[300],
                onSurface: Colors.indigo[900],
                onPrimary: Colors.indigo[300],
                primary: Colors.amber,
              ),
              textTheme: const TextTheme(
                caption: TextStyle(fontSize: 20),
                button: TextStyle(fontSize: 20),
                overline: TextStyle(fontSize: 12, fontWeight: FontWeight.w800),
              ),
            ),
            child: child);
      });
  if (picked != null) {
    context.read<NutritionFormBloc>().add(
        NutritionFormEvent.nutritionDateTimeChanged(
            picked.millisecondsSinceEpoch));
  } else {}
}

class DateText extends HookWidget {
  const DateText({Key key, @required this.formDateTimeN}) : super(key: key);
  final FormDateTimeN formDateTimeN;

  @override
  Widget build(BuildContext context) {
    final DateTime date = context.formDateTime.dateTime == null
        ? null
        : DateTime.fromMillisecondsSinceEpoch(context.formDateTime.dateTime);
    final textEditingControllerDate = useTextEditingController(
        text: dateTimeConverter(context.formDateTime.dateTime));
    return Column(
      children: [
        BlocListener<NutritionFormBloc, NutritionFormState>(
          listener: (context, state) {
            textEditingControllerDate.text = dateTimeConverter(
                state.nutrition.nutritionDateTime.getOrCrash());
          },
          child: TextFormField(
            onTap: () => _selectDate(context, date),
            onChanged: (_) {
              context.formDateTime = context.formDateTime.copyWith(
                  dateTime: int.parse(textEditingControllerDate.text));
            },
            decoration: const InputDecoration(
              prefixIcon: Icon(
                Icons.date_range_sharp,
                color: Colors.black,
              ),
            ),
            validator: (_) {
              return context
                  .read<NutritionFormBloc>()
                  .state
                  .nutrition
                  .nutritionDateTime
                  .value
                  .fold(
                      (f) => f.maybeMap(
                            orElse: () => 'error',
                            invalidDate: (_) => 'Invalid date and time',
                          ),
                      (r) => null);
            },
            textAlign: TextAlign.center,
            controller: textEditingControllerDate,
            readOnly: true,
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
      ],
    );
  }
}
