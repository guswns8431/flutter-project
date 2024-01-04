import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
                width: 300,
                height: 250,
                child: Center(
                    child: Text(
                  '나의 단어장',
                  style: TextStyle(fontSize: 50),
                ))),
            Padding(
              padding: const EdgeInsets.all(8),
            ),
            Container(
              width: 200,
              height: 75,
              child: RaisedButton(
                child: Text("오답노트"),
                onPressed: () {
                  Navigator.pushNamed(context, 'incorrectNote');
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
            ),
            Container(
              width: 200,
              height: 75,
              child: RaisedButton(
                child: Text('단어추가'),
                onPressed: () {
                  Navigator.pushNamed(context, 'add');
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
            ),
            Container(
              width: 200,
              height: 75,
              child: RaisedButton(
                child: Text('퀴즈'),
                onPressed: () {
                  Navigator.pushNamed(context, 'quiz');
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
            ),
            Container(
              width: 200,
              height: 75,
              child: RaisedButton(
                child: Text('단어장'),
                onPressed: () {
                  Navigator.pushNamed(context, 'wordList');
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
