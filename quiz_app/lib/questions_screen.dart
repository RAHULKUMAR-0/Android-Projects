import 'package:flutter/material.dart';
import './answer_button.dart';
import './questions.dart';

// import 'package:google_fonts/google_fonts.dart'; //to use google_fonts

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectAnswer});
  final void Function(String answer) onSelectAnswer;
  @override
  State<QuestionsScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswers) {
    widget.onSelectAnswer(
        //onSelectAnswer is a passed parameterized constructor function
        selectedAnswers); // this is used to access widgetclass and its properties i.e. QuestionScreen class and its properties

    setState(() {
      //setState(() {});
      currentQuestionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
        width: double.infinity,
        child: Container(
          margin: const EdgeInsets.all(50),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(
                  'assets\\images\\quiz-logo.png',
                  width: 70,
                  height: 70,
                  color: const Color.fromARGB(40, 0, 0, 0),
                ),
                const SizedBox(height: 10),
                Text(currentQuestion.text,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                        fontFamily: 'Serif')),
                const SizedBox(height: 20),
                ...currentQuestion.ShuffledAnswers.map((answer) {
                  return AnswerButton(
                      answerText: answer,
                      onTap: () {
                        answerQuestion(answer);
                      });
                }), // '...' is spreading, which spreads out each element in the list. For example-> list1 = [[1,2,3],4], so ...list1 = [1,2,3,4]
              ]),
        ));
  }
}
