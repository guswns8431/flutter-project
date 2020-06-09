import 'package:flutter/material.dart';

class WordList extends StatefulWidget {
  @override
  _WordListState createState() => _WordListState();
}

class _WordListState extends State<WordList> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO: 데이터베이스에서 값을 가져와서 나열해야함
      body: RaisedButton(
        child: Text('홈'),
        onPressed: () {
          Navigator.pushNamed(context, 'home');
        },
      ),
      );
  }
}