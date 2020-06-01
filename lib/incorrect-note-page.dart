import 'package:flutter/material.dart';
import 'package:flutter_project_wordbook/home-page.dart';

class IncorrectNote extends StatefulWidget {
  @override
  _IncorrectNoteState createState() => _IncorrectNoteState();
}

class _IncorrectNoteState extends State<IncorrectNote> {
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Text('오답노트'),
          Text('영어/한글'),
          TextFormField(
            controller: myController,
          ),
          RaisedButton(
            child: Text('제출하기'),
            onPressed: () {
              /*
              이런식으로도 화면 전환 가능
              Navigator.push( 
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );

              */
              Navigator.pushNamed(context,'home');
            },
          )
        ],
      ),
    );
  }
}
