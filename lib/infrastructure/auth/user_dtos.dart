import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reminder_app/domain/auth/user.dart';
import 'package:reminder_app/domain/auth/value_objects.dart';
import 'package:reminder_app/domain/core/value_objects.dart';

part 'user_dtos.freezed.dart';

part 'user_dtos.g.dart';

@freezed
abstract class UserDto implements _$UserDto {
  const UserDto._();

  const factory UserDto({
    @JsonKey(ignore: true) String id,
    @required String emailAddress,
    @required String userName,
    @required int userDateOfBirth,
    @required double userHeight,
  }) = _UserDto;

  factory UserDto.fromDomain(User user) {
    return UserDto(
      id: user.id.getOrCrash(),
      emailAddress: user.emailAddress.getOrCrash(),
      userName: user.userName.getOrCrash(),
      userDateOfBirth: user.userDateOfBirth.getOrCrash(),
      userHeight: user.userHeight.getOrCrash(),
    );
  }

  User toDomain() {
    return User(
      id: UniqueId.withUniqueString(id),
      emailAddress: EmailAddress(emailAddress),
      userName: UserName(userName),
      userDateOfBirth: UserDateOfBirth(userDateOfBirth),
      userHeight: UserHeight(userHeight),
    );
  }

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);

  factory UserDto.fromFirestore(DocumentSnapshot doc) {
    return UserDto.fromJson(doc.data()).copyWith(id: doc.id);
  }
}
