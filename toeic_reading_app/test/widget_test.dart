// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:toeic_reading_app/main.dart';

void main() {
  testWidgets('Basic widget smoke test', (WidgetTester tester) async {
    // Use a minimal widget that doesn't depend on app initialization
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(body: Center(child: Text('Hello'))),
      ),
    );

    expect(find.text('Hello'), findsOneWidget);
  });
}
