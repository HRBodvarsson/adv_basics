import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  final List<Map<String, Object>> summaryData;
  final TextStyle? textStyle;

  const QuestionsSummary(this.summaryData, {key, this.textStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            bool isAnswerCorrect = data['user_answer'] == data['correct_answer'];
            Color circleColor = isAnswerCorrect ? const Color.fromARGB(255, 121, 244, 255) : const Color.fromARGB(123, 244, 123, 222);  // Coloring based on correctness

            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 14,
                    backgroundColor: circleColor,
                    foregroundColor: Colors.white,
                    child: Text(
                      ((data['question_index'] as int) + 1).toString(),
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(data['question'] as String, style: textStyle),  // Question text
                        const SizedBox(height: 5),
                        Text(data['user_answer'] as String, style: textStyle),  // User answer
                        Text(data['correct_answer'] as String, style: textStyle),  // Correct answer
                      ],
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
