import 'dart:collection';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Odoo Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Odoo Demo Home Page'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: getListView(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }

  ListView getListView() => ListView.builder(
      itemCount: list.length,
      itemBuilder: (BuildContext context, int position) {
        return getRow(position);
      });

  Widget getRow(int i) {
    return GestureDetector(
      // When the child is tapped, show a snackbar
      onTap: () {},
      // Our Custom Button!
      child: new Container(
        // color: Colors.blue,
        padding: const EdgeInsets.all(10.0),
        width: 380.0,
        height: 300.0,
        child: Card(
          child: Container(
              child: new Row(children: [
            new Column(children: [
              new Image.asset('assets/images/placeholder.jpg',
                  width: 383.0, height: 150.0, fit: BoxFit.cover),
            ]),
          ])),
        ),
      ),
    );
  }


  List<HashMap<String, String>> list;
  bool flagProgress = true;

}
