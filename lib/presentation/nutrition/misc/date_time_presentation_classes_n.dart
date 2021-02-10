import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reminder_app/domain/nutrition/value_objects.dart';

part 'date_time_presentation_classes_n.freezed.dart';

class FormDateTimeN extends ValueNotifier<DateTimePrimitiveN> {
  FormDateTimeN() : super(DateTimePrimitiveN.empty());
}

@freezed
abstract class DateTimePrimitiveN implements _$DateTimePrimitiveN {
  const DateTimePrimitiveN._();

  const factory DateTimePrimitiveN({
    @required int dateTime,
  }) = _DateTimePrimitiveN;

  factory DateTimePrimitiveN.empty() => DateTimePrimitiveN(
        dateTime: DateTime.now().millisecondsSinceEpoch,
      );

  factory DateTimePrimitiveN.fromDomain(NutritionDateTime dateTime) {
    return DateTimePrimitiveN(
      dateTime: dateTime.getOrCrash(),
    );
  }

  NutritionDateTime toDomain() {
    return NutritionDateTime(dateTime);
  }
}
