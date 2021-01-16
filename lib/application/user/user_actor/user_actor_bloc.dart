import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:reminder_app/domain/auth/i_user_repository.dart';
import 'package:reminder_app/domain/auth/user.dart';
import 'package:reminder_app/domain/auth/user_failure.dart';

part 'user_actor_event.dart';

part 'user_actor_state.dart';

part 'user_actor_bloc.freezed.dart';

@injectable
class UserActorBloc extends Bloc<UserActorEvent, UserActorState> {
  final IUserRepository _iUserRepository;

  UserActorBloc(this._iUserRepository) : super(const UserActorState.initial());

  @override
  Stream<UserActorState> mapEventToState(
    UserActorEvent event,
  ) async* {
    yield const UserActorState.actionInProgress();
    final possibleFailure = await _iUserRepository.delete(event.user);
    yield possibleFailure.fold(
        (failure) => UserActorState.deleteFailure(failure),
        (_) => const UserActorState.deleteSuccess());
  }
}
