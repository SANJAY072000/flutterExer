import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AssetImage i1 = AssetImage('images/one.png');
  AssetImage i2 = AssetImage('images/two.png');
  AssetImage i3 = AssetImage('images/three.png');
  AssetImage i4 = AssetImage('images/four.png');
  AssetImage i5 = AssetImage('images/five.png');
  AssetImage i6 = AssetImage('images/six.png');
  AssetImage a = AssetImage('images/one.png');

  // @override
  // void initState() {
  //   super.initState();

  //   setState(() {
  //      a = i1;
  //   });
  // }

  void roll() {
    var r = (Random().nextInt(6)) + 1;
    AssetImage a1 = i1;
    switch (r) {
      case 1:
        a1 = i1;
        break;
      case 2:
        a1 = i2;
        break;
      case 3:
        a1 = i3;
        break;
      case 4:
        a1 = i4;
        break;
      case 5:
        a1 = i5;
        break;
      case 6:
        a1 = i6;
        break;
    }
    setState(() {
      a = a1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dice Roller'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: a,
                width: 200,
                height: 200,
              ),
              Container(
                margin: EdgeInsets.only(top: 100),
                child: TextButton(
                  onPressed: roll,
                  child: Text(
                    'Roll Dice',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: TextButton.styleFrom(
                      minimumSize: Size(100, 50),
                      backgroundColor: Colors.black),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
