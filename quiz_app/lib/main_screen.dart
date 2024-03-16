import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'home.dart';
import 'questions_screen.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/result.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() {
    return _MainScreenState();
  }
}

class _MainScreenState extends State<MainScreen> {
  // Widget? activeScreen;

  /// if you see this code another time as you can see the Home widget is not accepting the fuction b/c
  /// the home and the switchscreen methods will be excuted concurrntly so we need to add an
  /// inintal state funtion
  ///
  /// or we can just use this

  List<String> selectedAnswers = [];

  var activeScreen = "home";

  // @override
  // void initState() {
  //   activeScreen = Home(switchScreen);
  //   super.initState();
  // }

  void switchScreen() {
    setState(() {
      // activeScreen = const QuestionScreen();
      activeScreen = "questions-screen";
    });
  }

  void choosedAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'reset';
        // selectedAnswers = [];

        // activeScreen = 'home';
      });
    }
    // print(selectedAnswers.length);
  }

  void restart() {
    setState(() {
      switchScreen();
      selectedAnswers = [];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // alignment: Alignment.center,
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(255, 78, 11, 185),
          Color.fromARGB(255, 64, 29, 182)
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        // color: Color.fromARGB(255, 64, 0, 240),
      ),
      // child: const Padding(
      // padding: EdgeInsets.only(top: 100),
      child: activeScreen == 'home'
          ? Home(switchScreen)
          : (activeScreen == 'reset'
              ? Result(
                  selectedAnswers: selectedAnswers,
                  reset: restart,
                )
              : QuestionScreen(
                  choosedAnswer: choosedAnswer,
                )),
      // ),

      /// lets build a new widget
    );
  }
}
