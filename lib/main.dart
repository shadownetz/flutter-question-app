import "package:flutter/material.dart";
import './quiz.dart';
import './result.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{
  int _questionIndex = 0;
  int _answerTotalScore = 0;

  List <Map> questions = [
    {
      'questionText': "What is your favorite color?",
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1}
      ]
    },
    {
      'questionText': "What is your favorite animal?",
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9}
      ]
    },
    {
      'questionText': "Who is your favorite instructor?",
      'answers': [
        {'text': 'Max', 'score': 1},
        {'text': 'Jake', 'score': 1},
        {'text': 'Leo', 'score': 1},
        {'text': 'Justin', 'score': 1}
      ]
    },
  ];

  void _answerQuestion(int score){
    setState(() {
      _questionIndex++;
      _answerTotalScore += score;
    });
    // print(_questionIndex);
  }
  void _resetQuiz(){
    setState((){
      _questionIndex = 0;
      _answerTotalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context){

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Sample App"),
        ),
        body: _questionIndex < questions.length?
        Quiz(questions, ()=>_answerQuestion, _questionIndex) : Result(_answerTotalScore, _resetQuiz),
      ),
    );
  }
}