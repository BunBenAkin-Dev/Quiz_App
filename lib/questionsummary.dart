import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:quiz_app/summaryItem.dart';

class Questionummary extends StatelessWidget {
  const Questionummary(this.summarydatav, {super.key});
  final List<Map<String, Object>> summarydatav;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summarydatav.map((grace) => Summaryitem(grace)).toList(),
        ),
      ),
    );
  }
}
