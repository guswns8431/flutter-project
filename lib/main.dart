import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

void main () async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
 runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: ThemeData (
  brightness: Brightness.light,
  primaryColor: Colors.blue, colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.orange),
),
home: const MyApp(),
));

}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List todos = [];
  String input = "";

  createTodos() {
    DocumentReference documentReference = FirebaseFirestore.instance.collection("MyTodos").doc(input);

    Map<String, String> todos = {
      "todoTitle":input
    };

    documentReference.set(todos).whenComplete(() {
      print("$input created");
    });
  }

  deleteTodos(item) {
        DocumentReference documentReference = FirebaseFirestore.instance.collection("MyTodos").doc(item);

    documentReference.delete().whenComplete(() {
      print("$item deleted");
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("mytodos"),),
      floatingActionButton: FloatingActionButton(onPressed: () {
        showDialog(context: context, builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Add Todolist"),
            content: TextField(onChanged: (String value){
              input = value;
            },
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                createTodos();
                Navigator.of(context).pop();
              },
              child: Text("Add"))
          ],
          );
        });
      }),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection("MyTodos").snapshots(),
        builder: (context, AsyncSnapshot snapshots) {
           if(snapshots.data == null) return CircularProgressIndicator();
          return ListView.builder(
            shrinkWrap: true,
        itemCount: snapshots.data?.docs.length,
        itemBuilder: (context, index){
          DocumentSnapshot documentSnapshot = snapshots.data.docs[index];
          return Dismissible(
            onDismissed: (direction) {
              deleteTodos(documentSnapshot["todoTitle"]);
            },
            key: Key(documentSnapshot["todoTitle"]),
          child: Card(
            elevation: 4,
            margin: EdgeInsets.all(8),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            child: ListTile(
              title: Text(documentSnapshot["todoTitle"]),
              trailing: IconButton(icon: Icon(Icons.delete, color: Colors.red,),
              onPressed: (() {
                deleteTodos(documentSnapshot["todoTitle"]);
              }),),),
          ));
        });
        },
      ),
    );
  }
}
