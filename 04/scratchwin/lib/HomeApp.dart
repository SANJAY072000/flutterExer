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
