// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'exercise_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ExerciseFormEventTearOff {
  const _$ExerciseFormEventTearOff();

// ignore: unused_element
  _Initialized initialized(Option<Exercise> initialExerciseOption) {
    return _Initialized(
      initialExerciseOption,
    );
  }

// ignore: unused_element
  _ExerciseNameChanged exerciseNameChanged(String nameStr) {
    return _ExerciseNameChanged(
      nameStr,
    );
  }

// ignore: unused_element
  _ExerciseDateChanged exerciseDateChanged(int dateInt) {
    return _ExerciseDateChanged(
      dateInt,
    );
  }

// ignore: unused_element
  _ExerciseSereiesNumbChanged exerciseUserNameChanged(String userName) {
    return _ExerciseSereiesNumbChanged(
      userName,
    );
  }

// ignore: unused_element
  _ExerciseRepetitionsListChanged exerciseSetsChanged(
      KtList<SetItemPrimitive> sets) {
    return _ExerciseRepetitionsListChanged(
      sets,
    );
  }

// ignore: unused_element
  _ExerciseSavd exerciseSaved() {
    return const _ExerciseSavd();
  }
}

/// @nodoc
// ignore: unused_element
const $ExerciseFormEvent = _$ExerciseFormEventTearOff();

/// @nodoc
mixin _$ExerciseFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Exercise> initialExerciseOption),
    @required TResult exerciseNameChanged(String nameStr),
    @required TResult exerciseDateChanged(int dateInt),
    @required TResult exerciseUserNameChanged(String userName),
    @required TResult exerciseSetsChanged(KtList<SetItemPrimitive> sets),
    @required TResult exerciseSaved(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Exercise> initialExerciseOption),
    TResult exerciseNameChanged(String nameStr),
    TResult exerciseDateChanged(int dateInt),
    TResult exerciseUserNameChanged(String userName),
    TResult exerciseSetsChanged(KtList<SetItemPrimitive> sets),
    TResult exerciseSaved(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult exerciseNameChanged(_ExerciseNameChanged value),
    @required TResult exerciseDateChanged(_ExerciseDateChanged value),
    @required
        TResult exerciseUserNameChanged(_ExerciseSereiesNumbChanged value),
    @required
        TResult exerciseSetsChanged(_ExerciseRepetitionsListChanged value),
    @required TResult exerciseSaved(_ExerciseSavd value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult exerciseNameChanged(_ExerciseNameChanged value),
    TResult exerciseDateChanged(_ExerciseDateChanged value),
    TResult exerciseUserNameChanged(_ExerciseSereiesNumbChanged value),
    TResult exerciseSetsChanged(_ExerciseRepetitionsListChanged value),
    TResult exerciseSaved(_ExerciseSavd value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ExerciseFormEventCopyWith<$Res> {
  factory $ExerciseFormEventCopyWith(
          ExerciseFormEvent value, $Res Function(ExerciseFormEvent) then) =
      _$ExerciseFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ExerciseFormEventCopyWithImpl<$Res>
    implements $ExerciseFormEventCopyWith<$Res> {
  _$ExerciseFormEventCopyWithImpl(this._value, this._then);

  final ExerciseFormEvent _value;
  // ignore: unused_field
  final $Res Function(ExerciseFormEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Option<Exercise> initialExerciseOption});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$ExerciseFormEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object initialExerciseOption = freezed,
  }) {
    return _then(_Initialized(
      initialExerciseOption == freezed
          ? _value.initialExerciseOption
          : initialExerciseOption as Option<Exercise>,
    ));
  }
}

/// @nodoc
class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialExerciseOption)
      : assert(initialExerciseOption != null);

  @override
  final Option<Exercise> initialExerciseOption;

  @override
  String toString() {
    return 'ExerciseFormEvent.initialized(initialExerciseOption: $initialExerciseOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.initialExerciseOption, initialExerciseOption) ||
                const DeepCollectionEquality().equals(
                    other.initialExerciseOption, initialExerciseOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(initialExerciseOption);

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Exercise> initialExerciseOption),
    @required TResult exerciseNameChanged(String nameStr),
    @required TResult exerciseDateChanged(int dateInt),
    @required TResult exerciseUserNameChanged(String userName),
    @required TResult exerciseSetsChanged(KtList<SetItemPrimitive> sets),
    @required TResult exerciseSaved(),
  }) {
    assert(initialized != null);
    assert(exerciseNameChanged != null);
    assert(exerciseDateChanged != null);
    assert(exerciseUserNameChanged != null);
    assert(exerciseSetsChanged != null);
    assert(exerciseSaved != null);
    return initialized(initialExerciseOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Exercise> initialExerciseOption),
    TResult exerciseNameChanged(String nameStr),
    TResult exerciseDateChanged(int dateInt),
    TResult exerciseUserNameChanged(String userName),
    TResult exerciseSetsChanged(KtList<SetItemPrimitive> sets),
    TResult exerciseSaved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(initialExerciseOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult exerciseNameChanged(_ExerciseNameChanged value),
    @required TResult exerciseDateChanged(_ExerciseDateChanged value),
    @required
        TResult exerciseUserNameChanged(_ExerciseSereiesNumbChanged value),
    @required
        TResult exerciseSetsChanged(_ExerciseRepetitionsListChanged value),
    @required TResult exerciseSaved(_ExerciseSavd value),
  }) {
    assert(initialized != null);
    assert(exerciseNameChanged != null);
    assert(exerciseDateChanged != null);
    assert(exerciseUserNameChanged != null);
    assert(exerciseSetsChanged != null);
    assert(exerciseSaved != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult exerciseNameChanged(_ExerciseNameChanged value),
    TResult exerciseDateChanged(_ExerciseDateChanged value),
    TResult exerciseUserNameChanged(_ExerciseSereiesNumbChanged value),
    TResult exerciseSetsChanged(_ExerciseRepetitionsListChanged value),
    TResult exerciseSaved(_ExerciseSavd value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements ExerciseFormEvent {
  const factory _Initialized(Option<Exercise> initialExerciseOption) =
      _$_Initialized;

  Option<Exercise> get initialExerciseOption;
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith;
}

/// @nodoc
abstract class _$ExerciseNameChangedCopyWith<$Res> {
  factory _$ExerciseNameChangedCopyWith(_ExerciseNameChanged value,
          $Res Function(_ExerciseNameChanged) then) =
      __$ExerciseNameChangedCopyWithImpl<$Res>;
  $Res call({String nameStr});
}

/// @nodoc
class __$ExerciseNameChangedCopyWithImpl<$Res>
    extends _$ExerciseFormEventCopyWithImpl<$Res>
    implements _$ExerciseNameChangedCopyWith<$Res> {
  __$ExerciseNameChangedCopyWithImpl(
      _ExerciseNameChanged _value, $Res Function(_ExerciseNameChanged) _then)
      : super(_value, (v) => _then(v as _ExerciseNameChanged));

  @override
  _ExerciseNameChanged get _value => super._value as _ExerciseNameChanged;

  @override
  $Res call({
    Object nameStr = freezed,
  }) {
    return _then(_ExerciseNameChanged(
      nameStr == freezed ? _value.nameStr : nameStr as String,
    ));
  }
}

/// @nodoc
class _$_ExerciseNameChanged implements _ExerciseNameChanged {
  const _$_ExerciseNameChanged(this.nameStr) : assert(nameStr != null);

  @override
  final String nameStr;

  @override
  String toString() {
    return 'ExerciseFormEvent.exerciseNameChanged(nameStr: $nameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExerciseNameChanged &&
            (identical(other.nameStr, nameStr) ||
                const DeepCollectionEquality().equals(other.nameStr, nameStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(nameStr);

  @JsonKey(ignore: true)
  @override
  _$ExerciseNameChangedCopyWith<_ExerciseNameChanged> get copyWith =>
      __$ExerciseNameChangedCopyWithImpl<_ExerciseNameChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Exercise> initialExerciseOption),
    @required TResult exerciseNameChanged(String nameStr),
    @required TResult exerciseDateChanged(int dateInt),
    @required TResult exerciseUserNameChanged(String userName),
    @required TResult exerciseSetsChanged(KtList<SetItemPrimitive> sets),
    @required TResult exerciseSaved(),
  }) {
    assert(initialized != null);
    assert(exerciseNameChanged != null);
    assert(exerciseDateChanged != null);
    assert(exerciseUserNameChanged != null);
    assert(exerciseSetsChanged != null);
    assert(exerciseSaved != null);
    return exerciseNameChanged(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Exercise> initialExerciseOption),
    TResult exerciseNameChanged(String nameStr),
    TResult exerciseDateChanged(int dateInt),
    TResult exerciseUserNameChanged(String userName),
    TResult exerciseSetsChanged(KtList<SetItemPrimitive> sets),
    TResult exerciseSaved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (exerciseNameChanged != null) {
      return exerciseNameChanged(nameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult exerciseNameChanged(_ExerciseNameChanged value),
    @required TResult exerciseDateChanged(_ExerciseDateChanged value),
    @required
        TResult exerciseUserNameChanged(_ExerciseSereiesNumbChanged value),
    @required
        TResult exerciseSetsChanged(_ExerciseRepetitionsListChanged value),
    @required TResult exerciseSaved(_ExerciseSavd value),
  }) {
    assert(initialized != null);
    assert(exerciseNameChanged != null);
    assert(exerciseDateChanged != null);
    assert(exerciseUserNameChanged != null);
    assert(exerciseSetsChanged != null);
    assert(exerciseSaved != null);
    return exerciseNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult exerciseNameChanged(_ExerciseNameChanged value),
    TResult exerciseDateChanged(_ExerciseDateChanged value),
    TResult exerciseUserNameChanged(_ExerciseSereiesNumbChanged value),
    TResult exerciseSetsChanged(_ExerciseRepetitionsListChanged value),
    TResult exerciseSaved(_ExerciseSavd value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (exerciseNameChanged != null) {
      return exerciseNameChanged(this);
    }
    return orElse();
  }
}

abstract class _ExerciseNameChanged implements ExerciseFormEvent {
  const factory _ExerciseNameChanged(String nameStr) = _$_ExerciseNameChanged;

  String get nameStr;
  @JsonKey(ignore: true)
  _$ExerciseNameChangedCopyWith<_ExerciseNameChanged> get copyWith;
}

/// @nodoc
abstract class _$ExerciseDateChangedCopyWith<$Res> {
  factory _$ExerciseDateChangedCopyWith(_ExerciseDateChanged value,
          $Res Function(_ExerciseDateChanged) then) =
      __$ExerciseDateChangedCopyWithImpl<$Res>;
  $Res call({int dateInt});
}

/// @nodoc
class __$ExerciseDateChangedCopyWithImpl<$Res>
    extends _$ExerciseFormEventCopyWithImpl<$Res>
    implements _$ExerciseDateChangedCopyWith<$Res> {
  __$ExerciseDateChangedCopyWithImpl(
      _ExerciseDateChanged _value, $Res Function(_ExerciseDateChanged) _then)
      : super(_value, (v) => _then(v as _ExerciseDateChanged));

  @override
  _ExerciseDateChanged get _value => super._value as _ExerciseDateChanged;

  @override
  $Res call({
    Object dateInt = freezed,
  }) {
    return _then(_ExerciseDateChanged(
      dateInt == freezed ? _value.dateInt : dateInt as int,
    ));
  }
}

/// @nodoc
class _$_ExerciseDateChanged implements _ExerciseDateChanged {
  const _$_ExerciseDateChanged(this.dateInt) : assert(dateInt != null);

  @override
  final int dateInt;

  @override
  String toString() {
    return 'ExerciseFormEvent.exerciseDateChanged(dateInt: $dateInt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExerciseDateChanged &&
            (identical(other.dateInt, dateInt) ||
                const DeepCollectionEquality().equals(other.dateInt, dateInt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(dateInt);

  @JsonKey(ignore: true)
  @override
  _$ExerciseDateChangedCopyWith<_ExerciseDateChanged> get copyWith =>
      __$ExerciseDateChangedCopyWithImpl<_ExerciseDateChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Exercise> initialExerciseOption),
    @required TResult exerciseNameChanged(String nameStr),
    @required TResult exerciseDateChanged(int dateInt),
    @required TResult exerciseUserNameChanged(String userName),
    @required TResult exerciseSetsChanged(KtList<SetItemPrimitive> sets),
    @required TResult exerciseSaved(),
  }) {
    assert(initialized != null);
    assert(exerciseNameChanged != null);
    assert(exerciseDateChanged != null);
    assert(exerciseUserNameChanged != null);
    assert(exerciseSetsChanged != null);
    assert(exerciseSaved != null);
    return exerciseDateChanged(dateInt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Exercise> initialExerciseOption),
    TResult exerciseNameChanged(String nameStr),
    TResult exerciseDateChanged(int dateInt),
    TResult exerciseUserNameChanged(String userName),
    TResult exerciseSetsChanged(KtList<SetItemPrimitive> sets),
    TResult exerciseSaved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (exerciseDateChanged != null) {
      return exerciseDateChanged(dateInt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult exerciseNameChanged(_ExerciseNameChanged value),
    @required TResult exerciseDateChanged(_ExerciseDateChanged value),
    @required
        TResult exerciseUserNameChanged(_ExerciseSereiesNumbChanged value),
    @required
        TResult exerciseSetsChanged(_ExerciseRepetitionsListChanged value),
    @required TResult exerciseSaved(_ExerciseSavd value),
  }) {
    assert(initialized != null);
    assert(exerciseNameChanged != null);
    assert(exerciseDateChanged != null);
    assert(exerciseUserNameChanged != null);
    assert(exerciseSetsChanged != null);
    assert(exerciseSaved != null);
    return exerciseDateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult exerciseNameChanged(_ExerciseNameChanged value),
    TResult exerciseDateChanged(_ExerciseDateChanged value),
    TResult exerciseUserNameChanged(_ExerciseSereiesNumbChanged value),
    TResult exerciseSetsChanged(_ExerciseRepetitionsListChanged value),
    TResult exerciseSaved(_ExerciseSavd value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (exerciseDateChanged != null) {
      return exerciseDateChanged(this);
    }
    return orElse();
  }
}

abstract class _ExerciseDateChanged implements ExerciseFormEvent {
  const factory _ExerciseDateChanged(int dateInt) = _$_ExerciseDateChanged;

  int get dateInt;
  @JsonKey(ignore: true)
  _$ExerciseDateChangedCopyWith<_ExerciseDateChanged> get copyWith;
}

/// @nodoc
abstract class _$ExerciseSereiesNumbChangedCopyWith<$Res> {
  factory _$ExerciseSereiesNumbChangedCopyWith(
          _ExerciseSereiesNumbChanged value,
          $Res Function(_ExerciseSereiesNumbChanged) then) =
      __$ExerciseSereiesNumbChangedCopyWithImpl<$Res>;
  $Res call({String userName});
}

/// @nodoc
class __$ExerciseSereiesNumbChangedCopyWithImpl<$Res>
    extends _$ExerciseFormEventCopyWithImpl<$Res>
    implements _$ExerciseSereiesNumbChangedCopyWith<$Res> {
  __$ExerciseSereiesNumbChangedCopyWithImpl(_ExerciseSereiesNumbChanged _value,
      $Res Function(_ExerciseSereiesNumbChanged) _then)
      : super(_value, (v) => _then(v as _ExerciseSereiesNumbChanged));

  @override
  _ExerciseSereiesNumbChanged get _value =>
      super._value as _ExerciseSereiesNumbChanged;

  @override
  $Res call({
    Object userName = freezed,
  }) {
    return _then(_ExerciseSereiesNumbChanged(
      userName == freezed ? _value.userName : userName as String,
    ));
  }
}

/// @nodoc
class _$_ExerciseSereiesNumbChanged implements _ExerciseSereiesNumbChanged {
  const _$_ExerciseSereiesNumbChanged(this.userName) : assert(userName != null);

  @override
  final String userName;

  @override
  String toString() {
    return 'ExerciseFormEvent.exerciseUserNameChanged(userName: $userName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExerciseSereiesNumbChanged &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userName);

  @JsonKey(ignore: true)
  @override
  _$ExerciseSereiesNumbChangedCopyWith<_ExerciseSereiesNumbChanged>
      get copyWith => __$ExerciseSereiesNumbChangedCopyWithImpl<
          _ExerciseSereiesNumbChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Exercise> initialExerciseOption),
    @required TResult exerciseNameChanged(String nameStr),
    @required TResult exerciseDateChanged(int dateInt),
    @required TResult exerciseUserNameChanged(String userName),
    @required TResult exerciseSetsChanged(KtList<SetItemPrimitive> sets),
    @required TResult exerciseSaved(),
  }) {
    assert(initialized != null);
    assert(exerciseNameChanged != null);
    assert(exerciseDateChanged != null);
    assert(exerciseUserNameChanged != null);
    assert(exerciseSetsChanged != null);
    assert(exerciseSaved != null);
    return exerciseUserNameChanged(userName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Exercise> initialExerciseOption),
    TResult exerciseNameChanged(String nameStr),
    TResult exerciseDateChanged(int dateInt),
    TResult exerciseUserNameChanged(String userName),
    TResult exerciseSetsChanged(KtList<SetItemPrimitive> sets),
    TResult exerciseSaved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (exerciseUserNameChanged != null) {
      return exerciseUserNameChanged(userName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult exerciseNameChanged(_ExerciseNameChanged value),
    @required TResult exerciseDateChanged(_ExerciseDateChanged value),
    @required
        TResult exerciseUserNameChanged(_ExerciseSereiesNumbChanged value),
    @required
        TResult exerciseSetsChanged(_ExerciseRepetitionsListChanged value),
    @required TResult exerciseSaved(_ExerciseSavd value),
  }) {
    assert(initialized != null);
    assert(exerciseNameChanged != null);
    assert(exerciseDateChanged != null);
    assert(exerciseUserNameChanged != null);
    assert(exerciseSetsChanged != null);
    assert(exerciseSaved != null);
    return exerciseUserNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult exerciseNameChanged(_ExerciseNameChanged value),
    TResult exerciseDateChanged(_ExerciseDateChanged value),
    TResult exerciseUserNameChanged(_ExerciseSereiesNumbChanged value),
    TResult exerciseSetsChanged(_ExerciseRepetitionsListChanged value),
    TResult exerciseSaved(_ExerciseSavd value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (exerciseUserNameChanged != null) {
      return exerciseUserNameChanged(this);
    }
    return orElse();
  }
}

abstract class _ExerciseSereiesNumbChanged implements ExerciseFormEvent {
  const factory _ExerciseSereiesNumbChanged(String userName) =
      _$_ExerciseSereiesNumbChanged;

  String get userName;
  @JsonKey(ignore: true)
  _$ExerciseSereiesNumbChangedCopyWith<_ExerciseSereiesNumbChanged>
      get copyWith;
}

/// @nodoc
abstract class _$ExerciseRepetitionsListChangedCopyWith<$Res> {
  factory _$ExerciseRepetitionsListChangedCopyWith(
          _ExerciseRepetitionsListChanged value,
          $Res Function(_ExerciseRepetitionsListChanged) then) =
      __$ExerciseRepetitionsListChangedCopyWithImpl<$Res>;
  $Res call({KtList<SetItemPrimitive> sets});
}

/// @nodoc
class __$ExerciseRepetitionsListChangedCopyWithImpl<$Res>
    extends _$ExerciseFormEventCopyWithImpl<$Res>
    implements _$ExerciseRepetitionsListChangedCopyWith<$Res> {
  __$ExerciseRepetitionsListChangedCopyWithImpl(
      _ExerciseRepetitionsListChanged _value,
      $Res Function(_ExerciseRepetitionsListChanged) _then)
      : super(_value, (v) => _then(v as _ExerciseRepetitionsListChanged));

  @override
  _ExerciseRepetitionsListChanged get _value =>
      super._value as _ExerciseRepetitionsListChanged;

  @override
  $Res call({
    Object sets = freezed,
  }) {
    return _then(_ExerciseRepetitionsListChanged(
      sets == freezed ? _value.sets : sets as KtList<SetItemPrimitive>,
    ));
  }
}

/// @nodoc
class _$_ExerciseRepetitionsListChanged
    implements _ExerciseRepetitionsListChanged {
  const _$_ExerciseRepetitionsListChanged(this.sets) : assert(sets != null);

  @override
  final KtList<SetItemPrimitive> sets;

  @override
  String toString() {
    return 'ExerciseFormEvent.exerciseSetsChanged(sets: $sets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExerciseRepetitionsListChanged &&
            (identical(other.sets, sets) ||
                const DeepCollectionEquality().equals(other.sets, sets)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(sets);

  @JsonKey(ignore: true)
  @override
  _$ExerciseRepetitionsListChangedCopyWith<_ExerciseRepetitionsListChanged>
      get copyWith => __$ExerciseRepetitionsListChangedCopyWithImpl<
          _ExerciseRepetitionsListChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Exercise> initialExerciseOption),
    @required TResult exerciseNameChanged(String nameStr),
    @required TResult exerciseDateChanged(int dateInt),
    @required TResult exerciseUserNameChanged(String userName),
    @required TResult exerciseSetsChanged(KtList<SetItemPrimitive> sets),
    @required TResult exerciseSaved(),
  }) {
    assert(initialized != null);
    assert(exerciseNameChanged != null);
    assert(exerciseDateChanged != null);
    assert(exerciseUserNameChanged != null);
    assert(exerciseSetsChanged != null);
    assert(exerciseSaved != null);
    return exerciseSetsChanged(sets);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Exercise> initialExerciseOption),
    TResult exerciseNameChanged(String nameStr),
    TResult exerciseDateChanged(int dateInt),
    TResult exerciseUserNameChanged(String userName),
    TResult exerciseSetsChanged(KtList<SetItemPrimitive> sets),
    TResult exerciseSaved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (exerciseSetsChanged != null) {
      return exerciseSetsChanged(sets);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult exerciseNameChanged(_ExerciseNameChanged value),
    @required TResult exerciseDateChanged(_ExerciseDateChanged value),
    @required
        TResult exerciseUserNameChanged(_ExerciseSereiesNumbChanged value),
    @required
        TResult exerciseSetsChanged(_ExerciseRepetitionsListChanged value),
    @required TResult exerciseSaved(_ExerciseSavd value),
  }) {
    assert(initialized != null);
    assert(exerciseNameChanged != null);
    assert(exerciseDateChanged != null);
    assert(exerciseUserNameChanged != null);
    assert(exerciseSetsChanged != null);
    assert(exerciseSaved != null);
    return exerciseSetsChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult exerciseNameChanged(_ExerciseNameChanged value),
    TResult exerciseDateChanged(_ExerciseDateChanged value),
    TResult exerciseUserNameChanged(_ExerciseSereiesNumbChanged value),
    TResult exerciseSetsChanged(_ExerciseRepetitionsListChanged value),
    TResult exerciseSaved(_ExerciseSavd value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (exerciseSetsChanged != null) {
      return exerciseSetsChanged(this);
    }
    return orElse();
  }
}

abstract class _ExerciseRepetitionsListChanged implements ExerciseFormEvent {
  const factory _ExerciseRepetitionsListChanged(KtList<SetItemPrimitive> sets) =
      _$_ExerciseRepetitionsListChanged;

  KtList<SetItemPrimitive> get sets;
  @JsonKey(ignore: true)
  _$ExerciseRepetitionsListChangedCopyWith<_ExerciseRepetitionsListChanged>
      get copyWith;
}

/// @nodoc
abstract class _$ExerciseSavdCopyWith<$Res> {
  factory _$ExerciseSavdCopyWith(
          _ExerciseSavd value, $Res Function(_ExerciseSavd) then) =
      __$ExerciseSavdCopyWithImpl<$Res>;
}

/// @nodoc
class __$ExerciseSavdCopyWithImpl<$Res>
    extends _$ExerciseFormEventCopyWithImpl<$Res>
    implements _$ExerciseSavdCopyWith<$Res> {
  __$ExerciseSavdCopyWithImpl(
      _ExerciseSavd _value, $Res Function(_ExerciseSavd) _then)
      : super(_value, (v) => _then(v as _ExerciseSavd));

  @override
  _ExerciseSavd get _value => super._value as _ExerciseSavd;
}

/// @nodoc
class _$_ExerciseSavd implements _ExerciseSavd {
  const _$_ExerciseSavd();

  @override
  String toString() {
    return 'ExerciseFormEvent.exerciseSaved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ExerciseSavd);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Exercise> initialExerciseOption),
    @required TResult exerciseNameChanged(String nameStr),
    @required TResult exerciseDateChanged(int dateInt),
    @required TResult exerciseUserNameChanged(String userName),
    @required TResult exerciseSetsChanged(KtList<SetItemPrimitive> sets),
    @required TResult exerciseSaved(),
  }) {
    assert(initialized != null);
    assert(exerciseNameChanged != null);
    assert(exerciseDateChanged != null);
    assert(exerciseUserNameChanged != null);
    assert(exerciseSetsChanged != null);
    assert(exerciseSaved != null);
    return exerciseSaved();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Exercise> initialExerciseOption),
    TResult exerciseNameChanged(String nameStr),
    TResult exerciseDateChanged(int dateInt),
    TResult exerciseUserNameChanged(String userName),
    TResult exerciseSetsChanged(KtList<SetItemPrimitive> sets),
    TResult exerciseSaved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (exerciseSaved != null) {
      return exerciseSaved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult exerciseNameChanged(_ExerciseNameChanged value),
    @required TResult exerciseDateChanged(_ExerciseDateChanged value),
    @required
        TResult exerciseUserNameChanged(_ExerciseSereiesNumbChanged value),
    @required
        TResult exerciseSetsChanged(_ExerciseRepetitionsListChanged value),
    @required TResult exerciseSaved(_ExerciseSavd value),
  }) {
    assert(initialized != null);
    assert(exerciseNameChanged != null);
    assert(exerciseDateChanged != null);
    assert(exerciseUserNameChanged != null);
    assert(exerciseSetsChanged != null);
    assert(exerciseSaved != null);
    return exerciseSaved(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult exerciseNameChanged(_ExerciseNameChanged value),
    TResult exerciseDateChanged(_ExerciseDateChanged value),
    TResult exerciseUserNameChanged(_ExerciseSereiesNumbChanged value),
    TResult exerciseSetsChanged(_ExerciseRepetitionsListChanged value),
    TResult exerciseSaved(_ExerciseSavd value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (exerciseSaved != null) {
      return exerciseSaved(this);
    }
    return orElse();
  }
}

abstract class _ExerciseSavd implements ExerciseFormEvent {
  const factory _ExerciseSavd() = _$_ExerciseSavd;
}

/// @nodoc
class _$ExerciseFormStateTearOff {
  const _$ExerciseFormStateTearOff();

// ignore: unused_element
  _ExerciseFormState call(
      {@required
          Exercise exercise,
      @required
          bool showErrorMessages,
      @required
          bool isEditing,
      @required
          bool isSaving,
      @required
          Option<Either<ExerciseFailure, Unit>> saveFailureOrSuccessOption}) {
    return _ExerciseFormState(
      exercise: exercise,
      showErrorMessages: showErrorMessages,
      isEditing: isEditing,
      isSaving: isSaving,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ExerciseFormState = _$ExerciseFormStateTearOff();

/// @nodoc
mixin _$ExerciseFormState {
  Exercise get exercise;
  bool get showErrorMessages;
  bool get isEditing;
  bool get isSaving;
  Option<Either<ExerciseFailure, Unit>> get saveFailureOrSuccessOption;

  @JsonKey(ignore: true)
  $ExerciseFormStateCopyWith<ExerciseFormState> get copyWith;
}

/// @nodoc
abstract class $ExerciseFormStateCopyWith<$Res> {
  factory $ExerciseFormStateCopyWith(
          ExerciseFormState value, $Res Function(ExerciseFormState) then) =
      _$ExerciseFormStateCopyWithImpl<$Res>;
  $Res call(
      {Exercise exercise,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<ExerciseFailure, Unit>> saveFailureOrSuccessOption});

  $ExerciseCopyWith<$Res> get exercise;
}

/// @nodoc
class _$ExerciseFormStateCopyWithImpl<$Res>
    implements $ExerciseFormStateCopyWith<$Res> {
  _$ExerciseFormStateCopyWithImpl(this._value, this._then);

  final ExerciseFormState _value;
  // ignore: unused_field
  final $Res Function(ExerciseFormState) _then;

  @override
  $Res call({
    Object exercise = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      exercise: exercise == freezed ? _value.exercise : exercise as Exercise,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<ExerciseFailure, Unit>>,
    ));
  }

  @override
  $ExerciseCopyWith<$Res> get exercise {
    if (_value.exercise == null) {
      return null;
    }
    return $ExerciseCopyWith<$Res>(_value.exercise, (value) {
      return _then(_value.copyWith(exercise: value));
    });
  }
}

/// @nodoc
abstract class _$ExerciseFormStateCopyWith<$Res>
    implements $ExerciseFormStateCopyWith<$Res> {
  factory _$ExerciseFormStateCopyWith(
          _ExerciseFormState value, $Res Function(_ExerciseFormState) then) =
      __$ExerciseFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Exercise exercise,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<ExerciseFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $ExerciseCopyWith<$Res> get exercise;
}

/// @nodoc
class __$ExerciseFormStateCopyWithImpl<$Res>
    extends _$ExerciseFormStateCopyWithImpl<$Res>
    implements _$ExerciseFormStateCopyWith<$Res> {
  __$ExerciseFormStateCopyWithImpl(
      _ExerciseFormState _value, $Res Function(_ExerciseFormState) _then)
      : super(_value, (v) => _then(v as _ExerciseFormState));

  @override
  _ExerciseFormState get _value => super._value as _ExerciseFormState;

  @override
  $Res call({
    Object exercise = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_ExerciseFormState(
      exercise: exercise == freezed ? _value.exercise : exercise as Exercise,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<ExerciseFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_ExerciseFormState implements _ExerciseFormState {
  const _$_ExerciseFormState(
      {@required this.exercise,
      @required this.showErrorMessages,
      @required this.isEditing,
      @required this.isSaving,
      @required this.saveFailureOrSuccessOption})
      : assert(exercise != null),
        assert(showErrorMessages != null),
        assert(isEditing != null),
        assert(isSaving != null),
        assert(saveFailureOrSuccessOption != null);

  @override
  final Exercise exercise;
  @override
  final bool showErrorMessages;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final Option<Either<ExerciseFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'ExerciseFormState(exercise: $exercise, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExerciseFormState &&
            (identical(other.exercise, exercise) ||
                const DeepCollectionEquality()
                    .equals(other.exercise, exercise)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)) &&
            (identical(other.isSaving, isSaving) ||
                const DeepCollectionEquality()
                    .equals(other.isSaving, isSaving)) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(exercise) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$ExerciseFormStateCopyWith<_ExerciseFormState> get copyWith =>
      __$ExerciseFormStateCopyWithImpl<_ExerciseFormState>(this, _$identity);
}

abstract class _ExerciseFormState implements ExerciseFormState {
  const factory _ExerciseFormState(
      {@required
          Exercise exercise,
      @required
          bool showErrorMessages,
      @required
          bool isEditing,
      @required
          bool isSaving,
      @required
          Option<Either<ExerciseFailure, Unit>>
              saveFailureOrSuccessOption}) = _$_ExerciseFormState;

  @override
  Exercise get exercise;
  @override
  bool get showErrorMessages;
  @override
  bool get isEditing;
  @override
  bool get isSaving;
  @override
  Option<Either<ExerciseFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$ExerciseFormStateCopyWith<_ExerciseFormState> get copyWith;
}
