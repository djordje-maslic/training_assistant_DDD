import 'package:flutter_test/flutter_test.dart';
import 'package:reminder_app/presentation/core/misc/time_converter.dart';
import 'package:reminder_app/presentation/core/misc/unit_converter.dart';

void main() {

  group('methods', (){
    test(
      'inches to feet + inches converter test',
          () {
        expect(inToFeetInStringConverter(inches: 77), '6 ft 5.0 in');
      },
    );

    test(
      'time converter test',
          () {
        expect(timeConverter(3662000), '01:01');
      },
    );

    test(
      'time of date from date time test',
          () {
        expect(timeOfDayFromDateTime(1614668723666), '08:05');
      },
    );

  });



}
