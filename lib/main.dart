import 'package:flutter/material.dart';
import 'package:toy/MyAnimatedContainer.dart';
import 'package:toy/MyAnimatedOpacity.dart';
import 'package:toy/MyDrawer.dart';
import 'package:toy/MyFormValidation.dart';
import 'package:toy/MyOrientation.dart';
import 'package:toy/MySnackBar.dart';
import 'package:toy/MySwipeToDismiss.dart';
import 'package:toy/MyTabController.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.blue,
        accentColor: Colors.yellow,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Tutorial'),
        ),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text('AnimatedContainer'),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => MyAnimatedContainer()));
          },
        ),
        ListTile(
          title: Text('AnimatedOpacity'),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => MyAnimatedOpacity()));
          },
        ),
        ListTile(
          title: Text('Drawer'),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => MyDrawer()));
          },
        ),
        ListTile(
          title: Text('SnackBar'),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => MySnackBar()));
          },
        ),
        ListTile(
          title: Text('OrientationBuilder'),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => MyOrientation()));
          },
        ),
        ListTile(
          title: Text('TabController'),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => MyTabController()));
          },
        ),
        ListTile(
          title: Text('FormValidation'),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => MyFormValidation()));
          },
        ),
        ListTile(
          title: Text('Dismissible'),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => MySwipeToDismiss()));
          },
        ),
      ],
    );
  }
}
