import 'package:flutter_test/flutter_test.dart';
import 'package:docreader/app.dart';

void main() {
  testWidgets('smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const DocReaderApp());
  });
}