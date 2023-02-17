import "package:flutter/material.dart";
import "./questions.dart";

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

  void answerQuestion({String? question, required List questionList}) {
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

    var questions = <String>[
      "What's is your favorite color?",
      "What's your favorite animal"
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
            Question(questions.elementAt(_questionIndex)),
            ElevatedButton(
              // ignore: avoid_print
              onPressed: () =>
                  answerQuestion(question: "1", questionList: questions),
              child: const Text("Answer 1"),
            ),
            ElevatedButton(
              // ignore: avoid_print
              onPressed: () =>
                  answerQuestion(question: "2", questionList: questions),
              child: const Text("Answer 2"),
            ),
            ElevatedButton(
              // ignore: avoid_print
              onPressed: () =>
                  answerQuestion(question: "3", questionList: questions),
              child: const Text("Answer 3"),
            ),
          ],
        ),
      ),
    );
  }
}
