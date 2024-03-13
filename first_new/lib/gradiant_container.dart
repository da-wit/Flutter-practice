import 'package:flutter/material.dart';
// import './style_widget.dart';

var beginAlign = Alignment.topRight;
var endAlign = Alignment.bottomLeft;

class GradaintContainer extends StatelessWidget {
  //  required this.colors
  GradaintContainer(this.color1, this.color2, {super.key});

  GradaintContainer.purple({super.key})
      : color1 = Colors.blue,
        color2 = Colors.greenAccent;

  // final List<Color> colors;
  final Color color1;
  final Color color2;

  var activeImage = 'assets/images/dice-1.png';

  void rollDice() {
    activeImage = 'assets/images/dice-2.png';
    print("image is ");
  }

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
      child: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            activeImage,
            width: 200,
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
              // padding: const EdgeInsets.only(top: 20),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 30,
              ),
            ),
            child: const Text("Roll dices"),
          )
        ],
      )
          //Elveted button,outlined button, textButton
          // StyleWidget("Hello world", 70, Colors.deepOrangeAccent)
          ),
    );
  }
}
