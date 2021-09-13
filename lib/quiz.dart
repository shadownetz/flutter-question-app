import "package:flutter/material.dart";

import "./question.dart";
import "./answer.dart";


class Quiz extends StatelessWidget {
  final List<Map> questions;
  final Function answerQuestion;
  final int questionIndex;

  Quiz(this.questions, this.answerQuestion, this.questionIndex);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Question(
            questions[questionIndex]['questionText'],
          ),
          ...(questions[questionIndex]['answers'].map((answer) {
            return Answer(answer['text'], ()=>answerQuestion()(answer['score']));
          })),
        ]);
  }
}
