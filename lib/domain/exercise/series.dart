import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reminder_app/domain/core/failures.dart';
import 'package:reminder_app/domain/core/value_objects.dart';
import 'package:reminder_app/domain/exercise/value_objects.dart';

part 'series.freezed.dart';

@freezed
abstract class Series implements _$Series {
  const Series._();

  const factory Series({
    @required UniqueId id,
    @required RepetitionsNumb number,
  }) = _Series;

  factory Series.empty() => Series(
        id: UniqueId(),
        number: RepetitionsNumb(0),
      );

  Option<ValueFailure<dynamic>> get failureOption{
    return number.value.fold((f) => some(f), (r) => none());
  }
}
