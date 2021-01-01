import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
import 'package:reminder_app/domain/core/value_objects.dart';
import 'package:reminder_app/domain/exercise/sets.dart';
import 'package:reminder_app/domain/exercise/value_objects.dart';

part 'set_presentation_classes.freezed.dart';

class FormSets extends ValueNotifier<KtList<SetItemPrimitive>> {
  FormSets() : super(emptyList<SetItemPrimitive>());
}

@freezed
abstract class SetItemPrimitive implements _$SetItemPrimitive {
  const SetItemPrimitive._();

  const factory SetItemPrimitive({
    @required UniqueId id,
    @required int number,
    @required int goodReps,
    @required int badReps,
    @required double weights,
    @required double distance,
    @required int setDuration,
  }) = _SetItemprimitive;

  factory SetItemPrimitive.empty() => SetItemPrimitive(
        id: UniqueId(),
        number: 0,
        goodReps: 0,
        badReps: 0,
        weights: 0.0,
        distance: 0.0,
        setDuration: 0,
      );

  factory SetItemPrimitive.fromDomain(Sets sets) {
    return SetItemPrimitive(
      id: sets.id,
      number: sets.number.getOrCrash(),
      goodReps: sets.goodReps.getOrCrash(),
      badReps: sets.badReps.getOrCrash(),
      weights: sets.weights.getOrCrash(),
      distance: sets.distance.getOrCrash(),
      setDuration: sets.setDuration.getOrCrash(),
    );
  }

  Sets toDomain() {
    return Sets(
      id: id,
      number: RepetitionsNumb(number),
      goodReps: GoodReps(goodReps),
      badReps: BadReps(badReps),
      weights: Weights(weights),
      distance: Distance(distance),
      setDuration: SetDuration(setDuration),
    );
  }
}
