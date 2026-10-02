import 'package:flutter_test/flutter_test.dart';

// Import correto usando o nome do pacote do pubspec.yaml
import 'package:flutter_application_1/main.dart'; 

void main() {
  testWidgets('Teste básico do aplicativo', (WidgetTester tester) async {
    // Carrega o MyApp criado no main.dart
    await tester.pumpWidget(const MyApp());

    // Verifica se o texto padrão aparece na tela
    expect(find.text('Olá, Flutter!'), findsOneWidget);
  });
}