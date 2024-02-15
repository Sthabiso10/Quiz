import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  QuestionsSummary(
    this.summaryData, {
    super.key,
  });

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
            children: summaryData.map((data) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 40,
                height: 40,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                child: Center(
                  child: Text(
                    ((data['question_index'] as int) + 1).toString(),
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data['question'] as String,
                      style: GoogleFonts.poppins(color: Colors.white),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      data['user_answer'] as String,
                      style: GoogleFonts.poppins(color: Colors.white54),
                    ),
                    Text(
                      data['correct_answer'] as String,
                      style: GoogleFonts.poppins(
                          color: Color.fromARGB(255, 27, 78, 104)),
                    ),
                  ],
                ),
              ),
            ],
          );
        }).toList()),
      ),
    );
  }
}
