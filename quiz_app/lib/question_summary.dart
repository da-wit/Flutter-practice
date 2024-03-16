import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({required this.summary, super.key});

  final List<Map<String, Object>> summary;

  @override
  Widget build(BuildContext context) {
    const color1 = Color.fromARGB(255, 255, 3, 242);
    const color2 = Color.fromARGB(255, 0, 187, 255);

    return SizedBox(
      height: 350,
      child: SingleChildScrollView(
        child: Column(
          children: summary.map((data) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (data['correct_answer'] == data['users_answer']
                        ? color2
                        : color1),
                  ),
                  child: Text(
                    ((data['question_index'] as int) + 1).toString(),
                    style: const TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  child: Container(
                    margin:
                        const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          data['question'] as String,
                          style: const TextStyle(
                              fontSize: 20, color: Colors.white),
                        ),
                        Text(
                          data['correct_answer'] as String,
                          style: const TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 66, 0, 70)),
                        ),
                        Text(
                          data['users_answer'] as String,
                          style: const TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 233, 195, 237)),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}



// Column(
//       children: summary.map(
//         (data) {
//           return Row(
//             children: [
//               Text(
//                 ((data['question_index'] as int) + 1).toString(),
//               ),
//               Expanded(
//                 child: Column(
//                   children: [
//                     Text(data['question'] as String),
//                     const SizedBox(
//                       height: 2,
//                     ),
//                     Text(data['correct_answer'] as String),
//                     Text(data['users_answer'] as String),
//                   ],
//                 ),
//               )
//             ],
//           );
//         },
//       ).toList(),
//     );