import 'package:flutter/material.dart';
import 'package:flutter_project_wordbook/add-page.dart';
import 'package:flutter_project_wordbook/home-page.dart';
import 'package:flutter_project_wordbook/incorrect-note-page.dart';
import 'package:flutter_project_wordbook/quiz-page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.red,
        primarySwatch: Colors.blue,
        accentColor: Colors.black,
      ),
      home: IncorrectNote(),
      routes: {
        'incorrectNote': (context) => IncorrectNote(),
        'home': (context) => HomePage(),
        'add': (context) => AddPage(),
        'quiz': (context) => QuizPage(),
      },
    );
  }
}
