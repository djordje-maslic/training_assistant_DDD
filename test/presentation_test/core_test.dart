import 'package:flutter_test/flutter_test.dart';
import 'package:reminder_app/presentation/core/misc/unit_converter.dart';

void main() {
  test(
    'inches to feet + inches converter test',
    () {
      expect(inToFeetInStringConverter(inches: 77), '6 ft 5.0 in');
    },
  );
}
