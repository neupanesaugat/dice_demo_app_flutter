import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          [
            Color.fromARGB(255, 175, 220, 241),
            Color.fromARGB(255, 82, 183, 230),
          ],
        ),
      ),
    ),
  );
}
