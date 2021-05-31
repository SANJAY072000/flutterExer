import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'NumberAudio.dart';
import 'package:audioplayers/audioplayers.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AudioCache ap = AudioCache();
  AssetImage a = AssetImage('images/logo.png');
  List<NumberAudio> nl = [
    NumberAudio('one.wav', Colors.red, 'One'),
    NumberAudio('two.wav', Colors.blue, 'Two'),
    NumberAudio('three.wav', Colors.green, 'Three'),
    NumberAudio('four.wav', Colors.pink, 'Four'),
    NumberAudio('five.wav', Colors.brown, 'Five'),
    NumberAudio('six.wav', Colors.blueGrey, 'Six'),
    NumberAudio('seven.wav', Colors.teal, 'Seven'),
    NumberAudio('eight.wav', Colors.grey, 'Eight'),
    NumberAudio('nine.wav', Colors.orange, 'Nine'),
    NumberAudio('ten.wav', Colors.purple, 'Ten'),
  ];

  play(uri) {
    this.ap.play(uri);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Spanish Number App'),
      ),
      body: Container(
        child: Column(
          children: [
            Image(
              image: this.a,
            ),
            Expanded(
                child: GridView.builder(
                    padding: EdgeInsets.all(10),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10),
                    itemCount: 10,
                    itemBuilder: (context, i) => SizedBox(
                          width: 100,
                          height: 50,
                          child: TextButton(
                            child: Text(
                              this.nl[i].bxt,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            onPressed: () {
                              this.play(nl[i].auri);
                            },
                            style: TextButton.styleFrom(
                                backgroundColor: this.nl[i].btncolor),
                          ),
                        )))
          ],
        ),
      ),
    );
  }
}
