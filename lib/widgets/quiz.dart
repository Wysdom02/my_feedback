import 'package:flutter/material.dart';
import './question.dart';
import 'slider_widget.dart';

class Quiz extends StatefulWidget {
  final Function answerQuestion;
  final List<String> questions;
  final int questionIndex;
  Quiz(this.answerQuestion, this.questions, this.questionIndex);
  static const initFeedbackValue = 3;

  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int currentFeedbackValue = 1;

  void setFeedbackValue(int feedbackValue) {
    currentFeedbackValue = feedbackValue;
    print(currentFeedbackValue);
  }

  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 400,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Question(widget.questions[widget.questionIndex]),
            SizedBox(
              height: 10,
            ),
            Answer(
              setFeedbackValue: setFeedbackValue,
              initValue: Quiz.initFeedbackValue,
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              child: Text('Next'),
              onPressed: () => widget.answerQuestion(currentFeedbackValue),
            ),
          ],
        ),
      ),
    );
  }
}
