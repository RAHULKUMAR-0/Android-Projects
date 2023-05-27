import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.answerText, // these are named arguments, without them you can't use them as arguments for widgets. example -> answerText:, onTap:
    required this.onTap,
  });

  final String
      answerText; // anserText is used to pass answer through constructor of type string
  final void Function()
      onTap; // onTap is used to pass function through constructor
  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed:
          onTap, // instant function passed to constructor and defined as property
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.deepPurple,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      ),
      child: Text(answerText, textAlign: TextAlign.center),
    );
  } // build
} // class
