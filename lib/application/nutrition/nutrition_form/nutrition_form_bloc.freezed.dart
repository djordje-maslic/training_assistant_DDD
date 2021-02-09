// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'nutrition_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$NutritionFormEventTearOff {
  const _$NutritionFormEventTearOff();

// ignore: unused_element
  _Initialized initialized(Option<Nutrition> initialNutritionOption) {
    return _Initialized(
      initialNutritionOption,
    );
  }

// ignore: unused_element
  _NutritionNameChanged nutritionNameChanged(String nameStr) {
    return _NutritionNameChanged(
      nameStr,
    );
  }

// ignore: unused_element
  _NutritionDateTimeChanged nutritionDateTimeChanged(int dateTimeInt) {
    return _NutritionDateTimeChanged(
      dateTimeInt,
    );
  }

// ignore: unused_element
  _NutrientsListChanged nutrientsListChanged(
      KtList<NutrientItemPrimitive> nutrientsList) {
    return _NutrientsListChanged(
      nutrientsList,
    );
  }

// ignore: unused_element
  _NutritionSaved nutritionSaved() {
    return const _NutritionSaved();
  }
}

/// @nodoc
// ignore: unused_element
const $NutritionFormEvent = _$NutritionFormEventTearOff();

/// @nodoc
mixin _$NutritionFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Nutrition> initialNutritionOption),
    @required TResult nutritionNameChanged(String nameStr),
    @required TResult nutritionDateTimeChanged(int dateTimeInt),
    @required
        TResult nutrientsListChanged(
            KtList<NutrientItemPrimitive> nutrientsList),
    @required TResult nutritionSaved(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Nutrition> initialNutritionOption),
    TResult nutritionNameChanged(String nameStr),
    TResult nutritionDateTimeChanged(int dateTimeInt),
    TResult nutrientsListChanged(KtList<NutrientItemPrimitive> nutrientsList),
    TResult nutritionSaved(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult nutritionNameChanged(_NutritionNameChanged value),
    @required TResult nutritionDateTimeChanged(_NutritionDateTimeChanged value),
    @required TResult nutrientsListChanged(_NutrientsListChanged value),
    @required TResult nutritionSaved(_NutritionSaved value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult nutritionNameChanged(_NutritionNameChanged value),
    TResult nutritionDateTimeChanged(_NutritionDateTimeChanged value),
    TResult nutrientsListChanged(_NutrientsListChanged value),
    TResult nutritionSaved(_NutritionSaved value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $NutritionFormEventCopyWith<$Res> {
  factory $NutritionFormEventCopyWith(
          NutritionFormEvent value, $Res Function(NutritionFormEvent) then) =
      _$NutritionFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NutritionFormEventCopyWithImpl<$Res>
    implements $NutritionFormEventCopyWith<$Res> {
  _$NutritionFormEventCopyWithImpl(this._value, this._then);

  final NutritionFormEvent _value;
  // ignore: unused_field
  final $Res Function(NutritionFormEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Option<Nutrition> initialNutritionOption});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$NutritionFormEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object initialNutritionOption = freezed,
  }) {
    return _then(_Initialized(
      initialNutritionOption == freezed
          ? _value.initialNutritionOption
          : initialNutritionOption as Option<Nutrition>,
    ));
  }
}

/// @nodoc
class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialNutritionOption)
      : assert(initialNutritionOption != null);

  @override
  final Option<Nutrition> initialNutritionOption;

  @override
  String toString() {
    return 'NutritionFormEvent.initialized(initialNutritionOption: $initialNutritionOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.initialNutritionOption, initialNutritionOption) ||
                const DeepCollectionEquality().equals(
                    other.initialNutritionOption, initialNutritionOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(initialNutritionOption);

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Nutrition> initialNutritionOption),
    @required TResult nutritionNameChanged(String nameStr),
    @required TResult nutritionDateTimeChanged(int dateTimeInt),
    @required
        TResult nutrientsListChanged(
            KtList<NutrientItemPrimitive> nutrientsList),
    @required TResult nutritionSaved(),
  }) {
    assert(initialized != null);
    assert(nutritionNameChanged != null);
    assert(nutritionDateTimeChanged != null);
    assert(nutrientsListChanged != null);
    assert(nutritionSaved != null);
    return initialized(initialNutritionOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Nutrition> initialNutritionOption),
    TResult nutritionNameChanged(String nameStr),
    TResult nutritionDateTimeChanged(int dateTimeInt),
    TResult nutrientsListChanged(KtList<NutrientItemPrimitive> nutrientsList),
    TResult nutritionSaved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(initialNutritionOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult nutritionNameChanged(_NutritionNameChanged value),
    @required TResult nutritionDateTimeChanged(_NutritionDateTimeChanged value),
    @required TResult nutrientsListChanged(_NutrientsListChanged value),
    @required TResult nutritionSaved(_NutritionSaved value),
  }) {
    assert(initialized != null);
    assert(nutritionNameChanged != null);
    assert(nutritionDateTimeChanged != null);
    assert(nutrientsListChanged != null);
    assert(nutritionSaved != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult nutritionNameChanged(_NutritionNameChanged value),
    TResult nutritionDateTimeChanged(_NutritionDateTimeChanged value),
    TResult nutrientsListChanged(_NutrientsListChanged value),
    TResult nutritionSaved(_NutritionSaved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements NutritionFormEvent {
  const factory _Initialized(Option<Nutrition> initialNutritionOption) =
      _$_Initialized;

  Option<Nutrition> get initialNutritionOption;
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith;
}

/// @nodoc
abstract class _$NutritionNameChangedCopyWith<$Res> {
  factory _$NutritionNameChangedCopyWith(_NutritionNameChanged value,
          $Res Function(_NutritionNameChanged) then) =
      __$NutritionNameChangedCopyWithImpl<$Res>;
  $Res call({String nameStr});
}

/// @nodoc
class __$NutritionNameChangedCopyWithImpl<$Res>
    extends _$NutritionFormEventCopyWithImpl<$Res>
    implements _$NutritionNameChangedCopyWith<$Res> {
  __$NutritionNameChangedCopyWithImpl(
      _NutritionNameChanged _value, $Res Function(_NutritionNameChanged) _then)
      : super(_value, (v) => _then(v as _NutritionNameChanged));

  @override
  _NutritionNameChanged get _value => super._value as _NutritionNameChanged;

  @override
  $Res call({
    Object nameStr = freezed,
  }) {
    return _then(_NutritionNameChanged(
      nameStr == freezed ? _value.nameStr : nameStr as String,
    ));
  }
}

/// @nodoc
class _$_NutritionNameChanged implements _NutritionNameChanged {
  const _$_NutritionNameChanged(this.nameStr) : assert(nameStr != null);

  @override
  final String nameStr;

  @override
  String toString() {
    return 'NutritionFormEvent.nutritionNameChanged(nameStr: $nameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NutritionNameChanged &&
            (identical(other.nameStr, nameStr) ||
                const DeepCollectionEquality().equals(other.nameStr, nameStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(nameStr);

  @JsonKey(ignore: true)
  @override
  _$NutritionNameChangedCopyWith<_NutritionNameChanged> get copyWith =>
      __$NutritionNameChangedCopyWithImpl<_NutritionNameChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Nutrition> initialNutritionOption),
    @required TResult nutritionNameChanged(String nameStr),
    @required TResult nutritionDateTimeChanged(int dateTimeInt),
    @required
        TResult nutrientsListChanged(
            KtList<NutrientItemPrimitive> nutrientsList),
    @required TResult nutritionSaved(),
  }) {
    assert(initialized != null);
    assert(nutritionNameChanged != null);
    assert(nutritionDateTimeChanged != null);
    assert(nutrientsListChanged != null);
    assert(nutritionSaved != null);
    return nutritionNameChanged(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Nutrition> initialNutritionOption),
    TResult nutritionNameChanged(String nameStr),
    TResult nutritionDateTimeChanged(int dateTimeInt),
    TResult nutrientsListChanged(KtList<NutrientItemPrimitive> nutrientsList),
    TResult nutritionSaved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nutritionNameChanged != null) {
      return nutritionNameChanged(nameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult nutritionNameChanged(_NutritionNameChanged value),
    @required TResult nutritionDateTimeChanged(_NutritionDateTimeChanged value),
    @required TResult nutrientsListChanged(_NutrientsListChanged value),
    @required TResult nutritionSaved(_NutritionSaved value),
  }) {
    assert(initialized != null);
    assert(nutritionNameChanged != null);
    assert(nutritionDateTimeChanged != null);
    assert(nutrientsListChanged != null);
    assert(nutritionSaved != null);
    return nutritionNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult nutritionNameChanged(_NutritionNameChanged value),
    TResult nutritionDateTimeChanged(_NutritionDateTimeChanged value),
    TResult nutrientsListChanged(_NutrientsListChanged value),
    TResult nutritionSaved(_NutritionSaved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nutritionNameChanged != null) {
      return nutritionNameChanged(this);
    }
    return orElse();
  }
}

abstract class _NutritionNameChanged implements NutritionFormEvent {
  const factory _NutritionNameChanged(String nameStr) = _$_NutritionNameChanged;

  String get nameStr;
  @JsonKey(ignore: true)
  _$NutritionNameChangedCopyWith<_NutritionNameChanged> get copyWith;
}

/// @nodoc
abstract class _$NutritionDateTimeChangedCopyWith<$Res> {
  factory _$NutritionDateTimeChangedCopyWith(_NutritionDateTimeChanged value,
          $Res Function(_NutritionDateTimeChanged) then) =
      __$NutritionDateTimeChangedCopyWithImpl<$Res>;
  $Res call({int dateTimeInt});
}

/// @nodoc
class __$NutritionDateTimeChangedCopyWithImpl<$Res>
    extends _$NutritionFormEventCopyWithImpl<$Res>
    implements _$NutritionDateTimeChangedCopyWith<$Res> {
  __$NutritionDateTimeChangedCopyWithImpl(_NutritionDateTimeChanged _value,
      $Res Function(_NutritionDateTimeChanged) _then)
      : super(_value, (v) => _then(v as _NutritionDateTimeChanged));

  @override
  _NutritionDateTimeChanged get _value =>
      super._value as _NutritionDateTimeChanged;

  @override
  $Res call({
    Object dateTimeInt = freezed,
  }) {
    return _then(_NutritionDateTimeChanged(
      dateTimeInt == freezed ? _value.dateTimeInt : dateTimeInt as int,
    ));
  }
}

/// @nodoc
class _$_NutritionDateTimeChanged implements _NutritionDateTimeChanged {
  const _$_NutritionDateTimeChanged(this.dateTimeInt)
      : assert(dateTimeInt != null);

  @override
  final int dateTimeInt;

  @override
  String toString() {
    return 'NutritionFormEvent.nutritionDateTimeChanged(dateTimeInt: $dateTimeInt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NutritionDateTimeChanged &&
            (identical(other.dateTimeInt, dateTimeInt) ||
                const DeepCollectionEquality()
                    .equals(other.dateTimeInt, dateTimeInt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(dateTimeInt);

  @JsonKey(ignore: true)
  @override
  _$NutritionDateTimeChangedCopyWith<_NutritionDateTimeChanged> get copyWith =>
      __$NutritionDateTimeChangedCopyWithImpl<_NutritionDateTimeChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Nutrition> initialNutritionOption),
    @required TResult nutritionNameChanged(String nameStr),
    @required TResult nutritionDateTimeChanged(int dateTimeInt),
    @required
        TResult nutrientsListChanged(
            KtList<NutrientItemPrimitive> nutrientsList),
    @required TResult nutritionSaved(),
  }) {
    assert(initialized != null);
    assert(nutritionNameChanged != null);
    assert(nutritionDateTimeChanged != null);
    assert(nutrientsListChanged != null);
    assert(nutritionSaved != null);
    return nutritionDateTimeChanged(dateTimeInt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Nutrition> initialNutritionOption),
    TResult nutritionNameChanged(String nameStr),
    TResult nutritionDateTimeChanged(int dateTimeInt),
    TResult nutrientsListChanged(KtList<NutrientItemPrimitive> nutrientsList),
    TResult nutritionSaved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nutritionDateTimeChanged != null) {
      return nutritionDateTimeChanged(dateTimeInt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult nutritionNameChanged(_NutritionNameChanged value),
    @required TResult nutritionDateTimeChanged(_NutritionDateTimeChanged value),
    @required TResult nutrientsListChanged(_NutrientsListChanged value),
    @required TResult nutritionSaved(_NutritionSaved value),
  }) {
    assert(initialized != null);
    assert(nutritionNameChanged != null);
    assert(nutritionDateTimeChanged != null);
    assert(nutrientsListChanged != null);
    assert(nutritionSaved != null);
    return nutritionDateTimeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult nutritionNameChanged(_NutritionNameChanged value),
    TResult nutritionDateTimeChanged(_NutritionDateTimeChanged value),
    TResult nutrientsListChanged(_NutrientsListChanged value),
    TResult nutritionSaved(_NutritionSaved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nutritionDateTimeChanged != null) {
      return nutritionDateTimeChanged(this);
    }
    return orElse();
  }
}

abstract class _NutritionDateTimeChanged implements NutritionFormEvent {
  const factory _NutritionDateTimeChanged(int dateTimeInt) =
      _$_NutritionDateTimeChanged;

  int get dateTimeInt;
  @JsonKey(ignore: true)
  _$NutritionDateTimeChangedCopyWith<_NutritionDateTimeChanged> get copyWith;
}

/// @nodoc
abstract class _$NutrientsListChangedCopyWith<$Res> {
  factory _$NutrientsListChangedCopyWith(_NutrientsListChanged value,
          $Res Function(_NutrientsListChanged) then) =
      __$NutrientsListChangedCopyWithImpl<$Res>;
  $Res call({KtList<NutrientItemPrimitive> nutrientsList});
}

/// @nodoc
class __$NutrientsListChangedCopyWithImpl<$Res>
    extends _$NutritionFormEventCopyWithImpl<$Res>
    implements _$NutrientsListChangedCopyWith<$Res> {
  __$NutrientsListChangedCopyWithImpl(
      _NutrientsListChanged _value, $Res Function(_NutrientsListChanged) _then)
      : super(_value, (v) => _then(v as _NutrientsListChanged));

  @override
  _NutrientsListChanged get _value => super._value as _NutrientsListChanged;

  @override
  $Res call({
    Object nutrientsList = freezed,
  }) {
    return _then(_NutrientsListChanged(
      nutrientsList == freezed
          ? _value.nutrientsList
          : nutrientsList as KtList<NutrientItemPrimitive>,
    ));
  }
}

/// @nodoc
class _$_NutrientsListChanged implements _NutrientsListChanged {
  const _$_NutrientsListChanged(this.nutrientsList)
      : assert(nutrientsList != null);

  @override
  final KtList<NutrientItemPrimitive> nutrientsList;

  @override
  String toString() {
    return 'NutritionFormEvent.nutrientsListChanged(nutrientsList: $nutrientsList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NutrientsListChanged &&
            (identical(other.nutrientsList, nutrientsList) ||
                const DeepCollectionEquality()
                    .equals(other.nutrientsList, nutrientsList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(nutrientsList);

  @JsonKey(ignore: true)
  @override
  _$NutrientsListChangedCopyWith<_NutrientsListChanged> get copyWith =>
      __$NutrientsListChangedCopyWithImpl<_NutrientsListChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Nutrition> initialNutritionOption),
    @required TResult nutritionNameChanged(String nameStr),
    @required TResult nutritionDateTimeChanged(int dateTimeInt),
    @required
        TResult nutrientsListChanged(
            KtList<NutrientItemPrimitive> nutrientsList),
    @required TResult nutritionSaved(),
  }) {
    assert(initialized != null);
    assert(nutritionNameChanged != null);
    assert(nutritionDateTimeChanged != null);
    assert(nutrientsListChanged != null);
    assert(nutritionSaved != null);
    return nutrientsListChanged(nutrientsList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Nutrition> initialNutritionOption),
    TResult nutritionNameChanged(String nameStr),
    TResult nutritionDateTimeChanged(int dateTimeInt),
    TResult nutrientsListChanged(KtList<NutrientItemPrimitive> nutrientsList),
    TResult nutritionSaved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nutrientsListChanged != null) {
      return nutrientsListChanged(nutrientsList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult nutritionNameChanged(_NutritionNameChanged value),
    @required TResult nutritionDateTimeChanged(_NutritionDateTimeChanged value),
    @required TResult nutrientsListChanged(_NutrientsListChanged value),
    @required TResult nutritionSaved(_NutritionSaved value),
  }) {
    assert(initialized != null);
    assert(nutritionNameChanged != null);
    assert(nutritionDateTimeChanged != null);
    assert(nutrientsListChanged != null);
    assert(nutritionSaved != null);
    return nutrientsListChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult nutritionNameChanged(_NutritionNameChanged value),
    TResult nutritionDateTimeChanged(_NutritionDateTimeChanged value),
    TResult nutrientsListChanged(_NutrientsListChanged value),
    TResult nutritionSaved(_NutritionSaved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nutrientsListChanged != null) {
      return nutrientsListChanged(this);
    }
    return orElse();
  }
}

abstract class _NutrientsListChanged implements NutritionFormEvent {
  const factory _NutrientsListChanged(
      KtList<NutrientItemPrimitive> nutrientsList) = _$_NutrientsListChanged;

  KtList<NutrientItemPrimitive> get nutrientsList;
  @JsonKey(ignore: true)
  _$NutrientsListChangedCopyWith<_NutrientsListChanged> get copyWith;
}

/// @nodoc
abstract class _$NutritionSavedCopyWith<$Res> {
  factory _$NutritionSavedCopyWith(
          _NutritionSaved value, $Res Function(_NutritionSaved) then) =
      __$NutritionSavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$NutritionSavedCopyWithImpl<$Res>
    extends _$NutritionFormEventCopyWithImpl<$Res>
    implements _$NutritionSavedCopyWith<$Res> {
  __$NutritionSavedCopyWithImpl(
      _NutritionSaved _value, $Res Function(_NutritionSaved) _then)
      : super(_value, (v) => _then(v as _NutritionSaved));

  @override
  _NutritionSaved get _value => super._value as _NutritionSaved;
}

/// @nodoc
class _$_NutritionSaved implements _NutritionSaved {
  const _$_NutritionSaved();

  @override
  String toString() {
    return 'NutritionFormEvent.nutritionSaved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NutritionSaved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Nutrition> initialNutritionOption),
    @required TResult nutritionNameChanged(String nameStr),
    @required TResult nutritionDateTimeChanged(int dateTimeInt),
    @required
        TResult nutrientsListChanged(
            KtList<NutrientItemPrimitive> nutrientsList),
    @required TResult nutritionSaved(),
  }) {
    assert(initialized != null);
    assert(nutritionNameChanged != null);
    assert(nutritionDateTimeChanged != null);
    assert(nutrientsListChanged != null);
    assert(nutritionSaved != null);
    return nutritionSaved();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Nutrition> initialNutritionOption),
    TResult nutritionNameChanged(String nameStr),
    TResult nutritionDateTimeChanged(int dateTimeInt),
    TResult nutrientsListChanged(KtList<NutrientItemPrimitive> nutrientsList),
    TResult nutritionSaved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nutritionSaved != null) {
      return nutritionSaved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult nutritionNameChanged(_NutritionNameChanged value),
    @required TResult nutritionDateTimeChanged(_NutritionDateTimeChanged value),
    @required TResult nutrientsListChanged(_NutrientsListChanged value),
    @required TResult nutritionSaved(_NutritionSaved value),
  }) {
    assert(initialized != null);
    assert(nutritionNameChanged != null);
    assert(nutritionDateTimeChanged != null);
    assert(nutrientsListChanged != null);
    assert(nutritionSaved != null);
    return nutritionSaved(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult nutritionNameChanged(_NutritionNameChanged value),
    TResult nutritionDateTimeChanged(_NutritionDateTimeChanged value),
    TResult nutrientsListChanged(_NutrientsListChanged value),
    TResult nutritionSaved(_NutritionSaved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nutritionSaved != null) {
      return nutritionSaved(this);
    }
    return orElse();
  }
}

abstract class _NutritionSaved implements NutritionFormEvent {
  const factory _NutritionSaved() = _$_NutritionSaved;
}

/// @nodoc
class _$NutritionFormStateTearOff {
  const _$NutritionFormStateTearOff();

// ignore: unused_element
  _NutritionFormState call(
      {@required
          Nutrition nutrition,
      @required
          bool showErrorMessages,
      @required
          bool isEditing,
      @required
          bool isSaving,
      @required
          Option<Either<NutritionFailure, Unit>> saveFailureOrSuccessOption}) {
    return _NutritionFormState(
      nutrition: nutrition,
      showErrorMessages: showErrorMessages,
      isEditing: isEditing,
      isSaving: isSaving,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $NutritionFormState = _$NutritionFormStateTearOff();

/// @nodoc
mixin _$NutritionFormState {
  Nutrition get nutrition;
  bool get showErrorMessages;
  bool get isEditing;
  bool get isSaving;
  Option<Either<NutritionFailure, Unit>> get saveFailureOrSuccessOption;

  @JsonKey(ignore: true)
  $NutritionFormStateCopyWith<NutritionFormState> get copyWith;
}

/// @nodoc
abstract class $NutritionFormStateCopyWith<$Res> {
  factory $NutritionFormStateCopyWith(
          NutritionFormState value, $Res Function(NutritionFormState) then) =
      _$NutritionFormStateCopyWithImpl<$Res>;
  $Res call(
      {Nutrition nutrition,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<NutritionFailure, Unit>> saveFailureOrSuccessOption});

  $NutritionCopyWith<$Res> get nutrition;
}

/// @nodoc
class _$NutritionFormStateCopyWithImpl<$Res>
    implements $NutritionFormStateCopyWith<$Res> {
  _$NutritionFormStateCopyWithImpl(this._value, this._then);

  final NutritionFormState _value;
  // ignore: unused_field
  final $Res Function(NutritionFormState) _then;

  @override
  $Res call({
    Object nutrition = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      nutrition:
          nutrition == freezed ? _value.nutrition : nutrition as Nutrition,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption
              as Option<Either<NutritionFailure, Unit>>,
    ));
  }

  @override
  $NutritionCopyWith<$Res> get nutrition {
    if (_value.nutrition == null) {
      return null;
    }
    return $NutritionCopyWith<$Res>(_value.nutrition, (value) {
      return _then(_value.copyWith(nutrition: value));
    });
  }
}

/// @nodoc
abstract class _$NutritionFormStateCopyWith<$Res>
    implements $NutritionFormStateCopyWith<$Res> {
  factory _$NutritionFormStateCopyWith(
          _NutritionFormState value, $Res Function(_NutritionFormState) then) =
      __$NutritionFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Nutrition nutrition,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<NutritionFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $NutritionCopyWith<$Res> get nutrition;
}

/// @nodoc
class __$NutritionFormStateCopyWithImpl<$Res>
    extends _$NutritionFormStateCopyWithImpl<$Res>
    implements _$NutritionFormStateCopyWith<$Res> {
  __$NutritionFormStateCopyWithImpl(
      _NutritionFormState _value, $Res Function(_NutritionFormState) _then)
      : super(_value, (v) => _then(v as _NutritionFormState));

  @override
  _NutritionFormState get _value => super._value as _NutritionFormState;

  @override
  $Res call({
    Object nutrition = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_NutritionFormState(
      nutrition:
          nutrition == freezed ? _value.nutrition : nutrition as Nutrition,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption
              as Option<Either<NutritionFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_NutritionFormState implements _NutritionFormState {
  const _$_NutritionFormState(
      {@required this.nutrition,
      @required this.showErrorMessages,
      @required this.isEditing,
      @required this.isSaving,
      @required this.saveFailureOrSuccessOption})
      : assert(nutrition != null),
        assert(showErrorMessages != null),
        assert(isEditing != null),
        assert(isSaving != null),
        assert(saveFailureOrSuccessOption != null);

  @override
  final Nutrition nutrition;
  @override
  final bool showErrorMessages;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final Option<Either<NutritionFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'NutritionFormState(nutrition: $nutrition, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NutritionFormState &&
            (identical(other.nutrition, nutrition) ||
                const DeepCollectionEquality()
                    .equals(other.nutrition, nutrition)) &&
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
      const DeepCollectionEquality().hash(nutrition) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$NutritionFormStateCopyWith<_NutritionFormState> get copyWith =>
      __$NutritionFormStateCopyWithImpl<_NutritionFormState>(this, _$identity);
}

abstract class _NutritionFormState implements NutritionFormState {
  const factory _NutritionFormState(
      {@required
          Nutrition nutrition,
      @required
          bool showErrorMessages,
      @required
          bool isEditing,
      @required
          bool isSaving,
      @required
          Option<Either<NutritionFailure, Unit>>
              saveFailureOrSuccessOption}) = _$_NutritionFormState;

  @override
  Nutrition get nutrition;
  @override
  bool get showErrorMessages;
  @override
  bool get isEditing;
  @override
  bool get isSaving;
  @override
  Option<Either<NutritionFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$NutritionFormStateCopyWith<_NutritionFormState> get copyWith;
}
