import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'package:teste_rarolabs/app/controllers/controllers_exports.dart';
import 'package:teste_rarolabs/app/exports.dart';
import 'package:teste_rarolabs/app/services/history_service.dart';

void main() {
  GetIt getIt = GetIt.I;
  getIt.registerSingleton<LicenseController>(LicenseController());
  getIt.registerLazySingleton<HistoryService>(() => HistoryService());

  setUp(() {});

  tearDown(() {});

  setUpAll(() {});

  tearDownAll(() {});

  group("Teste pra achar tudo da Control Page", () {
    testWidgets(
      'Achei o Contador de Vagas',
      (WidgetTester tester) async {
        await tester.pumpWidget(const MaterialApp(
          home: Material(
            child: ControlPage(),
          ),
        ));

        expect(find.byKey(const ValueKey("contadorVagas")), findsOneWidget);
      },
    );

    testWidgets(
      'Não é pra achar o texto das Placas',
      (WidgetTester tester) async {
        await tester.pumpWidget(const MaterialApp(
          home: Material(
            child: ControlPage(),
          ),
        ));

        expect(find.byKey(const ValueKey("stringPlaca")), findsNothing);
      },
    );

    testWidgets(
      'Achei o Botão pra Marcar as Entradas do Veículos',
      (WidgetTester tester) async {
        await tester.pumpWidget(const MaterialApp(
          home: Material(
            child: ControlPage(),
          ),
        ));

        expect(find.byType(ElevatedButton), findsOneWidget);
      },
    );
  });
}
