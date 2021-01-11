// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserWatcherEventTearOff {
  const _$UserWatcherEventTearOff();

// ignore: unused_element
  _WatchUser watchUser() {
    return const _WatchUser();
  }

// ignore: unused_element
  _ReadUser readUser() {
    return const _ReadUser();
  }

// ignore: unused_element
  _UserReceived userReceived(Either<UserFailure, User> failureOrUser) {
    return _UserReceived(
      failureOrUser,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UserWatcherEvent = _$UserWatcherEventTearOff();

/// @nodoc
mixin _$UserWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchUser(),
    @required TResult readUser(),
    @required TResult userReceived(Either<UserFailure, User> failureOrUser),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchUser(),
    TResult readUser(),
    TResult userReceived(Either<UserFailure, User> failureOrUser),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchUser(_WatchUser value),
    @required TResult readUser(_ReadUser value),
    @required TResult userReceived(_UserReceived value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchUser(_WatchUser value),
    TResult readUser(_ReadUser value),
    TResult userReceived(_UserReceived value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $UserWatcherEventCopyWith<$Res> {
  factory $UserWatcherEventCopyWith(
          UserWatcherEvent value, $Res Function(UserWatcherEvent) then) =
      _$UserWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserWatcherEventCopyWithImpl<$Res>
    implements $UserWatcherEventCopyWith<$Res> {
  _$UserWatcherEventCopyWithImpl(this._value, this._then);

  final UserWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(UserWatcherEvent) _then;
}

/// @nodoc
abstract class _$WatchUserCopyWith<$Res> {
  factory _$WatchUserCopyWith(
          _WatchUser value, $Res Function(_WatchUser) then) =
      __$WatchUserCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchUserCopyWithImpl<$Res>
    extends _$UserWatcherEventCopyWithImpl<$Res>
    implements _$WatchUserCopyWith<$Res> {
  __$WatchUserCopyWithImpl(_WatchUser _value, $Res Function(_WatchUser) _then)
      : super(_value, (v) => _then(v as _WatchUser));

  @override
  _WatchUser get _value => super._value as _WatchUser;
}

/// @nodoc
class _$_WatchUser implements _WatchUser {
  const _$_WatchUser();

  @override
  String toString() {
    return 'UserWatcherEvent.watchUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchUser(),
    @required TResult readUser(),
    @required TResult userReceived(Either<UserFailure, User> failureOrUser),
  }) {
    assert(watchUser != null);
    assert(readUser != null);
    assert(userReceived != null);
    return watchUser();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchUser(),
    TResult readUser(),
    TResult userReceived(Either<UserFailure, User> failureOrUser),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchUser != null) {
      return watchUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchUser(_WatchUser value),
    @required TResult readUser(_ReadUser value),
    @required TResult userReceived(_UserReceived value),
  }) {
    assert(watchUser != null);
    assert(readUser != null);
    assert(userReceived != null);
    return watchUser(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchUser(_WatchUser value),
    TResult readUser(_ReadUser value),
    TResult userReceived(_UserReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchUser != null) {
      return watchUser(this);
    }
    return orElse();
  }
}

abstract class _WatchUser implements UserWatcherEvent {
  const factory _WatchUser() = _$_WatchUser;
}

/// @nodoc
abstract class _$ReadUserCopyWith<$Res> {
  factory _$ReadUserCopyWith(_ReadUser value, $Res Function(_ReadUser) then) =
      __$ReadUserCopyWithImpl<$Res>;
}

/// @nodoc
class __$ReadUserCopyWithImpl<$Res> extends _$UserWatcherEventCopyWithImpl<$Res>
    implements _$ReadUserCopyWith<$Res> {
  __$ReadUserCopyWithImpl(_ReadUser _value, $Res Function(_ReadUser) _then)
      : super(_value, (v) => _then(v as _ReadUser));

  @override
  _ReadUser get _value => super._value as _ReadUser;
}

/// @nodoc
class _$_ReadUser implements _ReadUser {
  const _$_ReadUser();

  @override
  String toString() {
    return 'UserWatcherEvent.readUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ReadUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchUser(),
    @required TResult readUser(),
    @required TResult userReceived(Either<UserFailure, User> failureOrUser),
  }) {
    assert(watchUser != null);
    assert(readUser != null);
    assert(userReceived != null);
    return readUser();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchUser(),
    TResult readUser(),
    TResult userReceived(Either<UserFailure, User> failureOrUser),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (readUser != null) {
      return readUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchUser(_WatchUser value),
    @required TResult readUser(_ReadUser value),
    @required TResult userReceived(_UserReceived value),
  }) {
    assert(watchUser != null);
    assert(readUser != null);
    assert(userReceived != null);
    return readUser(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchUser(_WatchUser value),
    TResult readUser(_ReadUser value),
    TResult userReceived(_UserReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (readUser != null) {
      return readUser(this);
    }
    return orElse();
  }
}

abstract class _ReadUser implements UserWatcherEvent {
  const factory _ReadUser() = _$_ReadUser;
}

/// @nodoc
abstract class _$UserReceivedCopyWith<$Res> {
  factory _$UserReceivedCopyWith(
          _UserReceived value, $Res Function(_UserReceived) then) =
      __$UserReceivedCopyWithImpl<$Res>;
  $Res call({Either<UserFailure, User> failureOrUser});
}

/// @nodoc
class __$UserReceivedCopyWithImpl<$Res>
    extends _$UserWatcherEventCopyWithImpl<$Res>
    implements _$UserReceivedCopyWith<$Res> {
  __$UserReceivedCopyWithImpl(
      _UserReceived _value, $Res Function(_UserReceived) _then)
      : super(_value, (v) => _then(v as _UserReceived));

  @override
  _UserReceived get _value => super._value as _UserReceived;

  @override
  $Res call({
    Object failureOrUser = freezed,
  }) {
    return _then(_UserReceived(
      failureOrUser == freezed
          ? _value.failureOrUser
          : failureOrUser as Either<UserFailure, User>,
    ));
  }
}

/// @nodoc
class _$_UserReceived implements _UserReceived {
  const _$_UserReceived(this.failureOrUser) : assert(failureOrUser != null);

  @override
  final Either<UserFailure, User> failureOrUser;

  @override
  String toString() {
    return 'UserWatcherEvent.userReceived(failureOrUser: $failureOrUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserReceived &&
            (identical(other.failureOrUser, failureOrUser) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrUser, failureOrUser)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failureOrUser);

  @override
  _$UserReceivedCopyWith<_UserReceived> get copyWith =>
      __$UserReceivedCopyWithImpl<_UserReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchUser(),
    @required TResult readUser(),
    @required TResult userReceived(Either<UserFailure, User> failureOrUser),
  }) {
    assert(watchUser != null);
    assert(readUser != null);
    assert(userReceived != null);
    return userReceived(failureOrUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchUser(),
    TResult readUser(),
    TResult userReceived(Either<UserFailure, User> failureOrUser),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userReceived != null) {
      return userReceived(failureOrUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchUser(_WatchUser value),
    @required TResult readUser(_ReadUser value),
    @required TResult userReceived(_UserReceived value),
  }) {
    assert(watchUser != null);
    assert(readUser != null);
    assert(userReceived != null);
    return userReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchUser(_WatchUser value),
    TResult readUser(_ReadUser value),
    TResult userReceived(_UserReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userReceived != null) {
      return userReceived(this);
    }
    return orElse();
  }
}

abstract class _UserReceived implements UserWatcherEvent {
  const factory _UserReceived(Either<UserFailure, User> failureOrUser) =
      _$_UserReceived;

  Either<UserFailure, User> get failureOrUser;
  _$UserReceivedCopyWith<_UserReceived> get copyWith;
}

/// @nodoc
class _$UserWatcherStateTearOff {
  const _$UserWatcherStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

// ignore: unused_element
  _LoadSuccess loadSuccess(User user) {
    return _LoadSuccess(
      user,
    );
  }

// ignore: unused_element
  _LoadFailure loadFailure(UserFailure failure) {
    return _LoadFailure(
      failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UserWatcherState = _$UserWatcherStateTearOff();

/// @nodoc
mixin _$UserWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(User user),
    @required TResult loadFailure(UserFailure failure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(User user),
    TResult loadFailure(UserFailure failure),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $UserWatcherStateCopyWith<$Res> {
  factory $UserWatcherStateCopyWith(
          UserWatcherState value, $Res Function(UserWatcherState) then) =
      _$UserWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserWatcherStateCopyWithImpl<$Res>
    implements $UserWatcherStateCopyWith<$Res> {
  _$UserWatcherStateCopyWithImpl(this._value, this._then);

  final UserWatcherState _value;
  // ignore: unused_field
  final $Res Function(UserWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$UserWatcherStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'UserWatcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(User user),
    @required TResult loadFailure(UserFailure failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(User user),
    TResult loadFailure(UserFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UserWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res>
    extends _$UserWatcherStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc
class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'UserWatcherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(User user),
    @required TResult loadFailure(UserFailure failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(User user),
    TResult loadFailure(UserFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements UserWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$UserWatcherStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(_LoadSuccess(
      user == freezed ? _value.user : user as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.user) : assert(user != null);

  @override
  final User user;

  @override
  String toString() {
    return 'UserWatcherState.loadSuccess(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(User user),
    @required TResult loadFailure(UserFailure failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(User user),
    TResult loadFailure(UserFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements UserWatcherState {
  const factory _LoadSuccess(User user) = _$_LoadSuccess;

  User get user;
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({UserFailure failure});

  $UserFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$UserWatcherStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_LoadFailure(
      failure == freezed ? _value.failure : failure as UserFailure,
    ));
  }

  @override
  $UserFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $UserFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.failure) : assert(failure != null);

  @override
  final UserFailure failure;

  @override
  String toString() {
    return 'UserWatcherState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(User user),
    @required TResult loadFailure(UserFailure failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(User user),
    TResult loadFailure(UserFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements UserWatcherState {
  const factory _LoadFailure(UserFailure failure) = _$_LoadFailure;

  UserFailure get failure;
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
