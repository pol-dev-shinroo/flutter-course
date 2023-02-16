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
  @override
  Widget build(BuildContext context) {
    // MaterialApp takes "named" argument
    // MaterialApp is a class
    return const MaterialApp(
      home: Text("Hello World!"),
    );
  }
}
