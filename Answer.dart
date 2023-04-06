import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Quiz.dart' as prefix;

class Answer extends StatelessWidget {
  const Answer(this.selectHandler,this.answerText,{Key? key}) : super(key: key);

  final String answerText;
  final VoidCallback selectHandler;



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SizedBox(
          width: double.infinity,
          height: 35,
          child: ElevatedButton(
          onPressed: selectHandler,
      style: ButtonStyle(
      textStyle:
      MaterialStateProperty.all(const TextStyle(color: Colors.white)),
      backgroundColor: MaterialStateProperty.all(Colors.deepOrange)),
      child: Text(answerText , style: const TextStyle(fontSize: 27),),
      ),
      ),
    );
  }
}
