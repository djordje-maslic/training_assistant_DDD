import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:reminder_app/application/auth/signIn/sign_in_form_bloc.dart';
import 'package:reminder_app/domain/auth/i_auth_facade.dart';
import 'package:reminder_app/presentation/sign_in/widgets/sign_in_form.dart';

class MocIAuthFacade extends Mock implements IAuthFacade {}

void main() {

  testWidgets(
    'sign in widget test',
    (WidgetTester tester) async {
      final SignInFormBloc bloc = SignInFormBloc(MocIAuthFacade());
      final signInEmailField =
          find.byKey(const Key('sign in form email text form field'));

      await tester.pumpWidget(MaterialApp(
        home: BlocProvider<SignInFormBloc>(
          create: (context) => bloc,
          child:
             Card(child: SignInForm()),
          ),
        ),
      );

      return expect(find.text('SIGN IN'), findsOneWidget);
    },
  );
}
