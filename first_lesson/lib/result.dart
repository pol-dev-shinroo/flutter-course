import "package:flutter/material.dart";

class Result extends StatelessWidget {
  final int score;
  const Result({super.key, required this.score});

  // value is calculated dynamically
  String get resultPhrase {
    var resultText = "You Did It!";
    if (score <= 8) {
      resultText = "You are awesome!";
    } else if (score <= 12) {
      resultText = "You are cool!";
    } else {
      resultText = "You are the best!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
