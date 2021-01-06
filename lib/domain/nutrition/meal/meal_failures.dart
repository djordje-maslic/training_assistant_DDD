import 'package:freezed_annotation/freezed_annotation.dart';

part 'meal_failures.freezed.dart';

@freezed
abstract class MealFailures<T> with _$MealFailures<T>{
  const factory MealFailures.stringToLong(
      {@required String failedValue, @required int max}) = StringToLong;
}
