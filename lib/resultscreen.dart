import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/Data/questions.dart';
import 'package:quiz_app/questionsummary.dart';

class Resultscreen extends StatelessWidget {
  const Resultscreen(
      {required this.chosenanswers, required this.restart, super.key});

  final List<String> chosenanswers;
  final void Function() restart;

  List<Map<String, Object>> getSummarydata() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenanswers.length; i++) {
      summary.add({
        'question-index': i,
        'questions': questions[i].text,
        'correct-answer': questions[i].answers[0],
        'chosen-answers': chosenanswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summarydata = getSummarydata();
    final totalquestions = questions.length;
    final correctanswers = summarydata
        .where(
            (element) => element['correct-answer'] == element['chosen-answers'])
        .length;
    return SizedBox(
        width: double.infinity,
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                ' YOU GOT $correctanswers OUT OF $totalquestions RIGHT..',
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(
                height: 20,
              ),
              Questionummary(summarydata),
              const SizedBox(
                height: 30,
              ),
              OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                  onPressed: restart,
                  icon: const Icon(
                    Icons.replay_rounded,
                    color: Colors.black,
                  ),
                  label: const Text(
                    'Restart Quiz',
                    style: TextStyle(color: Colors.black),
                  ))
            ],
          ),
        ));
  }
}
