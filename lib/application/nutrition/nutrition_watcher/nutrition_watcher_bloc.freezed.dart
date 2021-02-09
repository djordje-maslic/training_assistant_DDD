// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'nutrition_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$NutritionWatcherEventTearOff {
  const _$NutritionWatcherEventTearOff();

// ignore: unused_element
  _WatchAllStarted watchAllStarted() {
    return const _WatchAllStarted();
  }

// ignore: unused_element
  _WatchUsersNutrition watchUsersNutrition() {
    return const _WatchUsersNutrition();
  }

// ignore: unused_element
  _NutritionReceived nutritionReceived(
      Either<NutritionFailure, KtList<Nutrition>> failureOrNutrition) {
    return _NutritionReceived(
      failureOrNutrition,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $NutritionWatcherEvent = _$NutritionWatcherEventTearOff();

/// @nodoc
mixin _$NutritionWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllStarted(),
    @required TResult watchUsersNutrition(),
    @required
        TResult nutritionReceived(
            Either<NutritionFailure, KtList<Nutrition>> failureOrNutrition),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllStarted(),
    TResult watchUsersNutrition(),
    TResult nutritionReceived(
        Either<NutritionFailure, KtList<Nutrition>> failureOrNutrition),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllStarted(_WatchAllStarted value),
    @required TResult watchUsersNutrition(_WatchUsersNutrition value),
    @required TResult nutritionReceived(_NutritionReceived value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllStarted(_WatchAllStarted value),
    TResult watchUsersNutrition(_WatchUsersNutrition value),
    TResult nutritionReceived(_NutritionReceived value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $NutritionWatcherEventCopyWith<$Res> {
  factory $NutritionWatcherEventCopyWith(NutritionWatcherEvent value,
          $Res Function(NutritionWatcherEvent) then) =
      _$NutritionWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NutritionWatcherEventCopyWithImpl<$Res>
    implements $NutritionWatcherEventCopyWith<$Res> {
  _$NutritionWatcherEventCopyWithImpl(this._value, this._then);

  final NutritionWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(NutritionWatcherEvent) _then;
}

/// @nodoc
abstract class _$WatchAllStartedCopyWith<$Res> {
  factory _$WatchAllStartedCopyWith(
          _WatchAllStarted value, $Res Function(_WatchAllStarted) then) =
      __$WatchAllStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchAllStartedCopyWithImpl<$Res>
    extends _$NutritionWatcherEventCopyWithImpl<$Res>
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
    return 'NutritionWatcherEvent.watchAllStarted()';
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
    @required TResult watchUsersNutrition(),
    @required
        TResult nutritionReceived(
            Either<NutritionFailure, KtList<Nutrition>> failureOrNutrition),
  }) {
    assert(watchAllStarted != null);
    assert(watchUsersNutrition != null);
    assert(nutritionReceived != null);
    return watchAllStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllStarted(),
    TResult watchUsersNutrition(),
    TResult nutritionReceived(
        Either<NutritionFailure, KtList<Nutrition>> failureOrNutrition),
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
    @required TResult watchUsersNutrition(_WatchUsersNutrition value),
    @required TResult nutritionReceived(_NutritionReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(watchUsersNutrition != null);
    assert(nutritionReceived != null);
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllStarted(_WatchAllStarted value),
    TResult watchUsersNutrition(_WatchUsersNutrition value),
    TResult nutritionReceived(_NutritionReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements NutritionWatcherEvent {
  const factory _WatchAllStarted() = _$_WatchAllStarted;
}

/// @nodoc
abstract class _$WatchUsersNutritionCopyWith<$Res> {
  factory _$WatchUsersNutritionCopyWith(_WatchUsersNutrition value,
          $Res Function(_WatchUsersNutrition) then) =
      __$WatchUsersNutritionCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchUsersNutritionCopyWithImpl<$Res>
    extends _$NutritionWatcherEventCopyWithImpl<$Res>
    implements _$WatchUsersNutritionCopyWith<$Res> {
  __$WatchUsersNutritionCopyWithImpl(
      _WatchUsersNutrition _value, $Res Function(_WatchUsersNutrition) _then)
      : super(_value, (v) => _then(v as _WatchUsersNutrition));

  @override
  _WatchUsersNutrition get _value => super._value as _WatchUsersNutrition;
}

/// @nodoc
class _$_WatchUsersNutrition implements _WatchUsersNutrition {
  const _$_WatchUsersNutrition();

  @override
  String toString() {
    return 'NutritionWatcherEvent.watchUsersNutrition()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchUsersNutrition);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllStarted(),
    @required TResult watchUsersNutrition(),
    @required
        TResult nutritionReceived(
            Either<NutritionFailure, KtList<Nutrition>> failureOrNutrition),
  }) {
    assert(watchAllStarted != null);
    assert(watchUsersNutrition != null);
    assert(nutritionReceived != null);
    return watchUsersNutrition();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllStarted(),
    TResult watchUsersNutrition(),
    TResult nutritionReceived(
        Either<NutritionFailure, KtList<Nutrition>> failureOrNutrition),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchUsersNutrition != null) {
      return watchUsersNutrition();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllStarted(_WatchAllStarted value),
    @required TResult watchUsersNutrition(_WatchUsersNutrition value),
    @required TResult nutritionReceived(_NutritionReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(watchUsersNutrition != null);
    assert(nutritionReceived != null);
    return watchUsersNutrition(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllStarted(_WatchAllStarted value),
    TResult watchUsersNutrition(_WatchUsersNutrition value),
    TResult nutritionReceived(_NutritionReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchUsersNutrition != null) {
      return watchUsersNutrition(this);
    }
    return orElse();
  }
}

abstract class _WatchUsersNutrition implements NutritionWatcherEvent {
  const factory _WatchUsersNutrition() = _$_WatchUsersNutrition;
}

/// @nodoc
abstract class _$NutritionReceivedCopyWith<$Res> {
  factory _$NutritionReceivedCopyWith(
          _NutritionReceived value, $Res Function(_NutritionReceived) then) =
      __$NutritionReceivedCopyWithImpl<$Res>;
  $Res call({Either<NutritionFailure, KtList<Nutrition>> failureOrNutrition});
}

/// @nodoc
class __$NutritionReceivedCopyWithImpl<$Res>
    extends _$NutritionWatcherEventCopyWithImpl<$Res>
    implements _$NutritionReceivedCopyWith<$Res> {
  __$NutritionReceivedCopyWithImpl(
      _NutritionReceived _value, $Res Function(_NutritionReceived) _then)
      : super(_value, (v) => _then(v as _NutritionReceived));

  @override
  _NutritionReceived get _value => super._value as _NutritionReceived;

  @override
  $Res call({
    Object failureOrNutrition = freezed,
  }) {
    return _then(_NutritionReceived(
      failureOrNutrition == freezed
          ? _value.failureOrNutrition
          : failureOrNutrition as Either<NutritionFailure, KtList<Nutrition>>,
    ));
  }
}

/// @nodoc
class _$_NutritionReceived implements _NutritionReceived {
  const _$_NutritionReceived(this.failureOrNutrition)
      : assert(failureOrNutrition != null);

  @override
  final Either<NutritionFailure, KtList<Nutrition>> failureOrNutrition;

  @override
  String toString() {
    return 'NutritionWatcherEvent.nutritionReceived(failureOrNutrition: $failureOrNutrition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NutritionReceived &&
            (identical(other.failureOrNutrition, failureOrNutrition) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrNutrition, failureOrNutrition)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrNutrition);

  @JsonKey(ignore: true)
  @override
  _$NutritionReceivedCopyWith<_NutritionReceived> get copyWith =>
      __$NutritionReceivedCopyWithImpl<_NutritionReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllStarted(),
    @required TResult watchUsersNutrition(),
    @required
        TResult nutritionReceived(
            Either<NutritionFailure, KtList<Nutrition>> failureOrNutrition),
  }) {
    assert(watchAllStarted != null);
    assert(watchUsersNutrition != null);
    assert(nutritionReceived != null);
    return nutritionReceived(failureOrNutrition);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllStarted(),
    TResult watchUsersNutrition(),
    TResult nutritionReceived(
        Either<NutritionFailure, KtList<Nutrition>> failureOrNutrition),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nutritionReceived != null) {
      return nutritionReceived(failureOrNutrition);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllStarted(_WatchAllStarted value),
    @required TResult watchUsersNutrition(_WatchUsersNutrition value),
    @required TResult nutritionReceived(_NutritionReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(watchUsersNutrition != null);
    assert(nutritionReceived != null);
    return nutritionReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllStarted(_WatchAllStarted value),
    TResult watchUsersNutrition(_WatchUsersNutrition value),
    TResult nutritionReceived(_NutritionReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nutritionReceived != null) {
      return nutritionReceived(this);
    }
    return orElse();
  }
}

abstract class _NutritionReceived implements NutritionWatcherEvent {
  const factory _NutritionReceived(
          Either<NutritionFailure, KtList<Nutrition>> failureOrNutrition) =
      _$_NutritionReceived;

  Either<NutritionFailure, KtList<Nutrition>> get failureOrNutrition;
  @JsonKey(ignore: true)
  _$NutritionReceivedCopyWith<_NutritionReceived> get copyWith;
}

/// @nodoc
class _$NutritionWatcherStateTearOff {
  const _$NutritionWatcherStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

// ignore: unused_element
  _LoadSuccess loadSuccess(KtList<Nutrition> nutrition) {
    return _LoadSuccess(
      nutrition,
    );
  }

// ignore: unused_element
  _LoadFailure loadFailure(NutritionFailure failure) {
    return _LoadFailure(
      failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $NutritionWatcherState = _$NutritionWatcherStateTearOff();

/// @nodoc
mixin _$NutritionWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(KtList<Nutrition> nutrition),
    @required TResult loadFailure(NutritionFailure failure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(KtList<Nutrition> nutrition),
    TResult loadFailure(NutritionFailure failure),
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
abstract class $NutritionWatcherStateCopyWith<$Res> {
  factory $NutritionWatcherStateCopyWith(NutritionWatcherState value,
          $Res Function(NutritionWatcherState) then) =
      _$NutritionWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NutritionWatcherStateCopyWithImpl<$Res>
    implements $NutritionWatcherStateCopyWith<$Res> {
  _$NutritionWatcherStateCopyWithImpl(this._value, this._then);

  final NutritionWatcherState _value;
  // ignore: unused_field
  final $Res Function(NutritionWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$NutritionWatcherStateCopyWithImpl<$Res>
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
    return 'NutritionWatcherState.initial()';
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
    @required TResult loadSuccess(KtList<Nutrition> nutrition),
    @required TResult loadFailure(NutritionFailure failure),
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
    TResult loadSuccess(KtList<Nutrition> nutrition),
    TResult loadFailure(NutritionFailure failure),
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

abstract class _Initial implements NutritionWatcherState {
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
    extends _$NutritionWatcherStateCopyWithImpl<$Res>
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
    return 'NutritionWatcherState.loadInProgress()';
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
    @required TResult loadSuccess(KtList<Nutrition> nutrition),
    @required TResult loadFailure(NutritionFailure failure),
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
    TResult loadSuccess(KtList<Nutrition> nutrition),
    TResult loadFailure(NutritionFailure failure),
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

abstract class _LoadInProgress implements NutritionWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<Nutrition> nutrition});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$NutritionWatcherStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object nutrition = freezed,
  }) {
    return _then(_LoadSuccess(
      nutrition == freezed ? _value.nutrition : nutrition as KtList<Nutrition>,
    ));
  }
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.nutrition) : assert(nutrition != null);

  @override
  final KtList<Nutrition> nutrition;

  @override
  String toString() {
    return 'NutritionWatcherState.loadSuccess(nutrition: $nutrition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.nutrition, nutrition) ||
                const DeepCollectionEquality()
                    .equals(other.nutrition, nutrition)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(nutrition);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(KtList<Nutrition> nutrition),
    @required TResult loadFailure(NutritionFailure failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(nutrition);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(KtList<Nutrition> nutrition),
    TResult loadFailure(NutritionFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(nutrition);
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

abstract class _LoadSuccess implements NutritionWatcherState {
  const factory _LoadSuccess(KtList<Nutrition> nutrition) = _$_LoadSuccess;

  KtList<Nutrition> get nutrition;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({NutritionFailure failure});

  $NutritionFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$NutritionWatcherStateCopyWithImpl<$Res>
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
      failure == freezed ? _value.failure : failure as NutritionFailure,
    ));
  }

  @override
  $NutritionFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $NutritionFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.failure) : assert(failure != null);

  @override
  final NutritionFailure failure;

  @override
  String toString() {
    return 'NutritionWatcherState.loadFailure(failure: $failure)';
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
    @required TResult loadSuccess(KtList<Nutrition> nutrition),
    @required TResult loadFailure(NutritionFailure failure),
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
    TResult loadSuccess(KtList<Nutrition> nutrition),
    TResult loadFailure(NutritionFailure failure),
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

abstract class _LoadFailure implements NutritionWatcherState {
  const factory _LoadFailure(NutritionFailure failure) = _$_LoadFailure;

  NutritionFailure get failure;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
