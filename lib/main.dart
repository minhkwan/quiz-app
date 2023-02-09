import 'package:flutter/material.dart';

import 'quiz.dart';
import 'package:flutter_project1/question.dart';
import 'answer.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    var _questions = [
      {
        'question': 'What\'s your favorite color',
        'answers': [
          {'text': 'Black', 'score': 1},
          {'text': 'Pink', 'score': 2},
          {'text': 'Green', 'score': 3},
          {'text': 'Red', 'score': 4},
        ],
      },
      {
        'question': 'What\'s your favorite animal',
        'answers': [
          {'text': 'Dog', 'score': 1},
          {'text': 'Cat', 'score': 2},
          {'text': 'Tiger', 'score': 3},
          {'text': 'Elephant', 'score': 4},
        ],
      },
      {
        'question': 'What\'s your favorite subject',
        'answers': [
          {'text': 'Math', 'score': 1},
          {'text': 'Physics', 'score': 2},
          {'text': 'Biology', 'score': 3},
          {'text': 'Literature', 'score': 4},
        ],
      },
      {
        'question': 'What\'s your favorite brand',
        'answers': [
          {'text': 'Gucci', 'score': 1},
          {'text': 'Prada', 'score': 2},
          {'text': 'Louis Vuiton', 'score': 3},
          {'text': 'Mikenco', 'score': 4},
        ],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questionIndex: _questionIndex,
                questions: _questions,
                answerQuestion: () => _answerQuestion)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
