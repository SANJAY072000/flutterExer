import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isCross = true;
  String msg = '';
  List<String> a1 = [];
  AssetImage cross = AssetImage('images/cross.png');
  AssetImage circle = AssetImage('images/circle.png');
  AssetImage edit = AssetImage('images/edit.png');

  @override
  void initState() {
    super.initState();
    setState(() {
      this.a1 = [
        'empty',
        'empty',
        'empty',
        'empty',
        'empty',
        'empty',
        'empty',
        'empty',
        'empty'
      ];
      this.msg = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
