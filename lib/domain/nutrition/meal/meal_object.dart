import 'package:dartz/dartz.dart';
import 'package:reminder_app/domain/nutrition/meal/meal_failures.dart';
import 'package:reminder_app/domain/nutrition/meal/value_object2.dart';
import 'package:reminder_app/domain/nutrition/meal/value_validatores2.dart';

class MealObject extends ValueObject2<String>{
  @override
final  Either<MealFailures<String>, String> value;
  const MealObject._(this.value);

factory MealObject(String input){

  assert(input != null);

   const int max=30;
  return MealObject._(stringToLang(input, max));
}



}