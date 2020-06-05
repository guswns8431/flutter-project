import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirebaseDemoScreen(),
    );
  }
}

class FirebaseDemoScreen extends StatelessWidget {

  final databaseReference = FirebaseDatabase.instance.reference();

  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold(
        appBar: AppBar(
            title: Text('Firebase Connect'),
            ),
        body: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[

                  RaisedButton(
                      child: Text('Create Record'),
                      onPressed: () {
                        createRecord();
                      },
                  ),

                  RaisedButton(
                      child: Text('View Record'),
                      onPressed: () {
                        getData();
                      },
                  ),
                  RaisedButton(
                      child: Text('Udate Record'),
                      onPressed: () {
                        updateData();
                      },
                  ),
                  RaisedButton(
                      child: Text('Delete Record'),
                      onPressed: () {
                        deleteData();
                      },
                  ),
                ],
            )
        ), //center
    );
  }

  void createRecord(){
    databaseReference.child("1").set({
      'title': 'Mastering EJB',
      'description': 'Programming Guide for J2EE'
    });
    databaseReference.child("2").set({
      'title': 'Flutter in Action',
      'description': 'Complete Programming Guide to learn Flutter'
    });
  }
  void getData(){
    databaseReference.once().then((DataSnapshot snapshot) {
      print('Data : ${snapshot.value}');
    });
  }

  void updateData(){
    databaseReference.child('1').update({
      'description': 'J2EE complete Reference'
    });
  }

  void deleteData(){
    databaseReference.child('1').remove();
  }
}