import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';
import 'package:reminder_app/application/exercise/form_bloc/exercise_form_bloc.dart';
import 'package:reminder_app/presentation/body_measures/body_measures_form/misc/methods.dart';
import 'package:reminder_app/presentation/core/misc/time_converter.dart';
import 'package:reminder_app/presentation/exercise/exercise_form/misc/build_context_x.dart';
import 'package:reminder_app/presentation/exercise/exercise_form/misc/date_time_converter.dart';

class DateFieldWidget extends StatelessWidget {
  const DateFieldWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: DateText(),
    );
  }
}

class DateText extends HookWidget {
  const DateText({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingControllerDate = useTextEditingController(
        text: dateTimeConverter(context.formDate.date));
    final textEditingControllerTime = useTextEditingController(
        text: timeOfDayFromDateTime(
            context.formDate.date ?? DateTime.now().millisecondsSinceEpoch));
    return Column(
      children: [
        BlocListener<ExerciseFormBloc, ExerciseFormState>(
          listener: (context, state) {
            textEditingControllerDate.text =
                dateTimeConverter(state.exercise.date.getOrCrash());
            textEditingControllerTime.text =
                timeOfDayFromDateTime(state.exercise.date.getOrCrash());
          },
          child: Column(
            children: [
              TextFormField(
                onTap: () => _selectDate(context),
                onChanged: (_) {
                  context.formDate = context.formDate.copyWith(
                      date: int.parse(textEditingControllerDate.text));
                },
                decoration: inputDecoration(
                  prefixIcon: Icon(
                    Icons.date_range_sharp,
                    color: Colors.indigo[200],
                  ),
                ),
                validator: (_) {
                  return context
                      .read<ExerciseFormBloc>()
                      .state
                      .exercise
                      .date
                      .value
                      .fold(
                          (f) => f.maybeMap(
                              orElse: () => 'error',
                              invalidDate: (_) => 'Invalid date',
                              exceedingLength: (f) =>
                                  'Exceeding length ${f.max}'),
                          (r) => null);
                },
                textAlign: TextAlign.center,
                controller: textEditingControllerDate,
                readOnly: true,
                style: const TextStyle(
                    color: Colors.indigoAccent,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              TextFormField(
                onTap: () => _selectTime(context),
                decoration: inputDecoration(
                  prefixIcon: Icon(
                    Icons.access_time,
                    color: Colors.indigo[200],
                  ),
                ),
                validator: (_) {
                  return context
                      .read<ExerciseFormBloc>()
                      .state
                      .exercise
                      .date
                      .value
                      .fold(
                          (f) => f.maybeMap(
                              orElse: () => 'error',
                              invalidDate: (_) => 'Invalid date',
                              exceedingLength: (f) =>
                                  'Exceeding length ${f.max}'),
                          (r) => null);
                },
                textAlign: TextAlign.center,
                controller: textEditingControllerTime,
                readOnly: true,
                style: const TextStyle(
                    color: Colors.indigoAccent,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
      ],
    );
  }
}

Future<void> _selectDate(
  BuildContext context,
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
    final DateTime dt = DateTime.fromMillisecondsSinceEpoch(
        context.read<ExerciseFormBloc>().state.exercise.date.getOrCrash());
    final int second = dt.second * 1000;
    final int minute = dt.minute * 60000;
    final int hour = dt.hour * 3600000;

    final millisecondsNewDT = second + minute + hour;
    final int result = picked.millisecondsSinceEpoch + millisecondsNewDT;

    context
        .read<ExerciseFormBloc>()
        .add(ExerciseFormEvent.exerciseDateChanged(result));
  } else {}
}

Future<void> _selectTime(BuildContext context) async {
  final TimeOfDay picked = await showTimePicker(
    context: context,
    initialTime: TimeOfDay.now(),
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
    },
  );

  if (picked != null) {
    final DateTime dt = DateTime.fromMillisecondsSinceEpoch(
        context.read<ExerciseFormBloc>().state.exercise.date.getOrCrash());
    final int day = dt.day;
    final int month = dt.month;
    final int year = dt.year;
    final DateTime newDT = DateTime(year, month, day);
    final millisecondsNewDT = newDT.millisecondsSinceEpoch;
    final int result = ((picked.minute * 60000) + ((picked.hour) * 3600000)) +
        millisecondsNewDT;
    context
        .read<ExerciseFormBloc>()
        .add(ExerciseFormEvent.exerciseDateChanged(result));
  } else {}
}
