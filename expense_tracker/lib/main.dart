import 'package:flutter/material.dart';
import 'expenses.dart';

var kColorScheme =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 96, 59, 181));

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 149, 69, 210),
        colorScheme: kColorScheme,
        appBarTheme: const AppBarTheme().copyWith(
            foregroundColor: kColorScheme.primaryContainer,
            backgroundColor: kColorScheme.onPrimaryContainer),
        cardTheme: const CardTheme().copyWith(
          color: kColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: kColorScheme.primaryContainer),
        ),
        textTheme: const TextTheme().copyWith(
            // titleLarge: const TextStyle(
            //     fontWeight: FontWeight.normal, fontSize: 40, color: Colors.red),
            ),
      ),
      home: const Expenses(),
    ),
  );
}
