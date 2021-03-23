import 'package:flutter/material.dart';
import 'package:reminder_app/presentation/exercise/exercise_form/misc/set_presentation_classes.dart';

class SetDurationWidget extends StatelessWidget {
  final int index;
  final TextEditingController hoursFormFieldController;
  final TextEditingController minFormFieldController;
  final TextEditingController secFormFieldController;
  final SetItemPrimitive set;

  const SetDurationWidget({
    Key key,
    @required this.index,
    @required this.hoursFormFieldController,
    @required this.minFormFieldController,
    @required this.secFormFieldController,
    @required this.set,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Set duration:'),
        SizedBox(
          width: 200,
          height: 70,
          child: Card(
color: Colors.amber[300],
            child: Center(
              child: Text(

                '${hoursFormFieldController.text.length == 1
                    ?'0${hoursFormFieldController.text}' : hoursFormFieldController.text }:${minFormFieldController.text.length == 1
                    ?'0${minFormFieldController.text}' : minFormFieldController.text }:${secFormFieldController.text.length == 1
                    ?'0${secFormFieldController.text}' : secFormFieldController.text }',
                style: const TextStyle(fontSize: 30, color: Colors.indigoAccent),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
