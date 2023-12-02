import "package:flutter/material.dart";
import "package:quiz_app/gradient_container.dart";
import "package:quiz_app/subtitle.dart";

class StartPage extends StatelessWidget {
  const StartPage(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return GradientContainer(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          const SizedBox(
            height: 80,
          ),
          const Subtitle(content: 'Learn Flutter the fun way!'),
          const SizedBox(
            height: 10,
          ),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              foregroundColor: Color.fromARGB(255, 255, 255, 255),
              backgroundColor: const Color.fromARGB(255, 56, 22, 114),
            ),
            onPressed: startQuiz,
            icon: const Icon(
              Icons.arrow_right_alt,
            ),
            label: const Text(
              'Start Quiz',
            ),
          ),
        ],
      ),
    );
  }
}
