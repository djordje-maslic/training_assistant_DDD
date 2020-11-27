// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'exercise_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ExerciseWatcherEventTearOff {
  const _$ExerciseWatcherEventTearOff();

// ignore: unused_element
  _WatchAllStarted watchAllStarted() {
    return const _WatchAllStarted();
  }

// ignore: unused_element
  _WatchSearchedExercises watchSearchedExercises() {
    return const _WatchSearchedExercises();
  }

// ignore: unused_element
  _ExerciseReceived exerciseReceived(
      Either<ExerciseFailure, KtList<Exercise>> failureOrExercise) {
    return _ExerciseReceived(
      failureOrExercise,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ExerciseWatcherEvent = _$ExerciseWatcherEventTearOff();

/// @nodoc
mixin _$ExerciseWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllStarted(),
    @required TResult watchSearchedExercises(),
    @required
        TResult exerciseReceived(
            Either<ExerciseFailure, KtList<Exercise>> failureOrExercise),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllStarted(),
    TResult watchSearchedExercises(),
    TResult exerciseReceived(
        Either<ExerciseFailure, KtList<Exercise>> failureOrExercise),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllStarted(_WatchAllStarted value),
    @required TResult watchSearchedExercises(_WatchSearchedExercises value),
    @required TResult exerciseReceived(_ExerciseReceived value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllStarted(_WatchAllStarted value),
    TResult watchSearchedExercises(_WatchSearchedExercises value),
    TResult exerciseReceived(_ExerciseReceived value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ExerciseWatcherEventCopyWith<$Res> {
  factory $ExerciseWatcherEventCopyWith(ExerciseWatcherEvent value,
          $Res Function(ExerciseWatcherEvent) then) =
      _$ExerciseWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ExerciseWatcherEventCopyWithImpl<$Res>
    implements $ExerciseWatcherEventCopyWith<$Res> {
  _$ExerciseWatcherEventCopyWithImpl(this._value, this._then);

  final ExerciseWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(ExerciseWatcherEvent) _then;
}

/// @nodoc
abstract class _$WatchAllStartedCopyWith<$Res> {
  factory _$WatchAllStartedCopyWith(
          _WatchAllStarted value, $Res Function(_WatchAllStarted) then) =
      __$WatchAllStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchAllStartedCopyWithImpl<$Res>
    extends _$ExerciseWatcherEventCopyWithImpl<$Res>
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
    return 'ExerciseWatcherEvent.watchAllStarted()';
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
    @required TResult watchSearchedExercises(),
    @required
        TResult exerciseReceived(
            Either<ExerciseFailure, KtList<Exercise>> failureOrExercise),
  }) {
    assert(watchAllStarted != null);
    assert(watchSearchedExercises != null);
    assert(exerciseReceived != null);
    return watchAllStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllStarted(),
    TResult watchSearchedExercises(),
    TResult exerciseReceived(
        Either<ExerciseFailure, KtList<Exercise>> failureOrExercise),
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
    @required TResult watchSearchedExercises(_WatchSearchedExercises value),
    @required TResult exerciseReceived(_ExerciseReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(watchSearchedExercises != null);
    assert(exerciseReceived != null);
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllStarted(_WatchAllStarted value),
    TResult watchSearchedExercises(_WatchSearchedExercises value),
    TResult exerciseReceived(_ExerciseReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements ExerciseWatcherEvent {
  const factory _WatchAllStarted() = _$_WatchAllStarted;
}

/// @nodoc
abstract class _$WatchSearchedExercisesCopyWith<$Res> {
  factory _$WatchSearchedExercisesCopyWith(_WatchSearchedExercises value,
          $Res Function(_WatchSearchedExercises) then) =
      __$WatchSearchedExercisesCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchSearchedExercisesCopyWithImpl<$Res>
    extends _$ExerciseWatcherEventCopyWithImpl<$Res>
    implements _$WatchSearchedExercisesCopyWith<$Res> {
  __$WatchSearchedExercisesCopyWithImpl(_WatchSearchedExercises _value,
      $Res Function(_WatchSearchedExercises) _then)
      : super(_value, (v) => _then(v as _WatchSearchedExercises));

  @override
  _WatchSearchedExercises get _value => super._value as _WatchSearchedExercises;
}

/// @nodoc
class _$_WatchSearchedExercises implements _WatchSearchedExercises {
  const _$_WatchSearchedExercises();

  @override
  String toString() {
    return 'ExerciseWatcherEvent.watchSearchedExercises()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchSearchedExercises);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllStarted(),
    @required TResult watchSearchedExercises(),
    @required
        TResult exerciseReceived(
            Either<ExerciseFailure, KtList<Exercise>> failureOrExercise),
  }) {
    assert(watchAllStarted != null);
    assert(watchSearchedExercises != null);
    assert(exerciseReceived != null);
    return watchSearchedExercises();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllStarted(),
    TResult watchSearchedExercises(),
    TResult exerciseReceived(
        Either<ExerciseFailure, KtList<Exercise>> failureOrExercise),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchSearchedExercises != null) {
      return watchSearchedExercises();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllStarted(_WatchAllStarted value),
    @required TResult watchSearchedExercises(_WatchSearchedExercises value),
    @required TResult exerciseReceived(_ExerciseReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(watchSearchedExercises != null);
    assert(exerciseReceived != null);
    return watchSearchedExercises(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllStarted(_WatchAllStarted value),
    TResult watchSearchedExercises(_WatchSearchedExercises value),
    TResult exerciseReceived(_ExerciseReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchSearchedExercises != null) {
      return watchSearchedExercises(this);
    }
    return orElse();
  }
}

abstract class _WatchSearchedExercises implements ExerciseWatcherEvent {
  const factory _WatchSearchedExercises() = _$_WatchSearchedExercises;
}

/// @nodoc
abstract class _$ExerciseReceivedCopyWith<$Res> {
  factory _$ExerciseReceivedCopyWith(
          _ExerciseReceived value, $Res Function(_ExerciseReceived) then) =
      __$ExerciseReceivedCopyWithImpl<$Res>;
  $Res call({Either<ExerciseFailure, KtList<Exercise>> failureOrExercise});
}

/// @nodoc
class __$ExerciseReceivedCopyWithImpl<$Res>
    extends _$ExerciseWatcherEventCopyWithImpl<$Res>
    implements _$ExerciseReceivedCopyWith<$Res> {
  __$ExerciseReceivedCopyWithImpl(
      _ExerciseReceived _value, $Res Function(_ExerciseReceived) _then)
      : super(_value, (v) => _then(v as _ExerciseReceived));

  @override
  _ExerciseReceived get _value => super._value as _ExerciseReceived;

  @override
  $Res call({
    Object failureOrExercise = freezed,
  }) {
    return _then(_ExerciseReceived(
      failureOrExercise == freezed
          ? _value.failureOrExercise
          : failureOrExercise as Either<ExerciseFailure, KtList<Exercise>>,
    ));
  }
}

/// @nodoc
class _$_ExerciseReceived implements _ExerciseReceived {
  const _$_ExerciseReceived(this.failureOrExercise)
      : assert(failureOrExercise != null);

  @override
  final Either<ExerciseFailure, KtList<Exercise>> failureOrExercise;

  @override
  String toString() {
    return 'ExerciseWatcherEvent.exerciseReceived(failureOrExercise: $failureOrExercise)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExerciseReceived &&
            (identical(other.failureOrExercise, failureOrExercise) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrExercise, failureOrExercise)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrExercise);

  @override
  _$ExerciseReceivedCopyWith<_ExerciseReceived> get copyWith =>
      __$ExerciseReceivedCopyWithImpl<_ExerciseReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllStarted(),
    @required TResult watchSearchedExercises(),
    @required
        TResult exerciseReceived(
            Either<ExerciseFailure, KtList<Exercise>> failureOrExercise),
  }) {
    assert(watchAllStarted != null);
    assert(watchSearchedExercises != null);
    assert(exerciseReceived != null);
    return exerciseReceived(failureOrExercise);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllStarted(),
    TResult watchSearchedExercises(),
    TResult exerciseReceived(
        Either<ExerciseFailure, KtList<Exercise>> failureOrExercise),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (exerciseReceived != null) {
      return exerciseReceived(failureOrExercise);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllStarted(_WatchAllStarted value),
    @required TResult watchSearchedExercises(_WatchSearchedExercises value),
    @required TResult exerciseReceived(_ExerciseReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(watchSearchedExercises != null);
    assert(exerciseReceived != null);
    return exerciseReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllStarted(_WatchAllStarted value),
    TResult watchSearchedExercises(_WatchSearchedExercises value),
    TResult exerciseReceived(_ExerciseReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (exerciseReceived != null) {
      return exerciseReceived(this);
    }
    return orElse();
  }
}

abstract class _ExerciseReceived implements ExerciseWatcherEvent {
  const factory _ExerciseReceived(
          Either<ExerciseFailure, KtList<Exercise>> failureOrExercise) =
      _$_ExerciseReceived;

  Either<ExerciseFailure, KtList<Exercise>> get failureOrExercise;
  _$ExerciseReceivedCopyWith<_ExerciseReceived> get copyWith;
}

/// @nodoc
class _$ExerciseWatcherStateTearOff {
  const _$ExerciseWatcherStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

// ignore: unused_element
  _LoadSuccess loadSuccess(KtList<Exercise> exercise) {
    return _LoadSuccess(
      exercise,
    );
  }

// ignore: unused_element
  _LoadFailure loadFailure(ExerciseFailure failure) {
    return _LoadFailure(
      failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ExerciseWatcherState = _$ExerciseWatcherStateTearOff();

/// @nodoc
mixin _$ExerciseWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(KtList<Exercise> exercise),
    @required TResult loadFailure(ExerciseFailure failure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(KtList<Exercise> exercise),
    TResult loadFailure(ExerciseFailure failure),
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
abstract class $ExerciseWatcherStateCopyWith<$Res> {
  factory $ExerciseWatcherStateCopyWith(ExerciseWatcherState value,
          $Res Function(ExerciseWatcherState) then) =
      _$ExerciseWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ExerciseWatcherStateCopyWithImpl<$Res>
    implements $ExerciseWatcherStateCopyWith<$Res> {
  _$ExerciseWatcherStateCopyWithImpl(this._value, this._then);

  final ExerciseWatcherState _value;
  // ignore: unused_field
  final $Res Function(ExerciseWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$ExerciseWatcherStateCopyWithImpl<$Res>
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
    return 'ExerciseWatcherState.initial()';
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
    @required TResult loadSuccess(KtList<Exercise> exercise),
    @required TResult loadFailure(ExerciseFailure failure),
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
    TResult loadSuccess(KtList<Exercise> exercise),
    TResult loadFailure(ExerciseFailure failure),
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

abstract class _Initial implements ExerciseWatcherState {
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
    extends _$ExerciseWatcherStateCopyWithImpl<$Res>
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
    return 'ExerciseWatcherState.loadInProgress()';
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
    @required TResult loadSuccess(KtList<Exercise> exercise),
    @required TResult loadFailure(ExerciseFailure failure),
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
    TResult loadSuccess(KtList<Exercise> exercise),
    TResult loadFailure(ExerciseFailure failure),
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

abstract class _LoadInProgress implements ExerciseWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<Exercise> exercise});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$ExerciseWatcherStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object exercise = freezed,
  }) {
    return _then(_LoadSuccess(
      exercise == freezed ? _value.exercise : exercise as KtList<Exercise>,
    ));
  }
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.exercise) : assert(exercise != null);

  @override
  final KtList<Exercise> exercise;

  @override
  String toString() {
    return 'ExerciseWatcherState.loadSuccess(exercise: $exercise)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.exercise, exercise) ||
                const DeepCollectionEquality()
                    .equals(other.exercise, exercise)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exercise);

  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(KtList<Exercise> exercise),
    @required TResult loadFailure(ExerciseFailure failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(exercise);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(KtList<Exercise> exercise),
    TResult loadFailure(ExerciseFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(exercise);
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

abstract class _LoadSuccess implements ExerciseWatcherState {
  const factory _LoadSuccess(KtList<Exercise> exercise) = _$_LoadSuccess;

  KtList<Exercise> get exercise;
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({ExerciseFailure failure});

  $ExerciseFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$ExerciseWatcherStateCopyWithImpl<$Res>
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
      failure == freezed ? _value.failure : failure as ExerciseFailure,
    ));
  }

  @override
  $ExerciseFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $ExerciseFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.failure) : assert(failure != null);

  @override
  final ExerciseFailure failure;

  @override
  String toString() {
    return 'ExerciseWatcherState.loadFailure(failure: $failure)';
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
    @required TResult loadSuccess(KtList<Exercise> exercise),
    @required TResult loadFailure(ExerciseFailure failure),
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
    TResult loadSuccess(KtList<Exercise> exercise),
    TResult loadFailure(ExerciseFailure failure),
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

abstract class _LoadFailure implements ExerciseWatcherState {
  const factory _LoadFailure(ExerciseFailure failure) = _$_LoadFailure;

  ExerciseFailure get failure;
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
