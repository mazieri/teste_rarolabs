import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'app/controllers/controllers_exports.dart';
import 'app/exports.dart';

void main() {
  GetIt getIt = GetIt.I;

  getIt.registerSingleton<LicenseController>(LicenseController());

  runApp(const Start());
}

class Start extends StatelessWidget {
  const Start({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AppTheme();
  }
}
