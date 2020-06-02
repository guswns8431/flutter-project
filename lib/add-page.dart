import 'package:flutter/material.dart';

class AddPage extends StatefulWidget {
  @override
  _AddPageState createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  final TextEditingController _koreanController =
      TextEditingController(); //TODO: 이렇게 컨트롤러 한개씩 할당 받는 게 맞는건지
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
              controller: _englishController,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
          ),
          Container(
            width: 250,
            child: TextField(
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
                //TODO: 버튼을 누르면 디비에 입력한 단어가 전송 및 저장
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
}
