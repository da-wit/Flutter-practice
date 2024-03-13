import 'package:flutter/material.dart';
import './dice_roller.dart';
// import './style_widget.dart';

var beginAlign = Alignment.topRight;
var endAlign = Alignment.bottomLeft;

class GradaintContainer extends StatelessWidget {
  //  required this.colors
  const GradaintContainer(this.color1, this.color2, {super.key});

  const GradaintContainer.purple({super.key})
      : color1 = Colors.blue,
        color2 = Colors.greenAccent;

  // final List<Color> colors;
  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          color1, color2
          // Color.fromARGB(95, 0, 0, 0),
          // Color.fromARGB(95, 245, 246, 250),
          // Color.fromARGB(95, 8, 28, 247),
          // Color.fromARGB(95, 255, 4, 4),
          // Color.fromARGB(95, 0, 0, 0),
          // Color.fromARGB(95, 245, 246, 250),
          // Color.fromARGB(95, 8, 28, 247),
          // Color.fromARGB(95, 255, 4, 4),
          // Color.fromARGB(95, 0, 0, 0),
          // Color.fromARGB(95, 245, 246, 250),
          // Color.fromARGB(95, 8, 28, 247),
          // Color.fromARGB(95, 255, 4, 4),
        ], end: endAlign, begin: beginAlign),
      ),
      child: const Center(
        child: DiceRoller(),
        //Elveted button,outlined button, textButton
        // StyleWidget("Hello world", 70, Colors.deepOrangeAccent)
      ),
    );
  }
}
