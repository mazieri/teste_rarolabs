import 'package:flutter/material.dart';

import 'exports.dart';

class AppTheme extends StatelessWidget {
  const AppTheme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Teste Raro Labs",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          foregroundColor: Color.fromARGB(255, 255, 255, 255),
        ),
        colorScheme: const ColorScheme.light(
          primary: Color.fromARGB(255, 202, 18, 18),
          secondary: Color.fromARGB(255, 202, 18, 18),
          brightness: Brightness.light,
        ),
      ),
      darkTheme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(0, 0, 0, 0),
        colorScheme: const ColorScheme.dark(
          primary: Color.fromARGB(255, 226, 189, 26),
          secondary: Color.fromARGB(255, 226, 189, 26),
          brightness: Brightness.dark,
        ),
      ),
      home: const HomePage(),
    );
  }
}
