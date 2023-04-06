import 'package:assignment_2/Quiz.dart';
import 'package:flutter/material.dart';
import 'Resault.dart';
import 'Quiz.dart' as prefix;
void main() {
  runApp(const MyApp());
}



class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

// bool _isSwitch =false;     Used for the background changing color/////////////
class _MyAppState extends State<MyApp> {

  int _questionIndex=0;
  int _totalScore=0;

  //////////////////////////////////////// A List is enclosed in [] , and a Map is enclosed in {}.
  final List<Map<String,Object>> _questions =[
    {
      "questionText" : "What is your score in Math ?",
      "Answer" : [
        {"text":"Excellent", "Score":10},
        {"text":"Good", "Score":7},
        {"text":"Acceptable", "Score":4},
        {"text":"Bad", "Score":0}
      ]
    },
    {
      "questionText" : "What is your score in Physic ?",
      "Answer" : [
        {"text":"Excellent", "Score":10},
        {"text":"Good", "Score":7},
        {"text":"Acceptable", "Score":4},
        {"text":"Bad", "Score":0}
      ]
    },
    {
      "questionText" : "What is your score in Operating system ?",
      "Answer" : [
        {"text":"Excellent", "Score":10},
        {"text":"Good", "Score":7},
        {"text":"Acceptable", "Score":4},
        {"text":"Bad", "Score":0}
      ]
    },
    {
      "questionText" : "What is your score in Numerical methods ?",
      "Answer" : [
        {"text":"Excellent", "Score":10},
        {"text":"Good", "Score":7},
        {"text":"Acceptable", "Score":4},
        {"text":"Bad", "Score":0}
      ]
    },
  ];


  void _resetQuiz(){
    setState(() {
      _questionIndex =0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score){
    _totalScore += score;

    setState(() {
      _questionIndex++;
    });
  }


   bool light = true;
  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
      home: Scaffold(
        backgroundColor: Quiz.light ? Colors.white : Colors.black12,
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: const Center(
            child: Padding(
              padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
              child: Text(
                "Quiz App",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24,color: Colors.black),
              ),
            ),
          ),

          actions:[ Switch(
            value: Quiz.light,
            onChanged: (bool value){
              setState(() {
                Quiz.light = value; // Value changes between true and false .
              });

            },
          ),],

        ),

        body: Padding(
          padding:const EdgeInsets.all(30),
          child :  _questionIndex < _questions.length ? Quiz(
              questions: _questions,
              questionIndex: _questionIndex,
              answerQuestion: _answerQuestion,
          )
              :  Resault(_totalScore, _resetQuiz) ,  // PROBLEM ACCURES HERE
        ),
      ),
    );
  }
}

