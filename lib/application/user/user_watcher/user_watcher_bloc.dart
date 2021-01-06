import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:reminder_app/domain/auth/i_user_repository.dart';
import 'package:reminder_app/domain/auth/user.dart';
import 'package:reminder_app/domain/auth/user_failure.dart';

part 'user_watcher_event.dart';

part 'user_watcher_state.dart';

part 'user_watcher_bloc.freezed.dart';

@injectable
class UserWatcherBloc extends Bloc<UserWatcherEvent, UserWatcherState> {
  UserWatcherBloc(this._iUserRepository)
      : super(const UserWatcherState.initial());

  final IUserRepository _iUserRepository;

  StreamSubscription<Either<UserFailure, User>> _userStreamSubscription;

  @override
  Stream<UserWatcherState> mapEventToState(
    UserWatcherEvent event,
  ) async* {
    yield* event.map(
      watchUser: (e) async* {
        yield const UserWatcherState.loadInProgress();
        await _userStreamSubscription?.cancel();
        _userStreamSubscription = _iUserRepository.watchUser().listen(
            (failureOrUser) =>
                add(UserWatcherEvent.userReceived(failureOrUser)));
      },
      readUser: (e) async* {
        yield const UserWatcherState.loadInProgress();
        await _iUserRepository.read()?.then((failureOrUser) =>
            add(UserWatcherEvent.userReceived(failureOrUser)));
      },
      userReceived: (e) async* {
        yield e.failureOrUser.fold(
            (failure) => UserWatcherState.loadFailure(failure),
            (user) => UserWatcherState.loadSuccess(user));
      },
    );
  }
}
