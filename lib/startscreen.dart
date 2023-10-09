import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Startscreen extends StatelessWidget {
  const Startscreen(this.switchasap, {super.key});
  final void Function() switchasap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quizlogo.png',
            width: 300,
          ),
          const SizedBox(
            height: 40,
          ),
          OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.white,
              ),
              onPressed: switchasap,
              icon: const Icon(
                Icons.arrow_right_alt,
                color: Colors.black,
              ),
              label: const Text(
                'Start Quiz',
                style: TextStyle(color: Colors.black),
              ))
        ],
      ),
    );
  }
}
