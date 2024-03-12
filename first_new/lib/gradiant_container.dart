import 'package:flutter/material.dart';

class GradaintContainer extends StatelessWidget {
  const GradaintContainer({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromARGB(95, 0, 0, 0),
        Color.fromARGB(95, 245, 246, 250),
        Color.fromARGB(95, 8, 28, 247),
        Color.fromARGB(95, 255, 4, 4),
        Color.fromARGB(95, 0, 0, 0),
        Color.fromARGB(95, 245, 246, 250),
        Color.fromARGB(95, 8, 28, 247),
        Color.fromARGB(95, 255, 4, 4),
        Color.fromARGB(95, 0, 0, 0),
        Color.fromARGB(95, 245, 246, 250),
        Color.fromARGB(95, 8, 28, 247),
        Color.fromARGB(95, 255, 4, 4),
      ], end: Alignment.bottomLeft, begin: Alignment.topRight)),
      child: const Center(
        child: Text(
          "Hello World!",
          style: TextStyle(fontSize: 60),
        ),
      ),
    );
  }
}
