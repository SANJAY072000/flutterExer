import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bg Changer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Bg Changer'),
        ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var c = [
    Colors.amber,
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.pink,
    Colors.orange,
  ];
  var a = Colors.white;

  void bgch() {
    var r = Random().nextInt(c.length);
    setState(() {
      a = c[r];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: a,
      child: Center(
          child: TextButton(
        onPressed: bgch,
        child: Text(
          'Change Color',
          style: TextStyle(color: Colors.white),
        ),
        style: TextButton.styleFrom(
            minimumSize: Size(120, 50),
            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            backgroundColor: Colors.black),
      )),
    );
  }
}
