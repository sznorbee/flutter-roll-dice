import 'package:flutter/material.dart';
import 'package:first_flutter_app/gradient_container.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: Gradientcontainer(Color.fromARGB(255, 76, 81, 37), Colors.green),
    ),
  ));
}
