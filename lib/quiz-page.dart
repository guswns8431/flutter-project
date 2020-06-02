import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  final TextEditingController _quizController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Text('QUIZ'),
          Text('단어/한글'),
          TextField(
            controller: _quizController,
          ),
          RaisedButton(
            child: Text('제출'),
            onPressed: () {},
          ),
          RaisedButton(
            child: Text('홈화면'),
            onPressed: () {
              Navigator.pushNamed(context, 'home');
            },
          ),
          RaisedButton(
            child: Text('돌아가기'),
            onPressed: () {
              Navigator.pushNamed(context, 'home');
            },
          )
        ],
      ),
    );
  }
}
