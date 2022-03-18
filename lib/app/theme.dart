import 'package:flutter/material.dart';

import 'exports.dart';

class AppTheme extends StatelessWidget {
  const AppTheme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "SÓSEI",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // TODO: definir cores do app
        // scaffoldBackgroundColor: Colors.white,
        colorScheme: const ColorScheme.light(
          // primary: Colors.yellow,
          // primaryVariant: primaryVariant,
          // secondary: Colors.white,
          // secondaryVariant: secondaryVariant,
          // surface: Colors.black,
          // background: Colors.black,
          // error: error,
          // onPrimary: onPrimary,
          // onSecondary: onSecondary,
          // onSurface: onSurface,
          // onBackground: onBackground,
          // onError: onError,
          brightness: Brightness.light,
        ),
      ),
      darkTheme: ThemeData(
        // scaffoldBackgroundColor: Colors.black,
        colorScheme: const ColorScheme.dark(
          // primary: Colors.white,
          brightness: Brightness.dark,
        ),
      ),
      home: const HomePage(),
    );
  }
}
