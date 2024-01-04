import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class WordList extends StatefulWidget {
  @override
  _WordListState createState() => _WordListState();
}

//TODO: 삭제 기능도 만들어야함
class _WordListState extends State<WordList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            height: 500,
            child: StreamBuilder<QuerySnapshot>(
              stream: Firestore.instance.collection('wordbook').snapshots(),
              builder: (BuildContext context,
                  AsyncSnapshot<QuerySnapshot> snapshot) {
                if (snapshot.hasError) return Text('Error: ${snapshot.error}');
                switch (snapshot.connectionState) {
                  case ConnectionState.waiting:
                    return Text('Loading...');
                  default:
                    return ListView(
                      children: snapshot.data.documents
                          .map((DocumentSnapshot document) {
                        return Card(
                          child: InkWell(
                            onTap: () {
                              addIncorrectNote(document.documentID);
                            },
                            child: Container(
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        document['English'],
                                        style: TextStyle(
                                          color: Colors.blueGrey,
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      document['Korean'],
                                      style: TextStyle(color: Colors.black54),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    );
                }
              },
            ),
          ),
          RaisedButton(
            child: Text('홈'),
            onPressed: () {
              Navigator.pushNamed(context, 'home');
            },
          ),
        ],
      ),
    );
  }

  void addIncorrectNote(String documentID) {
    Firestore.instance
        .collection('wordbook')
        .document(documentID)
        .get()
        .then((doc) {
      Firestore.instance
          .collection('incorrect_note')
          .add({'${doc['English']}': '${doc['Korean']}'});
    });
  }
}
