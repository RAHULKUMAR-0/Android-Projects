import 'package:flutter/material.dart';
import './questions_screen.dart';
import './Gradient_Container.dart';
import './questions.dart';
import './results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // constructor added by dart automatically

  List<String> selectedAnswers =
      []; //empty list that will be later added with user-chosen answers
  var activeScreen =
      'start-screen'; // ? mark indicates it can contain null value

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void chooseAnswers(String answer) {
    // answer is a simple parameter
    selectedAnswers.add(
        answer); //selectedAnswers is a list, add is a function to add answers into list

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  final Alignment Align_Start = Alignment.topLeft;
  final Alignment Align_End = Alignment.bottomRight;

  void RestartQuiz() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = activeScreen == 'start-screen'
        ? GradientContainer(Colors.purple, Colors.blue, switchScreen)
        : QuestionsScreen(onSelectAnswer: chooseAnswers);

    if (activeScreen == 'results-screen') {
      screenWidget = ResultsScreen(
          chosenAnswers: selectedAnswers,
          onRestart:
              RestartQuiz); //chosenAnswers is the list used in the constructor of ResultsScreen class
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.purple, Colors.blue],
                begin: Align_Start,
                end: Align_End),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
