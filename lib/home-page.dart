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
        child: Column(children: <Widget>[
          Text('나의 단어장'),
          RaisedButton(
            child: Text("오답노트"),
            onPressed: (){
              Navigator.pushNamed(context, 'incorrectNote');
            },
          ),
          RaisedButton(
            child: Text('단어입력'),
            onPressed: (){
              Navigator.pushNamed(context, 'add');
            },
          ),
          RaisedButton(
            child: Text('퀴즈'),
            onPressed: (){
              Navigator.pushNamed(context, 'quiz');
            },
          )
        ],),
      ),
    );
  }
}