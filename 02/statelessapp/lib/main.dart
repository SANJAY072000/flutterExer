import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.green, accentColor: Colors.orange),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: Column(
            children: [
              Text('I am text1'),
              Text('I am text2'),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.orange,
                  textStyle: const TextStyle(fontSize: 20),
                ),
                onPressed: () {},
                child: Text('Press'),
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.add_a_photo,
          ),
        ),
      ),
    );
  }
}
