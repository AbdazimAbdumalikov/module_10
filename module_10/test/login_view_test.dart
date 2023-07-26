import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:module_10/login_view.dart';

void main () {
  testWidgets('Login view tests', (WidgetTester tester) async {
    await tester.pumpWidget(
        const MaterialApp(
          home: LoginView(),
        )
    );
    expect(find.byKey(const Key('fieldEmail')), findsOneWidget);
    expect(find.byKey(const Key('fieldPhone')), findsOneWidget);
    expect(find.text('Submit'), findsOneWidget);
    expect(find.text('Успешно зарегистрировались'), findsNothing);

    await tester.enterText(find.byKey(const Key('fieldEmail')), 'test@test.com');
    expect(find.text('test@test.com'), findsOneWidget);

    await tester.enterText(find.byKey(const Key('fieldPhone')), '87088231271');
    expect(find.text('87088231271'), findsOneWidget);

    await tester.tap(find.text('Submit'));
    await tester.pump();
    expect(find.text('Успешно зарегистрировались'), findsOneWidget);
  });
}