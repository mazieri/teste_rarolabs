import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'app/controllers/controllers_exports.dart';
import 'app/exports.dart';
import 'app/services/history_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  GetIt getIt = GetIt.I;
  getIt.registerSingleton<LicenseController>(LicenseController());
  getIt.registerLazySingleton<HistoryService>(() => HistoryService());

  await HistoryService.init();

  runApp(const Start());
}

class Start extends StatelessWidget {
  const Start({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AppTheme();
  }
}
