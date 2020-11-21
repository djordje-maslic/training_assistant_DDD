import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reminder_app/domain/core/value_objects.dart';
import 'package:reminder_app/domain/exercise/sets.dart';
import 'package:reminder_app/domain/exercise/value_objects.dart';

part 'set_presentation_classes.freezed.dart';

@freezed
abstract class SetItemPrimitive implements _$SetItemPrimitive {
  const SetItemPrimitive._();

  const factory SetItemPrimitive({
    @required UniqueId id,
    @required int number,
  }) = _SetItemprimitive;

  factory SetItemPrimitive.empty() => SetItemPrimitive(
        id: UniqueId(),
        number: 0,
      );

  factory SetItemPrimitive.fromDomain(Sets sets) {
    return SetItemPrimitive(
      id: sets.id,
      number: sets.number.getOrCrash(),
    );
  }

  Sets toDomain() {
    return Sets(
      id: id,
      number: RepetitionsNumb(number),
    );
  }
}
