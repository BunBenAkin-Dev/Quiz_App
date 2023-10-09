import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:quiz_app/Data/questions.dart';
import 'package:quiz_app/elevatebttn.dart';

class Questionscreen extends StatefulWidget {
  const Questionscreen({required this.onselectans, super.key});

  final void Function(String ans) onselectans;
  @override
  State<Questionscreen> createState() => _QuestionscreenState();
}

class _QuestionscreenState extends State<Questionscreen> {
  var questionIndex = 0;

  void nxtquest(String selectedanswer) {
    widget.onselectans(selectedanswer);

    setState(() {
      questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final quest = questions[questionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              quest.text,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 20),
            ...quest.getshuffled().map((e) => Elevatebttn(
                txt: e,
                ontap: () {
                  nxtquest(e);
                }))
          ],
        ),
      ),
    );
  }
}
