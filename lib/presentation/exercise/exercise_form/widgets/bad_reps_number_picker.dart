import 'package:flutter/material.dart';
import 'package:reminder_app/presentation/exercise/exercise_form/misc/set_presentation_classes.dart';

class BadRepsNumberPicker extends StatelessWidget {
  final int index;
  final SetItemPrimitive set;
  final TextEditingController badRepsStateController;

  const BadRepsNumberPicker({
    Key key,
    this.index,
    this.set,
    this.badRepsStateController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(fontSize: 20),
      readOnly: true,
      controller: badRepsStateController,
      decoration: const InputDecoration(
        contentPadding: EdgeInsets.all(20),
      ),
    );
  }
}
