import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetButton;

  Result(this.resultScore, this.resetButton);

  String get resultPhrase {
    var resultText = 'a';
    if (resultScore < 5) {
      resultText = 'OOOOOOOOOOOO!';
    } else if (resultScore < 10) {
      resultText = 'AAAAAAAAAAAA!';
    } else if (resultScore < 16) {
      resultText = 'BBBBBBBBBBBB!';
    } else {
      resultText = 'iiiiiiiiiiiii!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          resultPhrase,
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        ElevatedButton(
          child: Text(
            'Reset the Quiz',
          ),
          onPressed: resetButton,
        )
      ],
    ));
  }
}
