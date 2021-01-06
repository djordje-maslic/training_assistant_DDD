import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failures2.freezed.dart';

@freezed
abstract class AuthFailures2 with _$AuthFailures2{
  const factory AuthFailures2.userTapOut()= _UserTapOut;
  const factory AuthFailures2.serverError()= _ServerError;
  const factory AuthFailures2.wrongEmailAndPassword()= _WrongEmailAndPassword;
}