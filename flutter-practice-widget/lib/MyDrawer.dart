import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text("aaaaa"),
              decoration: BoxDecoration(color: Colors.blue),
            ),
            ListTile(
              title: Text('1'),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('2'),
            ),
            ListTile(
              title: Text('3'),
            )
          ],
        )
      ),
      appBar: AppBar(
        title: Text('Drawer'),
      ),
      body: Center(child: Text('drawer예제',)),
    );
  }
}