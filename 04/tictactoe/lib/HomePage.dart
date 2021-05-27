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

  void resetGame() {
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

  playGame(int id) {
    if (this.a1[id] == 'empty') {
      setState(() {
        if (this.isCross) {
          this.a1[id] = 'cross';
        } else {
          this.a1[id] = 'circle';
        }
        this.isCross = !this.isCross;
        this.checkWin();
      });
    }
  }

  AssetImage getImage(String v) {
    switch (v) {
      case 'empty':
        return this.edit;
      case 'cross':
        return this.cross;
      case 'circle':
        return this.circle;
    }
    return this.edit;
  }

  void checkWin() {
    var a1 = this.a1;
    if ((a1[0] != 'empty') && (a1[0] == a1[1]) && (a1[1] == a1[2])) {
      setState(() {
        this.msg = '${this.a1[0]} wins';
      });
    } else if ((a1[3] != 'empty') && (a1[3] == a1[4]) && (a1[4] == a1[5])) {
      setState(() {
        this.msg = '${this.a1[3]} wins';
      });
    } else if ((a1[6] != 'empty') && (a1[6] == a1[7]) && (a1[7] == a1[8])) {
      setState(() {
        this.msg = '${this.a1[6]} wins';
      });
    } else if ((a1[0] != 'empty') && (a1[0] == a1[3]) && (a1[3] == a1[6])) {
      setState(() {
        this.msg = '${this.a1[0]} wins';
      });
    } else if ((a1[1] != 'empty') && (a1[1] == a1[4]) && (a1[4] == a1[77])) {
      setState(() {
        this.msg = '${this.a1[1]} wins';
      });
    } else if ((a1[2] != 'empty') && (a1[2] == a1[5]) && (a1[5] == a1[8])) {
      setState(() {
        this.msg = '${this.a1[2]} wins';
      });
    } else if ((a1[0] != 'empty') && (a1[0] == a1[4]) && (a1[4] == a1[8])) {
      setState(() {
        this.msg = '${this.a1[0]} wins';
      });
    } else if ((a1[2] != 'empty') && (a1[2] == a1[4]) && (a1[4] == a1[6])) {
      setState(() {
        this.msg = '${this.a1[2]} wins';
      });
    } else if (!a1.contains('empty')) {
      setState(() {
        this.msg = 'Game Draw';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tic Tac Toe App',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(20),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
              itemCount: 9,
              itemBuilder: (context, i) => SizedBox(
                width: 100,
                height: 100,
                child: TextButton(
                  onPressed: () {
                    this.playGame(i);
                  },
                  child: Image(
                    image: this.getImage(this.a1[i]),
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              this.msg,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          TextButton(
            onPressed: () {
              this.resetGame();
            },
            style: TextButton.styleFrom(
                minimumSize: Size(300, 50), backgroundColor: Colors.purple),
            child: Text(
              'Reset Game',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Made by Sanjay',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
