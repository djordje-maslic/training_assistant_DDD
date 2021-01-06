import 'package:dartz/dartz.dart';
import 'package:reminder_app/domain/nutrition/meal/meal_failures.dart';

Either<MealFailures<String>, String> stringToLang(String input, int max){

   if(input.length < max)
     {return right(input);}
   else{return left(MealFailures.stringToLong(failedValue: input, max: max));}

}