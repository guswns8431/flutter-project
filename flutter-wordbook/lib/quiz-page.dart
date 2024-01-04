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
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
                width: 300,
                height: 200,
                child: Center(
                    child: Text(
                  'QUIZ',
                  style: TextStyle(fontSize: 50),
                ))),
            Container(
                width: 200,
                height: 100,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 15,
                      offset: Offset(10, 8),
                    ),
                  ],
                ),
                child: Center(
                    child: Text(
                  '단어/한글',
                  style: TextStyle(fontSize: 35),
                ))),
            Padding(
              padding: const EdgeInsets.all(10),
            ),
            Container(
              width: 250,
              child: TextField(
                controller: _quizController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
            ),
            Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Colors.blue,
                    spreadRadius: 3,
                    blurRadius: 29,
                    offset: Offset(10, 8)),
              ]),
              width: 250,
              height: 60,
              child: RaisedButton(
                child: Text('제출'),
                onPressed: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text('홈화면'),
                  onPressed: () {
                    Navigator.pushNamed(context, 'home');
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                ),
                RaisedButton(
                  child: Text('돌아가기'),
                  onPressed: () {
                    Navigator.pushNamed(context, 'home');
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
