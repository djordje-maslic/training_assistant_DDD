import 'package:flutter/widgets.dart';
import 'package:kt_dart/collection.dart';
import 'package:provider/provider.dart';
import 'package:reminder_app/presentation/exercise/exercise_form/misc/set_presentation_classes.dart';

extension FormSetsX on BuildContext{
  KtList<SetItemPrimitive> get formSets =>
      Provider.of<FormSets>(this, listen: false).value;
  set formSets(KtList<SetItemPrimitive> value) =>
      Provider.of<FormSets>(this, listen: false).value = value;
}