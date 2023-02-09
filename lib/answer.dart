import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  String answer;
  final Function selectHandler;
  final int score;

  Answer(this.selectHandler, this.answer, this.score);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue),
          foregroundColor: MaterialStateProperty.all(Colors.white),
        ),
        onPressed: () => selectHandler(score),
        child: Text(answer),
      ),
    );
  }
}
