import "package:flutter/material.dart";

class Answer extends StatelessWidget {
  // final => it will not change once it has its original value
  final VoidCallback voidCallback;
  final String btnName;

  const Answer({super.key, required this.voidCallback, required this.btnName});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: ElevatedButton(
        onPressed: voidCallback,
        // Colors is an object with static properties
        style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.blue)),
        child: Text(btnName),
      ),
    );
  }
}
