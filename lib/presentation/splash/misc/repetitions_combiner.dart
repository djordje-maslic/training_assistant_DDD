import 'package:kt_dart/kt.dart';
import 'package:reminder_app/domain/exercise/value_objects.dart';


String repetitionsCombiner(SetsList list) {
  final int result = list
      .getOrCrash()
      .map((set) => set.number.getOrCrash())
      .asList()
      .fold(
          0,
          (previousValue, element) =>
              previousValue + int.parse(element.toString()));

  return result.toString();
}
