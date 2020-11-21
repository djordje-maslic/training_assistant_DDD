import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reminder_app/domain/core/failures.dart';
import 'package:reminder_app/domain/core/value_objects.dart';
import 'package:reminder_app/domain/exercise/value_objects.dart';

part 'sets.freezed.dart';

@freezed
abstract class Sets implements _$Sets {
  const Sets._();

  const factory Sets({
    @required UniqueId id,
    @required RepetitionsNumb number,
  }) = _Sets;

  factory Sets.empty() => Sets(
        id: UniqueId(),
        number: RepetitionsNumb(0),
      );

  Option<ValueFailure<dynamic>> get failureOption{
    return number.value.fold((f) => some(f), (r) => none());

  }
}
