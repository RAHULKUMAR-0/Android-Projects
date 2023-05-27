import 'package:flutter/material.dart';
import './style_text.dart';
import './DiceRoller.dart';

Alignment Align_Start = Alignment.topLeft;
Alignment Align_End = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});
  GradientContainer.green({super.key})
      : color1 = Color.fromARGB(255, 35, 227, 134),
        color2 = Color.fromARGB(255, 134, 220, 178);

  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [color1, color2], begin: Align_Start, end: Align_End),
        ),
        child: Center(
          child: RollDice(),
        ));
  } // Build
} // GradientContainer Class
