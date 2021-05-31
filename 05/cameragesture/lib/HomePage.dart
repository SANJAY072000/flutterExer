import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'dart:async';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // File _a=;
  // String e = 'No image selected';
  // Future openCamera() async {
  //   final img = await ImagePicker().getImage(source: ImageSource.camera);
  //   setState(() {
  //     if (img != null)
  //       this._a = File(img.path);
  //     else
  //       this.e = 'No image selected';
  //   });
  // }

  // Future openGal() async {
  //   final img = await ImagePicker().getImage(source: ImageSource.gallery);
  //   setState(() {
  //     if (img != null)
  //       this._a = File(img.path);
  //     else
  //       this.e = 'No image selected';
  //   });
  // }

  // Future doo() {
  //   return showDialog(
  //       context: context,
  //       builder: (BuildContext context) {
  //         return AlertDialog(
  //           backgroundColor: Colors.blue,
  //           shape: RoundedRectangleBorder(),
  //           content: SingleChildScrollView(
  //             child: ListBody(
  //               children: [
  //                 GestureDetector(
  //                   onTap: () {
  //                     this.openCamera();
  //                   },
  //                   child: Text(
  //                     'Take a picture',
  //                     style: TextStyle(color: Colors.white, fontSize: 20),
  //                   ),
  //                 ),
  //                 Padding(padding: EdgeInsets.all(10)),
  //                 GestureDetector(
  //                   onTap: () {
  //                     this.openGal();
  //                   },
  //                   child: Text(
  //                     'Select Image from Gallery',
  //                     style: TextStyle(color: Colors.white, fontSize: 20),
  //                   ),
  //                 ),
  //               ],
  //             ),
  //           ),
  //         );
  //       });
  // }
  final picker = ImagePicker();
  File _image = File('');

  Future getImage() async {
    final pickedFile = await this.picker.getImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        this._image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //     appBar: AppBar(
    //       title: Text('Camera App'),
    //     ),
    //     body: Center(
    //       child: this._a == null ? Text(this.e) : Image.file(this._a),
    //     ),
    //     floatingActionButton: FloatingActionButton(
    //       onPressed: () {
    //         this.doo();
    //       },
    //       child: Icon(
    //         Icons.add_a_photo,
    //       ),
    //       tooltip: 'Open Camera',
    //     )
    //     );
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Picker Example'),
      ),
      body: Center(
        child: kIsWeb
            ? Image.network(this._image.path)
            : Image.file(File(this._image.path)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          this.getImage();
        },
        tooltip: 'Pick Image',
        child: Icon(Icons.add_a_photo),
      ),
    );
  }
}
