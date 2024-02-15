import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(
            height: 80,
          ),
          Text("Football Trivia",
              style: GoogleFonts.lato(
                  color: const Color.fromARGB(144, 255, 255, 255),
                  fontSize: 24)),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
              onPressed: widget.startQuiz,
              style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.all(10)),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text("Start Quiz"))
        ],
      ),
    );
  }
}
