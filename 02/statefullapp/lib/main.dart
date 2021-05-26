import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyButton(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyButton extends StatefulWidget {
  @override
  MyButtonState createState() {
    return MyButtonState();
  }
}

class MyButtonState extends State<MyButton> {
  int c = 0;
  var a1 = ['o', 'tw', 'th', 'fo', 'fv'];
  String a = 'Numbers';

  void disp() {
    setState(() {
      if (c > 4) c = 0;
      a = a1[c++];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: disp,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      appBar: AppBar(
        title: Text('Numbers Game'),
        backgroundColor: Colors.orange,
      ),
      body: Container(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              a,
              style: TextStyle(fontSize: 30.0),
            ),
            Text(
              '${c}',
              style: TextStyle(fontSize: 30.0),
            ),
            Padding(padding: EdgeInsets.all(20)),
            TextButton(
              onPressed: disp,
              child: Text(
                'TextButton',
                style: TextStyle(color: Colors.white),
              ),
              style: TextButton.styleFrom(
                backgroundColor: Colors.green,
                padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                minimumSize: Size(100, 50),
              ),
            )
          ],
        ),
      )),
    );
  }
}
