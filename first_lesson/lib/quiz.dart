import "package:flutter/material.dart";
import "./questions.dart";
import "./answer.dart";

class Quiz extends StatelessWidget {
  // runtime constant => which are initialized when app starts, but thereafter they dont change
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  const Quiz(
      {super.key,
      required this.questions,
      required this.answerQuestion,
      required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]["questionText"] as String),
        ...(questions[questionIndex]["answer"] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
            btnName: answer["text"] as String,
            voidCallback: () => answerQuestion(answer["score"]),
          );
        }).toList(),
      ],
    );
  }
}
