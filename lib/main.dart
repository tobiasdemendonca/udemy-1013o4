import 'package:flutter/material.dart';
import 'package:udemy_1013o4/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
          backgroundColor: Color.fromARGB(255, 173, 192, 190),
          body: GradientContainer(
            [Color.fromARGB(255, 219, 179, 226), Colors.blueGrey],
          )),
    ),
  );
}
