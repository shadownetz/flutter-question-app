import 'package:flutter/material.dart';


class Answer extends StatelessWidget {
  final String answerText;
  final VoidCallback callback;
  Answer(this.answerText, this.callback);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.lightBlueAccent,
        ),
        onPressed: callback,
        child: Text(
          answerText,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
