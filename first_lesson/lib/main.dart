import "package:flutter/material.dart";
import "./quiz.dart";
import "./result.dart";

// void main() {
//   runApp(const MyApp());
// }

// arrow function is supported in dart
void main() => runApp(const MyApp());

// ignore: must_be_immutable
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}
// context is an object that holds meta info about our app
// BuildContext is a special object type
// build function needs to return a widget
// Widget is a class but also therefore a type

// ***here we simply declare build method, and flutter will run this method automatically

// override is a decorator, provided by dart (not flutter)
// this is not required, but it makes clear that we are overriding the build method with our own implementation
// it is a common practice to use @override to make it clear that we are deliberately overriding a build method which is already provided by the statelesswidget. (build already exist in the class that we are extending: StatelessWidget)

// underscore makes sure that _MyAppState can only be accessed within main.dart
class _MyAppState extends State<MyApp> {
  final questions = const [
    {
      "questionText": "What's is your favorite color?",
      "answer": [
        {"text": "Black", "score": 1},
        {"text": "Yellow", "score": 8},
        {"text": "Green", "score": 9},
        {"text": "Red", "score": 10},
      ]
    },
    {
      "questionText": "What's is your favorite animal?",
      "answer": [
        {"text": "dog", "score": 1},
        {"text": "cat", "score": 7},
        {"text": "monkey", "score": 8},
      ]
    },
    {
      "questionText": "What's is your favorite name?",
      "answer": [
        {"text": "Max", "score": 1},
        {"text": "Pol", "score": 7},
        {"text": "James", "score": 8},
        {"text": "Peter", "score": 9},
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    if (_questionIndex < questions.length) {
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
    }

    // ignore: avoid_print
    print(_totalScore);
  }

  @override
  Widget build(BuildContext context) {
    // compile time constant => also implicitly runtime constant
    // this will never change even during run time

    // MaterialApp takes "named" argument
    // MaterialApp is a class
    return MaterialApp(
      // scaffold provides basic ui
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "My First App",
          ),
        ),
        // ternary operator
        body: _questionIndex < questions.length
            ? Quiz(
                questions: questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion,
              )
            : Result(score: _totalScore),
      ),
    );
  }
}
