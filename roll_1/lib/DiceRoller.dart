import 'package:flutter/material.dart';
import 'dart:math'; //random number gen using random function

void main() => runApp(RollDice());

class RollDice extends StatefulWidget {
  const RollDice(
      {super.key}); //not mentioning it wont give error as stateful widget automatically creates constructor
  @override
  State<RollDice> createState() {
    return _Roll_Dice_State();
  }
}

class _Roll_Dice_State extends State<RollDice> {
  // if no constructor, dart adds automatically

  var Dice = 2; // present dice value

  void Roll_Dice_function() {
    setState(() {
      Dice = Random().nextInt(6) + 1; // random dice value after rolling
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets\\images\\dice$Dice.png', height: 300, width: 300),
        TextButton(
          child: Text('Roll!'),
          onPressed: Roll_Dice_function,
          style: TextButton.styleFrom(
            foregroundColor: Colors.amber.shade500,
            padding: EdgeInsets.only(top: 20),
            textStyle: TextStyle(
                fontFamily: 'Comic1', color: Colors.white, fontSize: 30),
          ),
        ),
      ],
    );
  }
}
