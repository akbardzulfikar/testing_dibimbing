// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:testing_dibimbing/main.dart';

void main() {
  print("⚡ [WIDGET TEST] Starting Counter widget test...");

  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    print("📝 [WIDGET TEST] Starting: Counter smoke test");
    // Build our app and trigger a frame.
    print("  ├─ BUILD: Pumping MyApp widget");
    await tester.pumpWidget(const MyApp());
    print("  ├─ ✅ MyApp pumped successfully");

    // Verify that our counter starts at 0.
    print("  ├─ VERIFY: Counter should start at 0");
    expect(find.text('0'), findsOneWidget);
    print("  ├─ ✅ Found initial counter value '0'");

    print("  ├─ VERIFY: Counter should not show '1' yet");
    expect(find.text('1'), findsNothing);
    print("  ├─ ✅ '1' not found (as expected)");

    // Tap the '+' icon and trigger a frame.
    print("  ├─ ACTION: Tapping '+' button (Icons.add)");
    await tester.tap(find.byIcon(Icons.add));
    print("  ├─ PUMP: Triggering frame after tap");
    await tester.pump();
    print("  ├─ ✅ Frame pumped");

    // Verify that our counter has incremented.
    print("  ├─ VERIFY: Counter '0' should no longer exist");
    expect(find.text('0'), findsNothing);
    print("  ├─ ✅ '0' no longer found");

    print("  ├─ VERIFY: Counter should now show '1'");
    expect(find.text('1'), findsOneWidget);
    print("  └─ ✅ WIDGET TEST PASSED! Counter incremented successfully");
  });

  print("✅ [WIDGET TEST] All tests completed!");
}
