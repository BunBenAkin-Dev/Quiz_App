import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:quiz_app/Data/questions.dart';
import 'package:quiz_app/questionscreen.dart';
import 'package:quiz_app/resultscreen.dart';
import 'package:quiz_app/startscreen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> chosenans = [];
  var activescreen = 'Start-Screen';

  void switchscreen() {
    setState(() {
      activescreen = 'Question-Screen';
    });
  }

  void passans(String ans) {
    chosenans.add(ans);
    if (chosenans.length == questions.length) {
      setState(() {
        activescreen = 'Result-Screen';
      });
    }
  }

  void restartquiz() {
    setState(() {
      chosenans = [];
      activescreen = 'Start-Screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenwidget = Startscreen(switchscreen);

    if (activescreen == 'Question-Screen') {
      screenwidget = Questionscreen(onselectans: passans);
    }

    if (activescreen == 'Result-Screen') {
      screenwidget =
          Resultscreen(chosenanswers: chosenans, restart: restartquiz);
    }

    return screenwidget;
  }
}
