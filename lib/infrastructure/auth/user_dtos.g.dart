// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDto _$_$_UserDtoFromJson(Map<String, dynamic> json) {
  return _$_UserDto(
    emailAddress: json['emailAddress'] as String,
    userName: json['userName'] as String,
    userDateOfBirth: json['userDateOfBirth'] as int,
    userGender: json['userGender'] as bool,
  );
}

Map<String, dynamic> _$_$_UserDtoToJson(_$_UserDto instance) =>
    <String, dynamic>{
      'emailAddress': instance.emailAddress,
      'userName': instance.userName,
      'userDateOfBirth': instance.userDateOfBirth,
      'userGender': instance.userGender,
    };
