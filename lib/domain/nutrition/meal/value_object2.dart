import 'package:dartz/dartz.dart';
import 'package:reminder_app/domain/nutrition/meal/meal_failures.dart';

abstract class ValueObject2<T>{
  Either<MealFailures<T>, T>get value;
  const ValueObject2();

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is ValueObject2<T> && o.value == value;
  }


  @override
  int get hashCode => value.hashCode;

  @override
  String toString() {
    return 'value: $value';
  }
}