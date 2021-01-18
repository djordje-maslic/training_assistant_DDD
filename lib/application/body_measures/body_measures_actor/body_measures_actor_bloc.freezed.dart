// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'body_measures_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$BodyMeasuresActorEventTearOff {
  const _$BodyMeasuresActorEventTearOff();

// ignore: unused_element
  _Deleted deleted(BodyMeasures bodyMeasures) {
    return _Deleted(
      bodyMeasures,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $BodyMeasuresActorEvent = _$BodyMeasuresActorEventTearOff();

/// @nodoc
mixin _$BodyMeasuresActorEvent {
  BodyMeasures get bodyMeasures;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult deleted(BodyMeasures bodyMeasures),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult deleted(BodyMeasures bodyMeasures),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult deleted(_Deleted value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult deleted(_Deleted value),
    @required TResult orElse(),
  });

  $BodyMeasuresActorEventCopyWith<BodyMeasuresActorEvent> get copyWith;
}

/// @nodoc
abstract class $BodyMeasuresActorEventCopyWith<$Res> {
  factory $BodyMeasuresActorEventCopyWith(BodyMeasuresActorEvent value,
          $Res Function(BodyMeasuresActorEvent) then) =
      _$BodyMeasuresActorEventCopyWithImpl<$Res>;
  $Res call({BodyMeasures bodyMeasures});

  $BodyMeasuresCopyWith<$Res> get bodyMeasures;
}

/// @nodoc
class _$BodyMeasuresActorEventCopyWithImpl<$Res>
    implements $BodyMeasuresActorEventCopyWith<$Res> {
  _$BodyMeasuresActorEventCopyWithImpl(this._value, this._then);

  final BodyMeasuresActorEvent _value;
  // ignore: unused_field
  final $Res Function(BodyMeasuresActorEvent) _then;

  @override
  $Res call({
    Object bodyMeasures = freezed,
  }) {
    return _then(_value.copyWith(
      bodyMeasures: bodyMeasures == freezed
          ? _value.bodyMeasures
          : bodyMeasures as BodyMeasures,
    ));
  }

  @override
  $BodyMeasuresCopyWith<$Res> get bodyMeasures {
    if (_value.bodyMeasures == null) {
      return null;
    }
    return $BodyMeasuresCopyWith<$Res>(_value.bodyMeasures, (value) {
      return _then(_value.copyWith(bodyMeasures: value));
    });
  }
}

/// @nodoc
abstract class _$DeletedCopyWith<$Res>
    implements $BodyMeasuresActorEventCopyWith<$Res> {
  factory _$DeletedCopyWith(_Deleted value, $Res Function(_Deleted) then) =
      __$DeletedCopyWithImpl<$Res>;
  @override
  $Res call({BodyMeasures bodyMeasures});

  @override
  $BodyMeasuresCopyWith<$Res> get bodyMeasures;
}

/// @nodoc
class __$DeletedCopyWithImpl<$Res>
    extends _$BodyMeasuresActorEventCopyWithImpl<$Res>
    implements _$DeletedCopyWith<$Res> {
  __$DeletedCopyWithImpl(_Deleted _value, $Res Function(_Deleted) _then)
      : super(_value, (v) => _then(v as _Deleted));

  @override
  _Deleted get _value => super._value as _Deleted;

  @override
  $Res call({
    Object bodyMeasures = freezed,
  }) {
    return _then(_Deleted(
      bodyMeasures == freezed
          ? _value.bodyMeasures
          : bodyMeasures as BodyMeasures,
    ));
  }
}

/// @nodoc
class _$_Deleted implements _Deleted {
  const _$_Deleted(this.bodyMeasures) : assert(bodyMeasures != null);

  @override
  final BodyMeasures bodyMeasures;

  @override
  String toString() {
    return 'BodyMeasuresActorEvent.deleted(bodyMeasures: $bodyMeasures)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Deleted &&
            (identical(other.bodyMeasures, bodyMeasures) ||
                const DeepCollectionEquality()
                    .equals(other.bodyMeasures, bodyMeasures)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(bodyMeasures);

  @override
  _$DeletedCopyWith<_Deleted> get copyWith =>
      __$DeletedCopyWithImpl<_Deleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult deleted(BodyMeasures bodyMeasures),
  }) {
    assert(deleted != null);
    return deleted(bodyMeasures);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult deleted(BodyMeasures bodyMeasures),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleted != null) {
      return deleted(bodyMeasures);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult deleted(_Deleted value),
  }) {
    assert(deleted != null);
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult deleted(_Deleted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _Deleted implements BodyMeasuresActorEvent {
  const factory _Deleted(BodyMeasures bodyMeasures) = _$_Deleted;

  @override
  BodyMeasures get bodyMeasures;
  @override
  _$DeletedCopyWith<_Deleted> get copyWith;
}

/// @nodoc
class _$BodyMeasuresActorStateTearOff {
  const _$BodyMeasuresActorStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _ActionInProgress actionInProgress() {
    return const _ActionInProgress();
  }

// ignore: unused_element
  _DeleteFailure deleteFailure(BodyMeasuresFailure bodyMeasuresFailure) {
    return _DeleteFailure(
      bodyMeasuresFailure,
    );
  }

// ignore: unused_element
  _DeleteSuccess deleteSuccess() {
    return const _DeleteSuccess();
  }
}

/// @nodoc
// ignore: unused_element
const $BodyMeasuresActorState = _$BodyMeasuresActorStateTearOff();

/// @nodoc
mixin _$BodyMeasuresActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult deleteFailure(BodyMeasuresFailure bodyMeasuresFailure),
    @required TResult deleteSuccess(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult deleteFailure(BodyMeasuresFailure bodyMeasuresFailure),
    TResult deleteSuccess(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult deleteFailure(_DeleteFailure value),
    @required TResult deleteSuccess(_DeleteSuccess value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult deleteFailure(_DeleteFailure value),
    TResult deleteSuccess(_DeleteSuccess value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $BodyMeasuresActorStateCopyWith<$Res> {
  factory $BodyMeasuresActorStateCopyWith(BodyMeasuresActorState value,
          $Res Function(BodyMeasuresActorState) then) =
      _$BodyMeasuresActorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$BodyMeasuresActorStateCopyWithImpl<$Res>
    implements $BodyMeasuresActorStateCopyWith<$Res> {
  _$BodyMeasuresActorStateCopyWithImpl(this._value, this._then);

  final BodyMeasuresActorState _value;
  // ignore: unused_field
  final $Res Function(BodyMeasuresActorState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$BodyMeasuresActorStateCopyWithImpl<$Res>
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
    return 'BodyMeasuresActorState.initial()';
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
    @required TResult actionInProgress(),
    @required TResult deleteFailure(BodyMeasuresFailure bodyMeasuresFailure),
    @required TResult deleteSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult deleteFailure(BodyMeasuresFailure bodyMeasuresFailure),
    TResult deleteSuccess(),
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
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult deleteFailure(_DeleteFailure value),
    @required TResult deleteSuccess(_DeleteSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult deleteFailure(_DeleteFailure value),
    TResult deleteSuccess(_DeleteSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements BodyMeasuresActorState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ActionInProgressCopyWith<$Res> {
  factory _$ActionInProgressCopyWith(
          _ActionInProgress value, $Res Function(_ActionInProgress) then) =
      __$ActionInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$ActionInProgressCopyWithImpl<$Res>
    extends _$BodyMeasuresActorStateCopyWithImpl<$Res>
    implements _$ActionInProgressCopyWith<$Res> {
  __$ActionInProgressCopyWithImpl(
      _ActionInProgress _value, $Res Function(_ActionInProgress) _then)
      : super(_value, (v) => _then(v as _ActionInProgress));

  @override
  _ActionInProgress get _value => super._value as _ActionInProgress;
}

/// @nodoc
class _$_ActionInProgress implements _ActionInProgress {
  const _$_ActionInProgress();

  @override
  String toString() {
    return 'BodyMeasuresActorState.actionInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ActionInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult deleteFailure(BodyMeasuresFailure bodyMeasuresFailure),
    @required TResult deleteSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult deleteFailure(BodyMeasuresFailure bodyMeasuresFailure),
    TResult deleteSuccess(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult deleteFailure(_DeleteFailure value),
    @required TResult deleteSuccess(_DeleteSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult deleteFailure(_DeleteFailure value),
    TResult deleteSuccess(_DeleteSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements BodyMeasuresActorState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

/// @nodoc
abstract class _$DeleteFailureCopyWith<$Res> {
  factory _$DeleteFailureCopyWith(
          _DeleteFailure value, $Res Function(_DeleteFailure) then) =
      __$DeleteFailureCopyWithImpl<$Res>;
  $Res call({BodyMeasuresFailure bodyMeasuresFailure});

  $BodyMeasuresFailureCopyWith<$Res> get bodyMeasuresFailure;
}

/// @nodoc
class __$DeleteFailureCopyWithImpl<$Res>
    extends _$BodyMeasuresActorStateCopyWithImpl<$Res>
    implements _$DeleteFailureCopyWith<$Res> {
  __$DeleteFailureCopyWithImpl(
      _DeleteFailure _value, $Res Function(_DeleteFailure) _then)
      : super(_value, (v) => _then(v as _DeleteFailure));

  @override
  _DeleteFailure get _value => super._value as _DeleteFailure;

  @override
  $Res call({
    Object bodyMeasuresFailure = freezed,
  }) {
    return _then(_DeleteFailure(
      bodyMeasuresFailure == freezed
          ? _value.bodyMeasuresFailure
          : bodyMeasuresFailure as BodyMeasuresFailure,
    ));
  }

  @override
  $BodyMeasuresFailureCopyWith<$Res> get bodyMeasuresFailure {
    if (_value.bodyMeasuresFailure == null) {
      return null;
    }
    return $BodyMeasuresFailureCopyWith<$Res>(_value.bodyMeasuresFailure,
        (value) {
      return _then(_value.copyWith(bodyMeasuresFailure: value));
    });
  }
}

/// @nodoc
class _$_DeleteFailure implements _DeleteFailure {
  const _$_DeleteFailure(this.bodyMeasuresFailure)
      : assert(bodyMeasuresFailure != null);

  @override
  final BodyMeasuresFailure bodyMeasuresFailure;

  @override
  String toString() {
    return 'BodyMeasuresActorState.deleteFailure(bodyMeasuresFailure: $bodyMeasuresFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteFailure &&
            (identical(other.bodyMeasuresFailure, bodyMeasuresFailure) ||
                const DeepCollectionEquality()
                    .equals(other.bodyMeasuresFailure, bodyMeasuresFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(bodyMeasuresFailure);

  @override
  _$DeleteFailureCopyWith<_DeleteFailure> get copyWith =>
      __$DeleteFailureCopyWithImpl<_DeleteFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult deleteFailure(BodyMeasuresFailure bodyMeasuresFailure),
    @required TResult deleteSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return deleteFailure(bodyMeasuresFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult deleteFailure(BodyMeasuresFailure bodyMeasuresFailure),
    TResult deleteSuccess(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleteFailure != null) {
      return deleteFailure(bodyMeasuresFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult deleteFailure(_DeleteFailure value),
    @required TResult deleteSuccess(_DeleteSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return deleteFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult deleteFailure(_DeleteFailure value),
    TResult deleteSuccess(_DeleteSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleteFailure != null) {
      return deleteFailure(this);
    }
    return orElse();
  }
}

abstract class _DeleteFailure implements BodyMeasuresActorState {
  const factory _DeleteFailure(BodyMeasuresFailure bodyMeasuresFailure) =
      _$_DeleteFailure;

  BodyMeasuresFailure get bodyMeasuresFailure;
  _$DeleteFailureCopyWith<_DeleteFailure> get copyWith;
}

/// @nodoc
abstract class _$DeleteSuccessCopyWith<$Res> {
  factory _$DeleteSuccessCopyWith(
          _DeleteSuccess value, $Res Function(_DeleteSuccess) then) =
      __$DeleteSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$DeleteSuccessCopyWithImpl<$Res>
    extends _$BodyMeasuresActorStateCopyWithImpl<$Res>
    implements _$DeleteSuccessCopyWith<$Res> {
  __$DeleteSuccessCopyWithImpl(
      _DeleteSuccess _value, $Res Function(_DeleteSuccess) _then)
      : super(_value, (v) => _then(v as _DeleteSuccess));

  @override
  _DeleteSuccess get _value => super._value as _DeleteSuccess;
}

/// @nodoc
class _$_DeleteSuccess implements _DeleteSuccess {
  const _$_DeleteSuccess();

  @override
  String toString() {
    return 'BodyMeasuresActorState.deleteSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DeleteSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult deleteFailure(BodyMeasuresFailure bodyMeasuresFailure),
    @required TResult deleteSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return deleteSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult deleteFailure(BodyMeasuresFailure bodyMeasuresFailure),
    TResult deleteSuccess(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleteSuccess != null) {
      return deleteSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult deleteFailure(_DeleteFailure value),
    @required TResult deleteSuccess(_DeleteSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return deleteSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult deleteFailure(_DeleteFailure value),
    TResult deleteSuccess(_DeleteSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleteSuccess != null) {
      return deleteSuccess(this);
    }
    return orElse();
  }
}

abstract class _DeleteSuccess implements BodyMeasuresActorState {
  const factory _DeleteSuccess() = _$_DeleteSuccess;
}
