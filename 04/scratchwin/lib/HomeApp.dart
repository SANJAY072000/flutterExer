import 'package:flutter/material.dart';
import 'dart:math';

class HomeApp extends StatefulWidget {
  @override
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  // AssetImage circle = AssetImage('images/circle.png');
  // AssetImage rupee = AssetImage('images/rupee.png');
  // AssetImage sadFace = AssetImage('images/sadFace.png');

  late List<String> a1;
  late int luck;
  late AssetImage circle, rupee, sadFace;

  @override
  void initState() {
    super.initState();
    setState(() {
      this.circle = AssetImage('images/circle.png');
      this.rupee = AssetImage('images/rupee.png');
      this.sadFace = AssetImage('images/sadFace.png');
      this.a1 = List.filled(25, 'empty');
      this.luck = this.genNum();
    });
  }

  int genNum() => Random().nextInt(25);

  AssetImage getImg(id) {
    String s = this.a1[id];
    switch (s) {
      case 'lucky':
        return this.rupee;
      case 'unlucky':
        return this.sadFace;
    }
    return this.circle;
  }

  void playGame(id) {
    if (this.luck == id) {
      setState(() {
        this.a1[id] = 'lucky';
      });
    } else {
      setState(() {
        this.a1[id] = 'unlucky';
      });
    }
  }

  void showAll() {
    setState(() {
      this.a1 = List.filled(25, 'unlucky');
      this.a1[this.luck] = 'lucky';
    });
  }

  void reset() {
    setState(() {
      this.a1 = List.filled(25, 'empty');
      this.luck = this.genNum();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
