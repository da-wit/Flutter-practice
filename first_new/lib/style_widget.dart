import 'package:flutter/material.dart';

// var text = "Dawit Belay";
// double size = 50;
// var color = Colors.amber;

class StyleWidget extends StatelessWidget {
  const StyleWidget(this.text, this.size, this.color, {super.key});
  final String text;
  final double size;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: size,
          color: Colors.blueGrey,
          backgroundColor: const Color.fromARGB(255, 0, 255, 8)),
    );
  }
}
