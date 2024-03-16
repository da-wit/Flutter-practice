// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/question_summary.dart';

class Result extends StatelessWidget {
  const Result({required this.selectedAnswers, required this.reset, super.key});
  final List<String> selectedAnswers;
  final void Function() reset;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (int i = 0; i < selectedAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'users_answer': selectedAnswers[i],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final total = questions.length;
    final summaryData = getSummaryData();
    final filterdData = summaryData.where((data) {
      return data['correct_answer'] == data['users_answer'];
    }).length;

    final message =
        'You have answerd $filterdData questons out of $total Questions';

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              message,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 24, color: Colors.white),
            ),
            const SizedBox(
              height: 20,
            ),
            QuestionSummary(summary: summaryData),
            // const Column(
            //   children: [
            //     Text("questions"),
            //     Text("Anser"),
            //     Text("user selected answer")
            //   ],
            // ),
            TextButton.icon(
                onPressed: () {
                  reset();
                },
                style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    textStyle: const TextStyle(fontSize: 20),
                    backgroundColor: const Color.fromARGB(255, 97, 12, 117),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40))),
                icon: const Icon(Icons.restart_alt),
                label: const Text(
                  "Restart Quiz",
                ))
          ],
        ),
      ),
    );
  }
}
