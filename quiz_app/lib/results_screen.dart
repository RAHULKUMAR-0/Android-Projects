import "package:flutter/material.dart";
import "./questions.dart";
import "./question_summary.dart";
import "package:google_fonts/google_fonts.dart";

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(
      {super.key, required this.chosenAnswers, required this.onRestart});

  final void Function() onRestart;
  final List<String> chosenAnswers;
  List<Map<String, Object>> get summaryData {
    // getter method, can be used as property/variable inside class but behaves like internal method
    // this function returns the list and therfore it should be called as function instead of value
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question-index': i,
        'question': questions[i].text,
        'correct-answer': questions[i].answers[0],
        'user-answer': chosenAnswers[i]
      });
    } //iterating the list

    return summary;
  }

  @override
  Widget build(context) {
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['user-answer'] == data['correct-answer'];
    }).length;

    /* '.length' indicates the number of items returned from the iterable object
     'where' returns the view of the mapped elements */

    return SizedBox(
        width: double.infinity,
        child: Container(
            margin: const EdgeInsets.only(top: 20),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    ' You have answered $numCorrectQuestions out of $numTotalQuestions questions correctly! ',
                    style: GoogleFonts.lato(
                      color: const Color.fromARGB(255, 230, 200, 253),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ), // style argument
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30),
                  QuestionsSummary(summaryData),
                  /* imported class from question_summary.dart file, name is not passed but
              function is passed that will return widget as the function returns widget, which is the 
              required parameter format for the constructor of the QuestionsSummary class*/

                  const SizedBox(height: 30),
                  TextButton.icon(
                      onPressed: onRestart,
                      style: TextButton.styleFrom(
                          foregroundColor: Colors.red.shade300),
                      icon: const Icon(Icons.refresh),
                      label: const Text(' Retry Quiz !!'))
                ])));
  }
}
