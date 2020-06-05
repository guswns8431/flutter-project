import 'package:flutter/material.dart';

class IncorrectNote extends StatefulWidget {
  @override
  _IncorrectNoteState createState() => _IncorrectNoteState();
}

class _IncorrectNoteState extends State<IncorrectNote> {
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
                width: 200,
                height: 200.0,
                child: Center(
                  child: Text(
                    '오답노트',
                    style: TextStyle(fontSize: 50.0),
                  ),
                )),
            Padding(
              padding: EdgeInsets.all(8.0), //TODO: 이거 const 왜 넣는거지
            ),
            Container(
                width: 250,
                height: 100,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
            ),
            Container(
              height: 50,
              width: 250,
              child: TextFormField(
                controller: myController,
              ),
            ),
            RaisedButton(
              child: Text('제출하기'), //TODO:: 제출을 하고 틀리면 틀렸다고 떠야함
              onPressed: () {
                /*
                이런식으로도 화면 전환 가능
                Navigator.push( 
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );

                */
                Navigator.pushNamed(context, 'home');
              },
            )
          ],
        ),
      ),
    );
  }
}
