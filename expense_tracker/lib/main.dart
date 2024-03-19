import 'package:flutter/material.dart';
import 'expenses.dart';
// import 'package:flutter/services.dart';

var kColorScheme =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 96, 59, 181));

var kDarkColorScheme = ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: const Color.fromARGB(255, 5, 99, 125));
void main() {
  // WidgetsFlutterBinding();
  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  // ]).then((fn) {
  runApp(
    MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: kDarkColorScheme,
        cardTheme: const CardTheme().copyWith(
          color: kDarkColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: kDarkColorScheme.primaryContainer),
        ),
        // appBarTheme:
        //     AppBarTheme(backgroundColor: kDarkColorScheme.primaryContainer)
      ),
      theme: ThemeData().copyWith(
          scaffoldBackgroundColor: const Color.fromARGB(255, 149, 69, 210),
          colorScheme: kColorScheme,
          appBarTheme: const AppBarTheme().copyWith(
            titleTextStyle: const TextStyle(fontSize: 20),
            foregroundColor: kColorScheme.primaryContainer,
            backgroundColor: kColorScheme.onPrimaryContainer,
          ),
          cardTheme: const CardTheme().copyWith(
            color: kColorScheme.secondaryContainer,
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                backgroundColor: kColorScheme.primaryContainer),
          ),
          textTheme: ThemeData().textTheme.copyWith(
                  titleLarge: TextStyle(
                fontSize: 15,
                color: kColorScheme.primary,
              ))
          // textTheme: const TextTheme().copyWith(
          //     // titleLarge: const TextStyle(
          //     //     fontWeight: FontWeight.normal, fontSize: 40, color: Colors.red),
          //     ),
          ),
      home: const Expenses(),
    ),
  );
  // });
}
