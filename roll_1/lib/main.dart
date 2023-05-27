import "package:flutter/material.dart";
import "./Gradient_Container.dart";

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: GradientContainer(Color.fromARGB(255, 35, 227, 134),
          Color.fromARGB(255, 134, 220, 178)),
    ),
  ));
}
