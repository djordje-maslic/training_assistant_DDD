import 'package:kt_dart/kt.dart';
import 'package:reminder_app/domain/exercise/value_objects.dart';

String repetitionsMax(SetsList list) {
  final List<int> intList = list
      .getOrCrash()
      .map((set) => set.number.getOrCrash())
      .map((numb) => int.parse(numb.toString()))
      .asList();

  intList.sort();

  final String result = intList.last.toString();
  return result;
}
