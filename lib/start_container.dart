import 'package:flutter/material.dart';

const double padding = 42;

class StartContainer extends StatelessWidget {
  const StartContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 87, 1, 102),
            Color.fromARGB(255, 134, 73, 148)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/quiz-logo.png'),
            const SizedBox(
              height: padding,
            ),
            const Text(
              'Learn Flutter the fun way!',
              style: TextStyle(fontSize: 22, color: Colors.white),
            ),
            const SizedBox(
              height: padding,
            ),
            FilledButton(
              onPressed: () {},
              child: const Text('Start Quiz'),
            )
          ],
        ),
      ),
    );
  }
}
