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

  setUpAll(() {
    print("Teste da Home");
  });

  tearDownAll(() {});

  group(
    "Teste da Bottom Navigation Bar |",
    () {
      testWidgets(
        'Blz, Achei a BottomNavigationBar',
        (WidgetTester tester) async {
          await tester.pumpWidget(
            const MaterialApp(
              home: HomePage(),
            ),
          );

          expect(find.byType(BottomNavigationBar), findsOneWidget);
        },
      );

      testWidgets(
        'Achei os Botões das Páginas',
        (WidgetTester tester) async {
          await tester.pumpWidget(
            const MaterialApp(
              home: HomePage(),
            ),
          );

          expect(find.byType(Icon), findsNWidgets(2));

          await tester.tap(find.byType(Icon).at(0));
          await tester.tap(find.byType(Icon).at(1));
        },
      );

      testWidgets(
        'Achei os Textos do Botão da Página de Controle das Vagas',
        (WidgetTester tester) async {
          await tester.pumpWidget(
            const MaterialApp(
              home: HomePage(),
            ),
          );

          expect(find.text("Controle das Vagas"), findsOneWidget);
        },
      );

      testWidgets(
        'Achei o Texto do Botão da Página de Histórico',
        (WidgetTester tester) async {
          await tester.pumpWidget(
            const MaterialApp(
              home: HomePage(),
            ),
          );

          expect(find.text("Histórico"), findsOneWidget);
        },
      );
    },
  );

  group(
    "Teste pra achar as Páginas |",
    () {
      testWidgets(
        'Blz, Achei a PageView',
        (WidgetTester tester) async {
          await tester.pumpWidget(
            const MaterialApp(
              home: HomePage(),
            ),
          );

          expect(find.byType(PageView), findsOneWidget);
        },
      );

      testWidgets(
        'Achei a Página de Controle das Vagas',
        (WidgetTester tester) async {
          await tester.pumpWidget(
            const MaterialApp(
              home: HomePage(),
            ),
          );

          expect(find.byType(ControlPage), findsOneWidget);
        },
      );

      testWidgets(
        'Não é pra achar a Página do Histórico',
        (WidgetTester tester) async {
          await tester.pumpWidget(
            const MaterialApp(
              home: HomePage(),
            ),
          );

          expect(find.byType(HistoryPage), findsNothing);
        },
      );
    },
  );
}
