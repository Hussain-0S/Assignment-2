import 'package:flutter/cupertino.dart';
import "Question.dart";
import 'Answer.dart';
import 'main.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function(int s)answerQuestion;
  static bool light = true;

   Quiz({Key? key,required this.questions, required this.questionIndex, required this.answerQuestion}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
           questions[questionIndex]['questionText'].toString(),
        ),
        ...(questions[questionIndex]['Answer'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
                  () => answerQuestion(answer['Score']as int),answer['text'].toString());
        }).toList()
      ],
    );
  }
}


