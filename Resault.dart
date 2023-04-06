import 'package:assignment_2/Quiz.dart';
import 'package:flutter/material.dart';
import 'Quiz.dart' as prefix;
import 'main.dart';

class Resault extends StatelessWidget {
  const Resault(this.resultScore,this.holder,{Key? key}) : super(key: key);

  final int resultScore;
  final Function() holder;

  String get resultPhrase{
    String resultText="";

    if(resultScore >= 40){
      resultText="Perfect !";
    }
    else if (resultScore <40 && resultScore >= 30){
      resultText="Very Good";
    }
    else if (resultScore <30 && resultScore >= 20){
      resultText="Acceptable";
    }
    else if (resultScore <20 && resultScore>=10){
      resultText="Not Horrible";
    }
    else{
      resultText="Better Luck Next Time";
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Text(
            "Done",
            style:  TextStyle(fontSize: 35 , fontWeight: FontWeight.bold , color: Quiz.light ? Colors.black : Colors.white),
            textAlign: TextAlign.center,
          ),
          Text(
            "Total Score = $resultScore \n $resultPhrase",
            style:  TextStyle(fontSize: 35 , fontWeight: FontWeight.bold , color: Quiz.light ? Colors.black : Colors.white),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: holder,
            child: Container(
              color: Colors.deepOrange,
              padding: const EdgeInsets.all(14),
              child: const Text(
                'Restart Quiz',
                style: TextStyle(fontSize: 20,color: Colors.white),
              ),
            ),
          ),
        ],
      )
    );
  }
}
