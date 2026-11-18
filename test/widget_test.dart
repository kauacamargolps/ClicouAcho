import 'package:flutter_test/flutter_test.dart';
import 'package:clicouacho/main.dart';

void main() {
  testWidgets('Aplicativo Clicou Achou inicia corretamente',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MeuApp());

    expect(find.text('Categorias'), findsOneWidget);
    expect(find.text('Lugares próximos'), findsOneWidget);
  });
}