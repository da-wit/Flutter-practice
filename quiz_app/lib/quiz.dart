import 'package:flutter/material.dart';
import 'main_screen.dart';

class Quiz extends StatelessWidget {
  const Quiz({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: MainScreen(),
      ),
    );
  }
}
