part of 'user_watcher_bloc.dart';

@freezed
abstract class UserWatcherEvent with _$UserWatcherEvent {
  const factory UserWatcherEvent.watchUser() = _WatchUser;

  const factory UserWatcherEvent.readUser() = _ReadUser;

  const factory UserWatcherEvent.userReceived(
      Either<UserFailure, User> failureOrUser) = _UserReceived;
}
