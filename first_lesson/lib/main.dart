import "package:flutter/material.dart";
import "./questions.dart";
import "./answer.dart";

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
  var _questionIndex = 0;

  void _answerQuestion({String? question, required List questionList}) {
    setState(() {
      if (_questionIndex == questionList.length - 1) {
        _questionIndex = 0;
      } else {
        _questionIndex = _questionIndex + 1;
      }
    });

    // ignore: avoid_print
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    // MaterialApp takes "named" argument
    // MaterialApp is a class

    var questions = [
      {
        "questionText": "What's is your favorite color?",
        "answers": ["Black", "Red", "Green", "Yellow"]
      },
      {
        "questionText": "What's is your favorite animal?",
        "answers": ["dog", "cat", "monkey", "fish"]
      },
      {
        "questionText": "What's is your favorite name?",
        "answers": ["Max", "Pol", "James", "Peter"]
      },
    ];
    return MaterialApp(
      // scaffold provides basic ui
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "My First App",
          ),
        ),
        body: Column(
          children: <Widget>[
            Question(questions[_questionIndex]["questionText"] as String),
            Answer(
              btnName: "Answer 1",
              voidCallback: () =>
                  _answerQuestion(question: "1", questionList: questions),
            ),
            Answer(
              btnName: "Answer 2",
              voidCallback: () =>
                  _answerQuestion(question: "2", questionList: questions),
            ),
            Answer(
              btnName: "Answer 3",
              voidCallback: () =>
                  _answerQuestion(question: "3", questionList: questions),
            ),
          ],
        ),
      ),
    );
  }
}
