import "package:flutter/material.dart";

// void main() {
//   runApp(const MyApp());
// }

// arrow function is supported in dart
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // context is an object that holds meta info about our app
  // BuildContext is a special object type
  // build function needs to return a widget
  // Widget is a class but also therefore a type

  // ***here we simply declare build method, and flutter will run this method automatically

  // override is a decorator, provided by dart (not flutter)
  // this is not required, but it makes clear that we are overriding the build method with our own implementation
  // it is a common practice to use @override to make it clear that we are deliberately overriding a build method which is already provided by the statelesswidget. (build already exist in the class that we are extending: StatelessWidget)

  void answerQuestion(String question) {
    // ignore: avoid_print
    print("answer $question");
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
            const Text("This Question:"),
            ElevatedButton(
              // ignore: avoid_print
              onPressed: () => answerQuestion("1"),
              child: const Text("Answer 1"),
            ),
            ElevatedButton(
              // ignore: avoid_print
              onPressed: () => answerQuestion("2"),
              child: const Text("Answer 2"),
            ),
            ElevatedButton(
              // ignore: avoid_print
              onPressed: () => answerQuestion("3"),
              child: const Text("Answer 3"),
            )
          ],
        ),
      ),
    );
  }
}
