import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.exceedingLength({
    @required T failedValue,
    @required int max,
  }) = ExceedingLength<T>;

  const factory ValueFailure.exceedingValue({
    @required T failedValue,
    @required int max,
  }) = ExceedingValue<T>;

  const factory ValueFailure.invalidDate({
    @required T failedValue,
  }) = InvalidDate<T>;

  const factory ValueFailure.empty({
    @required T failedValue,
  }) = Empty<T>;

  const factory ValueFailure.listTooLong({
    @required T failedValue,
    @required int max,
  }) = ListTooLong<T>;

  const factory ValueFailure.invalidEmail({@required String failedValue}) =
      InvalidEmail<T>;

  const factory ValueFailure.shortPassword({@required String failedValue}) =
      ShortPassword<T>;
}
