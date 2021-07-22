import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String question;
  Question(this.question);
  @override
  Widget build(BuildContext ctx) {
    return Container(
        child: Text(
      question,
      textAlign: TextAlign.center,
    ));
  }
}
