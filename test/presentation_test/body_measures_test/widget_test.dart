import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:reminder_app/domain/body_measures/body_measures.dart';
import 'package:reminder_app/domain/core/value_objects.dart';
import 'package:reminder_app/presentation/body_measures/body_measures_form/body_measures_form_page.dart';
import 'package:reminder_app/presentation/core/app_widget.dart';

void main() {
  testWidgets('test weight form field and overview',
      (WidgetTester tester) async {
    final weightFormField =
        find.byKey(const ValueKey('weightBodyMeasuresFormField'));
    final weightOverviewField =
        find.byKey(const ValueKey('weightBodyMeasuresOverviewField'));

    await tester.pumpWidget(MaterialApp(
      home: Card(child: TextFormFieldBWeight(weightTextController: TextEditingController())),
    ));

    await tester.enterText(weightFormField, '200');

   await tester.pump();

   expect('200', findsOneWidget);
  });
}
