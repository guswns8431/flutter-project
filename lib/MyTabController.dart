import 'package:flutter/material.dart';

class MyTabController extends StatefulWidget {

  @override
  _MyTabControllerState createState() => _MyTabControllerState();
}

class _MyTabControllerState extends State<MyTabController> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        child: Scaffold(
        appBar: AppBar(
          title: Text('TabController'),
          bottom: TabBar(tabs: [
            Tab(icon: Icon(Icons.access_alarm),text: 'Tab1',),
            // Icon(Icons.access_alarm),
            Text('Tab2'),
            Text('Tab3')
          ],),
        ),
        body: TabBarView(
          children: <Widget>[
            Icon(Icons.access_alarm),
            Center(child: Text('tab2')),
            Center(child: Text('tab3')),
          ],
        ),
      ),
      length: 3,
    );
  }
}