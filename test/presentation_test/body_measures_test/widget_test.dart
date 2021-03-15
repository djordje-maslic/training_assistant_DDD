import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:reminder_app/application/user/user_watcher/user_watcher_bloc.dart';
import 'package:reminder_app/domain/auth/i_user_repository.dart';
import 'package:reminder_app/presentation/body_measures/body_measures_form/body_measures_form_page.dart';

class MocIUserRepository extends Mock implements IUserRepository {}

void main() {
  testWidgets('test weight form field and overview',
      (WidgetTester tester) async {
    final UserWatcherBloc bloc = UserWatcherBloc(MocIUserRepository());
    final weightFormField =
        find.byKey(const ValueKey('weightBodyMeasuresFormField'));
    final weightOverviewField =
        find.byKey(const ValueKey('weightBodyMeasuresOverviewField'));

    await tester.pumpWidget(MaterialApp(
      home: BlocProvider<UserWatcherBloc>(
        create: (context) => bloc,
        child: Card(
          child: TextFormFieldBWeight(
            weightTextController: TextEditingController(),
          ),
        ),
      ),
    ));

    await tester.enterText(weightFormField, '200');

    await tester.pump();

    expect(find.text('200'), findsOneWidget);
  });
}
