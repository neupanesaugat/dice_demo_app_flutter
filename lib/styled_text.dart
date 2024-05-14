import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key}); //constructor

  final String text;
  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        color: Color.fromARGB(255, 0, 0, 0),
        fontSize: 28,
      ),
    );
  }
}
