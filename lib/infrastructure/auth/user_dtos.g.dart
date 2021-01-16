// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDto _$_$_UserDtoFromJson(Map<String, dynamic> json) {
  return _$_UserDto(
    emailAddress: json['emailAddress'] as String,
    userName: json['userName'] as String,
    userWeight: (json['userWeight'] as num)?.toDouble(),
    userHeight: (json['userHeight'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$_$_UserDtoToJson(_$_UserDto instance) =>
    <String, dynamic>{
      'emailAddress': instance.emailAddress,
      'userName': instance.userName,
      'userWeight': instance.userWeight,
      'userHeight': instance.userHeight,
    };
