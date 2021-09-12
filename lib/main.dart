import "package:flutter/material.dart";
import './question.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp>{
  int questionIndex = 0;

  void answerQuestion(){
    setState(() {
      if(questionIndex >= 1){
        questionIndex = 0;
      }else{
        questionIndex++;
      }
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context){
    var questions = [
      "What is your favorite color?",
      "What is your favorite animal"
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Sample App"),
        ),
        body: Column(
          children: [
            Question(questions[questionIndex]),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: ElevatedButton(
                onPressed: answerQuestion,
                child: const Text("Answer 1"),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: ElevatedButton(
                onPressed: answerQuestion,
                child: const Text("Answer 2"),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: ElevatedButton(
                onPressed: answerQuestion,
                child: const Text("Answer 3"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}