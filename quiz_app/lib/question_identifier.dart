import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier(
      {super.key, required this.isCorrectAnswer, required this.questionIndex});

  final bool isCorrectAnswer; // in terms of true / false
  final int questionIndex; // integer type

  @override
  Widget build(context) {
    final questionNumber = questionIndex + 1;
    return Container(
      // container is used as it allows alignment and decoration with width and height
      width: 20,
      height: 20,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrectAnswer
            ? const Color.fromARGB(255, 150, 198,
                241) // answer is correct then it will shade light blue color
            : const Color.fromARGB(255, 249, 133,
                241), // answer is incorrect then it will shade violet color
        borderRadius: BorderRadius.circular(
            100), // circle border for numbers, it is the argument of Box Decoration
      ),
      child: Text(
        questionNumber.toString(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 22, 2, 56),
        ),
      ),
    );
  }
}
