import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';
import 'package:reminder_app/application/user/user_form_bloc/user_form_bloc.dart';
import 'package:reminder_app/presentation/exercise/exercise_form/misc/date_presentation_classes.dart';
import 'package:reminder_app/presentation/exercise/exercise_form/misc/date_time_converter.dart';
import 'package:reminder_app/presentation/exercise/exercise_form/misc/build_context_x.dart';

class UserDateOfBirthWidget extends StatelessWidget {
  const UserDateOfBirthWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Consumer<FormDate>(builder: (context, formDate, child) {
          return DateText(
            formDate: formDate,
          );
        }));
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
      firstDate: DateTime(1940),
      lastDate: DateTime.now(),
      builder: (context, child) {
        return Theme(
            data: ThemeData.from(
              colorScheme: const ColorScheme.light().copyWith(
                background:Colors.amber[100],
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
  if (picked != null &&
      (picked.year != DateTime.now().year ||
          picked.month != DateTime.now().month ||
          picked.day != DateTime.now().day)) {
    context.read<UserFormBloc>().add(
        UserFormEvent.userDateOfBirthChanged(picked.millisecondsSinceEpoch));
  }
  else{}
}

class DateText extends HookWidget {
  const DateText({Key key, @required this.formDate}) : super(key: key);
  final FormDate formDate;

  @override
  Widget build(BuildContext context) {
    final DateTime date = context.formDate.date == null
        ? DateTime.now()
        : DateTime.fromMillisecondsSinceEpoch(context.formDate.date);
    final textEditingControllerDate = useTextEditingController(
        text: dateTimeConverter(context.formDate.date));
    return Column(
      children: [
        BlocListener<UserFormBloc, UserFormState>(
          listener: (context, state) {
            textEditingControllerDate.text =
                dateTimeConverter(state.user.userDateOfBirth.getOrCrash());
          },
          child: TextFormField(
            onTap: () => _selectDate(context, date),
            onChanged: (_) {
              context.formDate = context.formDate
                  .copyWith(date: int.parse(textEditingControllerDate.text));
            },
            decoration: const InputDecoration(
              prefixIcon: Icon(
                Icons.date_range_sharp,
                color: Colors.black,
              ),
            ),
            validator: (_) {
              return context
                  .read<UserFormBloc>()
                  .state
                  .user
                  .userDateOfBirth
                  .value
                  .fold(
                      (f) => f.maybeMap(
                            orElse: () => 'error',
                            invalidDate: (_) => 'Invalid date',
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
