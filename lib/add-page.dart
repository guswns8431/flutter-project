import 'package:flutter/material.dart';

class AddPage extends StatefulWidget {
  @override
  _AddPageState createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: <Widget>[
        Text('Addpage'),
        RaisedButton(
          child: Text('완료'),
          onPressed: (){
            Navigator.pushNamed(context, 'home');
          },
        )
      ],)
    );
  }
}
