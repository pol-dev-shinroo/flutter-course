import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // context is an object that holds meta info about our app
  // BuildContext is a special object type
  // build function needs to return a widget
  // Widget is a class but also therefore a type
  @override
  Widget build(BuildContext context) {
    // MaterialApp takes "named" argument
    // MaterialApp is a class
    return const MaterialApp(home: Text("Hello World!"));
  }
}
