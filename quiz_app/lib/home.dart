import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // const SizedBox(height: 40),
          Image.asset(
            'assets/quiz-logo.png',
            height: 300,
            color: const Color.fromARGB(177, 255, 255, 255),
          ),
          const SizedBox(
            height: 80,
          ),
          const Text(
            "Learn flutter the fun way!",
            style: TextStyle(
              color: Color.fromARGB(255, 237, 223, 252),
              fontSize: 25,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          OutlinedButton.icon(

              ///we can just use this
              onPressed: startQuiz,
              // onPressed: () {
              //   startQuiz();
              // },
              style: OutlinedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 167, 46, 189),
                textStyle:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                foregroundColor: Colors.white,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text("Start Quiz")

              /// instead of using SizedBox and the Row we have a better way doing that
              // const Row(
              //   mainAxisSize: MainAxisSize.min,
              //   children: [
              //     Text(
              //       "Start Quiz",
              //     ),

              // SizedBox(
              //   width: 20,
              // ),
              // Icon(
              //   Icons.arrow_forward,
              //   // Icons.arrow_forward_ios_sharp,
              // )

              /// here is the way
              /// first change the outlinebutton widget to OutlinedButton.icon then we need to change the child to label
              ///  to see the code just drag the scroll up and see the OutlinedButton widget!!!!
              // ],
              ),

          // ElevatedButton(
          //   onPressed: () {},
          //   style: ElevatedButton.styleFrom(
          //       textStyle: const TextStyle(fontSize: 15),
          //       backgroundColor: const Color.fromARGB(255, 165, 58, 240),
          //       shape: const RoundedRectangleBorder(
          //         borderRadius: BorderRadius.all(
          //           Radius.circular(5),
          //         ),
          //       )),
          //   // shape: const RoundedRectangleBorder(borderRadius:  BorderRadius.all( Radius.circular(20),),),),),
          //   child: const Text("Start Quiz",
          //       style: TextStyle(color: Colors.white, fontSize: 20)),
          // )
        ],
      ),
    );
  }
}
