import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

int wordID = 0;

class AddPage extends StatefulWidget {
  @override
  _AddPageState createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  final TextEditingController _koreanController = TextEditingController();
  final TextEditingController _englishController = TextEditingController();

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
                '단어 추가',
                style: TextStyle(fontSize: 50),
              ))),
          Padding(
            padding: const EdgeInsets.all(8),
          ),
          Container(
            width: 250,
            child: TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  hintStyle: TextStyle(
                    fontSize: 17,
                  ),
                  labelText: '단어'),
              controller: _englishController,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
          ),
          Container(
            width: 250,
            child: TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  hintStyle: TextStyle(fontSize: 17), labelText: '해석'),
              controller: _koreanController,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
          ),
          Container(
            width: 250,
            height: 60,
            child: RaisedButton(
              child: Text('입력'),
              onPressed: () {
                createRecord();
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
          ),
          Container(
            width: 250,
            height: 60,
            child: RaisedButton(
              child: Text('돌아가기'),
              onPressed: () {
                Navigator.pushNamed(context, 'home');
              },
            ),
          )
        ],
      ),
    ));
  }

  void createRecord() {
    Firestore.instance.collection("wordbook").add({
      'English':'${_englishController.text}',
      'Korean' : '${_koreanController.text}',
    });
  }

}
