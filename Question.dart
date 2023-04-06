import 'package:assignment_2/Quiz.dart';
import 'package:flutter/material.dart';
import 'Quiz.dart' as prefix;

class Question extends StatelessWidget {

  final String questions;
  const Question(this.questions,{Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Text(
        questions,
        style:  TextStyle(
            fontSize: 28,
            color: Quiz.light ? Colors.black : Colors.white
        ),
        textAlign: TextAlign.center,
      ), //Text
    );
  }
}
