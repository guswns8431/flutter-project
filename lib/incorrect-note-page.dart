import 'package:flutter/material.dart';

class IncorrectNote extends StatefulWidget {
  @override
  _IncorrectNoteState createState() => _IncorrectNoteState();
}

class _IncorrectNoteState extends State<IncorrectNote> {
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('오답노트'),
        Text('영어/한글'),
        TextFormField(
          controller: myController,
        ),
        RaisedButton(
          child: Text('제출하기'),
          onPressed: () {},
        )
      ],
    );
  }
}
