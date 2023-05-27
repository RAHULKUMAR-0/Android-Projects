import "package:flutter/material.dart";

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, this.startQuiz,
      {super.key});

  final void Function() startQuiz;
  final Color color1;
  final Color color2;

  final Alignment Align_Start = Alignment.topLeft;
  final Alignment Align_End = Alignment.bottomRight;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [color1, color2], begin: Align_Start, end: Align_End),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets\\images\\quiz-logo.png',
                width: 270, color: Color.fromARGB(90, 255, 255, 255)),
            const SizedBox(height: 50),
            const Text('Quiz!',
                style: TextStyle(fontSize: 20, color: Colors.white)),
            OutlinedButton.icon(
                onPressed: () {
                  startQuiz();
                },
                label:
                    const Text(' Start Quiz ', style: TextStyle(fontSize: 20)),
                icon: const Icon(Icons.arrow_circle_right),
                style: TextButton.styleFrom(
                    foregroundColor: Colors.purple,
                    padding: EdgeInsets.only(top: 10)))
          ],
        ),
      ),
    );
  } // build
} // class GradientContainer
