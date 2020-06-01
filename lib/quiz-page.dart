import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Text('QUIZ'),
          RaisedButton(
            child: Text('제출'),
            onPressed: () {},
          ),
          RaisedButton(
            child: Text('홈화면'),
            onPressed: (){
              Navigator.pushNamed(context, 'home');
            },
          )
        ],
      ),
    );
  }
}
