import "package:flutter/material.dart";

class Question extends StatelessWidget {
  // add final to remove immutable error: this cannot be reassigned
  final String questionText;

  // positional argument
  const Question(this.questionText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // double infinity => takes as much space as much it can get => width 100% (full width)
      // double is an object => basically everything in dart is an object
      // infinity is a property of double object
      width: double.infinity,
      // EdgetInsects has multiple constructor methods
      margin: const EdgeInsets.all(100),
      child: Text(
        questionText,
        style: const TextStyle(fontSize: 35),
        textAlign: TextAlign.center,
      ),
    );
  }
}
