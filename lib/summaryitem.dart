import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class Summaryitem extends StatelessWidget {
  const Summaryitem(this.data, {super.key});

  final Map<String, Object> data;

  @override
  Widget build(BuildContext context) {
    final ifcorrect = data['correct-answer'] == data['chosen-answers'];
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
              width: 20,
              height: 20,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: ifcorrect
                      ? Colors.yellow
                      : Color.fromARGB(255, 242, 242, 244)),
              child: Text(((data['question-index'] as int) + 1).toString())),
          const SizedBox(
            width: 15,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data['questions'].toString(),
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  data['correct-answer'].toString(),
                  style: const TextStyle(
                      backgroundColor: Colors.black, color: Colors.white),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  data['chosen-answers'].toString(),
                  style: const TextStyle(
                      color: Colors.black, backgroundColor: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
