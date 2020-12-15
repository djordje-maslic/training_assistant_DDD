import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reminder_app/domain/exercise/value_objects.dart';

part 'date_presentation_classes.freezed.dart';

class FormDate extends ValueNotifier<DatePrimitive> {
  FormDate() : super(DatePrimitive.empty());
}

@freezed
abstract class DatePrimitive implements _$DatePrimitive {
  const DatePrimitive._();

  const factory DatePrimitive({
    @required int date,
  }) = _Dateprimitive;

  factory DatePrimitive.empty() => DatePrimitive(
        date:DateTime.now().millisecondsSinceEpoch,
      );

  factory DatePrimitive.fromDomain(ExerciseDate date) {
    return DatePrimitive(
      date: date.getOrCrash(),
    );
  }

  ExerciseDate toDomain() {
    return ExerciseDate(date);
  }
}
