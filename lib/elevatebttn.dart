import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Elevatebttn extends StatelessWidget {
  const Elevatebttn({required this.txt, required this.ontap, key});

  final String txt;
  final void Function() ontap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(18),
        ),
        onPressed: ontap,
        child: Text(
          txt,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
