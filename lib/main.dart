 import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('تطابق صورة'),
        backgroundColor: Colors.indigo[800],
      ),
      body: const ImagePage(),
    ),
  ));
}

class ImagePage extends StatefulWidget {
  const ImagePage({super.key});

  @override
  _ImagePageState createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  int leftImageNumber = 1;
  int rightImageNumber = 2;

  void changeImage() {
    leftImageNumber = Random().nextInt(4) + 1;
    rightImageNumber = Random().nextInt(4) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          leftImageNumber == rightImageNumber
              ? 'مبروك لقد نجحت'
              : 'حاول مرة أخرى',
          style: const TextStyle(
            fontSize: 42.0,
            color: Color.fromARGB(255, 33, 243, 107),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      changeImage();
                    });
                  },
                  child: Image.asset('images/sh$leftImageNumber.png'),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      changeImage();
                    });
                  },
                  child: Image.asset('images/sh$rightImageNumber.png'),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
} 
 
 