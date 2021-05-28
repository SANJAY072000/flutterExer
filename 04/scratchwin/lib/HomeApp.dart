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
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Scratch Win App',
        style: TextStyle(color: Colors.white),
      )),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5,
                    childAspectRatio: 1,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                itemCount: 25,
                itemBuilder: (context, i) => SizedBox(
                      width: 100,
                      height: 100,
                      child: TextButton(
                        onPressed: () {
                          this.playGame(i);
                        },
                        child: Image(
                          image: this.getImg(i),
                        ),
                      ),
                    )),
          ),
          Container(
            margin: EdgeInsets.all(15),
            child: TextButton(
              onPressed: () {
                this.showAll();
              },
              child: Text(
                'Show All',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              style: TextButton.styleFrom(
                  backgroundColor: Colors.pink,
                  padding: EdgeInsets.all(20),
                  minimumSize: Size(100, 50)),
            ),
          ),
          Container(
            margin: EdgeInsets.all(15),
            child: TextButton(
              onPressed: () {
                this.reset();
              },
              child: Text(
                'Reset Game',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
              style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  padding: EdgeInsets.all(20),
                  minimumSize: Size(100, 50)),
            ),
          )
        ],
      ),
    );
  }
}
