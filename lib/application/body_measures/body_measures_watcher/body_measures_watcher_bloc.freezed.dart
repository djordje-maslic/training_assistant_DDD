// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'body_measures_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$BodyMeasuresWatcherEventTearOff {
  const _$BodyMeasuresWatcherEventTearOff();

// ignore: unused_element
  _WatchAllStarted watchAllStarted() {
    return const _WatchAllStarted();
  }

// ignore: unused_element
  _BodyMeasureReceived bodyMeasureReceived(
      Either<BodyMeasuresFailure, KtList<BodyMeasures>> failureOrBodyMeasures) {
    return _BodyMeasureReceived(
      failureOrBodyMeasures,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $BodyMeasuresWatcherEvent = _$BodyMeasuresWatcherEventTearOff();

/// @nodoc
mixin _$BodyMeasuresWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllStarted(),
    @required
        TResult bodyMeasureReceived(
            Either<BodyMeasuresFailure, KtList<BodyMeasures>>
                failureOrBodyMeasures),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllStarted(),
    TResult bodyMeasureReceived(
        Either<BodyMeasuresFailure, KtList<BodyMeasures>>
            failureOrBodyMeasures),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllStarted(_WatchAllStarted value),
    @required TResult bodyMeasureReceived(_BodyMeasureReceived value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllStarted(_WatchAllStarted value),
    TResult bodyMeasureReceived(_BodyMeasureReceived value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $BodyMeasuresWatcherEventCopyWith<$Res> {
  factory $BodyMeasuresWatcherEventCopyWith(BodyMeasuresWatcherEvent value,
          $Res Function(BodyMeasuresWatcherEvent) then) =
      _$BodyMeasuresWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BodyMeasuresWatcherEventCopyWithImpl<$Res>
    implements $BodyMeasuresWatcherEventCopyWith<$Res> {
  _$BodyMeasuresWatcherEventCopyWithImpl(this._value, this._then);

  final BodyMeasuresWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(BodyMeasuresWatcherEvent) _then;
}

/// @nodoc
abstract class _$WatchAllStartedCopyWith<$Res> {
  factory _$WatchAllStartedCopyWith(
          _WatchAllStarted value, $Res Function(_WatchAllStarted) then) =
      __$WatchAllStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchAllStartedCopyWithImpl<$Res>
    extends _$BodyMeasuresWatcherEventCopyWithImpl<$Res>
    implements _$WatchAllStartedCopyWith<$Res> {
  __$WatchAllStartedCopyWithImpl(
      _WatchAllStarted _value, $Res Function(_WatchAllStarted) _then)
      : super(_value, (v) => _then(v as _WatchAllStarted));

  @override
  _WatchAllStarted get _value => super._value as _WatchAllStarted;
}

/// @nodoc
class _$_WatchAllStarted implements _WatchAllStarted {
  const _$_WatchAllStarted();

  @override
  String toString() {
    return 'BodyMeasuresWatcherEvent.watchAllStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchAllStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllStarted(),
    @required
        TResult bodyMeasureReceived(
            Either<BodyMeasuresFailure, KtList<BodyMeasures>>
                failureOrBodyMeasures),
  }) {
    assert(watchAllStarted != null);
    assert(bodyMeasureReceived != null);
    return watchAllStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllStarted(),
    TResult bodyMeasureReceived(
        Either<BodyMeasuresFailure, KtList<BodyMeasures>>
            failureOrBodyMeasures),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllStarted(_WatchAllStarted value),
    @required TResult bodyMeasureReceived(_BodyMeasureReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(bodyMeasureReceived != null);
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllStarted(_WatchAllStarted value),
    TResult bodyMeasureReceived(_BodyMeasureReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements BodyMeasuresWatcherEvent {
  const factory _WatchAllStarted() = _$_WatchAllStarted;
}

/// @nodoc
abstract class _$BodyMeasureReceivedCopyWith<$Res> {
  factory _$BodyMeasureReceivedCopyWith(_BodyMeasureReceived value,
          $Res Function(_BodyMeasureReceived) then) =
      __$BodyMeasureReceivedCopyWithImpl<$Res>;
  $Res call(
      {Either<BodyMeasuresFailure, KtList<BodyMeasures>>
          failureOrBodyMeasures});
}

/// @nodoc
class __$BodyMeasureReceivedCopyWithImpl<$Res>
    extends _$BodyMeasuresWatcherEventCopyWithImpl<$Res>
    implements _$BodyMeasureReceivedCopyWith<$Res> {
  __$BodyMeasureReceivedCopyWithImpl(
      _BodyMeasureReceived _value, $Res Function(_BodyMeasureReceived) _then)
      : super(_value, (v) => _then(v as _BodyMeasureReceived));

  @override
  _BodyMeasureReceived get _value => super._value as _BodyMeasureReceived;

  @override
  $Res call({
    Object failureOrBodyMeasures = freezed,
  }) {
    return _then(_BodyMeasureReceived(
      failureOrBodyMeasures == freezed
          ? _value.failureOrBodyMeasures
          : failureOrBodyMeasures
              as Either<BodyMeasuresFailure, KtList<BodyMeasures>>,
    ));
  }
}

/// @nodoc
class _$_BodyMeasureReceived implements _BodyMeasureReceived {
  const _$_BodyMeasureReceived(this.failureOrBodyMeasures)
      : assert(failureOrBodyMeasures != null);

  @override
  final Either<BodyMeasuresFailure, KtList<BodyMeasures>> failureOrBodyMeasures;

  @override
  String toString() {
    return 'BodyMeasuresWatcherEvent.bodyMeasureReceived(failureOrBodyMeasures: $failureOrBodyMeasures)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BodyMeasureReceived &&
            (identical(other.failureOrBodyMeasures, failureOrBodyMeasures) ||
                const DeepCollectionEquality().equals(
                    other.failureOrBodyMeasures, failureOrBodyMeasures)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrBodyMeasures);

  @JsonKey(ignore: true)
  @override
  _$BodyMeasureReceivedCopyWith<_BodyMeasureReceived> get copyWith =>
      __$BodyMeasureReceivedCopyWithImpl<_BodyMeasureReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllStarted(),
    @required
        TResult bodyMeasureReceived(
            Either<BodyMeasuresFailure, KtList<BodyMeasures>>
                failureOrBodyMeasures),
  }) {
    assert(watchAllStarted != null);
    assert(bodyMeasureReceived != null);
    return bodyMeasureReceived(failureOrBodyMeasures);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllStarted(),
    TResult bodyMeasureReceived(
        Either<BodyMeasuresFailure, KtList<BodyMeasures>>
            failureOrBodyMeasures),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (bodyMeasureReceived != null) {
      return bodyMeasureReceived(failureOrBodyMeasures);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllStarted(_WatchAllStarted value),
    @required TResult bodyMeasureReceived(_BodyMeasureReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(bodyMeasureReceived != null);
    return bodyMeasureReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllStarted(_WatchAllStarted value),
    TResult bodyMeasureReceived(_BodyMeasureReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (bodyMeasureReceived != null) {
      return bodyMeasureReceived(this);
    }
    return orElse();
  }
}

abstract class _BodyMeasureReceived implements BodyMeasuresWatcherEvent {
  const factory _BodyMeasureReceived(
      Either<BodyMeasuresFailure, KtList<BodyMeasures>>
          failureOrBodyMeasures) = _$_BodyMeasureReceived;

  Either<BodyMeasuresFailure, KtList<BodyMeasures>> get failureOrBodyMeasures;
  @JsonKey(ignore: true)
  _$BodyMeasureReceivedCopyWith<_BodyMeasureReceived> get copyWith;
}

/// @nodoc
class _$BodyMeasuresWatcherStateTearOff {
  const _$BodyMeasuresWatcherStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

// ignore: unused_element
  _LoadSuccess loadSuccess(KtList<BodyMeasures> bodyMeasures) {
    return _LoadSuccess(
      bodyMeasures,
    );
  }

// ignore: unused_element
  _LoadFailure loadFailure(BodyMeasuresFailure failure) {
    return _LoadFailure(
      failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $BodyMeasuresWatcherState = _$BodyMeasuresWatcherStateTearOff();

/// @nodoc
mixin _$BodyMeasuresWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(KtList<BodyMeasures> bodyMeasures),
    @required TResult loadFailure(BodyMeasuresFailure failure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(KtList<BodyMeasures> bodyMeasures),
    TResult loadFailure(BodyMeasuresFailure failure),
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
abstract class $BodyMeasuresWatcherStateCopyWith<$Res> {
  factory $BodyMeasuresWatcherStateCopyWith(BodyMeasuresWatcherState value,
          $Res Function(BodyMeasuresWatcherState) then) =
      _$BodyMeasuresWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$BodyMeasuresWatcherStateCopyWithImpl<$Res>
    implements $BodyMeasuresWatcherStateCopyWith<$Res> {
  _$BodyMeasuresWatcherStateCopyWithImpl(this._value, this._then);

  final BodyMeasuresWatcherState _value;
  // ignore: unused_field
  final $Res Function(BodyMeasuresWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$BodyMeasuresWatcherStateCopyWithImpl<$Res>
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
    return 'BodyMeasuresWatcherState.initial()';
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
    @required TResult loadSuccess(KtList<BodyMeasures> bodyMeasures),
    @required TResult loadFailure(BodyMeasuresFailure failure),
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
    TResult loadSuccess(KtList<BodyMeasures> bodyMeasures),
    TResult loadFailure(BodyMeasuresFailure failure),
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

abstract class _Initial implements BodyMeasuresWatcherState {
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
    extends _$BodyMeasuresWatcherStateCopyWithImpl<$Res>
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
    return 'BodyMeasuresWatcherState.loadInProgress()';
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
    @required TResult loadSuccess(KtList<BodyMeasures> bodyMeasures),
    @required TResult loadFailure(BodyMeasuresFailure failure),
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
    TResult loadSuccess(KtList<BodyMeasures> bodyMeasures),
    TResult loadFailure(BodyMeasuresFailure failure),
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

abstract class _LoadInProgress implements BodyMeasuresWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<BodyMeasures> bodyMeasures});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$BodyMeasuresWatcherStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object bodyMeasures = freezed,
  }) {
    return _then(_LoadSuccess(
      bodyMeasures == freezed
          ? _value.bodyMeasures
          : bodyMeasures as KtList<BodyMeasures>,
    ));
  }
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.bodyMeasures) : assert(bodyMeasures != null);

  @override
  final KtList<BodyMeasures> bodyMeasures;

  @override
  String toString() {
    return 'BodyMeasuresWatcherState.loadSuccess(bodyMeasures: $bodyMeasures)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.bodyMeasures, bodyMeasures) ||
                const DeepCollectionEquality()
                    .equals(other.bodyMeasures, bodyMeasures)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(bodyMeasures);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(KtList<BodyMeasures> bodyMeasures),
    @required TResult loadFailure(BodyMeasuresFailure failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(bodyMeasures);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(KtList<BodyMeasures> bodyMeasures),
    TResult loadFailure(BodyMeasuresFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(bodyMeasures);
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

abstract class _LoadSuccess implements BodyMeasuresWatcherState {
  const factory _LoadSuccess(KtList<BodyMeasures> bodyMeasures) =
      _$_LoadSuccess;

  KtList<BodyMeasures> get bodyMeasures;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({BodyMeasuresFailure failure});

  $BodyMeasuresFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$BodyMeasuresWatcherStateCopyWithImpl<$Res>
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
      failure == freezed ? _value.failure : failure as BodyMeasuresFailure,
    ));
  }

  @override
  $BodyMeasuresFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $BodyMeasuresFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.failure) : assert(failure != null);

  @override
  final BodyMeasuresFailure failure;

  @override
  String toString() {
    return 'BodyMeasuresWatcherState.loadFailure(failure: $failure)';
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

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(KtList<BodyMeasures> bodyMeasures),
    @required TResult loadFailure(BodyMeasuresFailure failure),
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
    TResult loadSuccess(KtList<BodyMeasures> bodyMeasures),
    TResult loadFailure(BodyMeasuresFailure failure),
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

abstract class _LoadFailure implements BodyMeasuresWatcherState {
  const factory _LoadFailure(BodyMeasuresFailure failure) = _$_LoadFailure;

  BodyMeasuresFailure get failure;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
