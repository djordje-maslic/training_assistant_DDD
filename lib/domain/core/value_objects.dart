import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:reminder_app/domain/core/failures.dart';

@immutable
abstract class ValueObject<T> {

  Either<ValueFailure<T>,T> get value;

const ValueObject();

  @override
  bool operator ==(Object other) {
    if(  identical(this, other))return true;
    return  other is ValueObject<T> &&
        value == other.value;}

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() {
    return 'Value($value)';
  }

}