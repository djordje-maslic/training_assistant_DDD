import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reminder_app/domain/core/value_objects.dart';
import 'package:reminder_app/domain/exercise/series.dart';
import 'package:reminder_app/domain/exercise/value_objects.dart';

part 'set_presentation_classes.freezed.dart';

@freezed
abstract class SetItemPrimitive implements _$SetItemPrimitive {
  const SetItemPrimitive._();

  const factory SetItemPrimitive({
    @required UniqueId id,
    @required int numb,
  }) = _SetItemprimitive;

  factory SetItemPrimitive.empty() => SetItemPrimitive(
        id: UniqueId(),
        numb: 0,
      );

  factory SetItemPrimitive.fromDomain(Series series) {
    return SetItemPrimitive(
      id: series.id,
      numb: series.number.getOrCrash(),
    );
  }

  Series toDomain() {
    return Series(
      id: id,
      number: RepetitionsNumb(numb),
    );
  }
}
