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
        scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          foregroundColor: Color.fromARGB(255, 255, 255, 255),
        ),
        colorScheme: const ColorScheme.light(
          primary: Color.fromARGB(255, 202, 18, 18),
          // primaryVariant: primaryVariant,
          secondary: Color.fromARGB(255, 202, 18, 18),
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
        scaffoldBackgroundColor: const Color.fromARGB(0, 0, 0, 0),
        colorScheme: const ColorScheme.dark(
          primary:
              Color.fromARGB(255, 226, 189, 26), //destaques, botão, contorno
          // primaryContainer: Color.fromARGB(255, 226, 189, 26),
          secondary: Color.fromARGB(
              255, 226, 189, 26), //texto de seleção, floating action button
          // secondaryContainer: secondaryVariant,
          // surface: Colors.white,
          // background: Colors.white,
          // error: error,
          // onPrimary: onPrimary,
          // onSecondary: onSecondary,
          // onSurface: onSurface,
          // onBackground: onBackground,
          // onError: onError,

          brightness: Brightness.dark,
        ),
      ),
      home: const HomePage(),
    );
  }
}
