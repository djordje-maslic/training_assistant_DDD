import 'package:flutter/widgets.dart';
import 'package:kt_dart/collection.dart';
import 'package:provider/provider.dart';
import 'package:reminder_app/presentation/nutrition/misc/date_time_presentation_classes_n.dart';
import 'package:reminder_app/presentation/nutrition/misc/nutrients_presentation_classes.dart';

extension FormNutrientsListX on BuildContext{
  KtList<NutrientItemPrimitive> get formNutrientsList =>
      Provider.of<FormNutrientsList>(this, listen: false).value;
  set formNutrientsList(KtList<NutrientItemPrimitive> value) =>
      Provider.of<FormNutrientsList>(this, listen: false).value = value;
}

extension FormDateTimeNX on BuildContext{
  DateTimePrimitiveN get formDateTime =>
      Provider.of<FormDateTimeN>(this, listen: false).value;
  set formDateTime(DateTimePrimitiveN value) =>
      Provider.of<FormDateTimeN>(this, listen: false).value = value;
}

