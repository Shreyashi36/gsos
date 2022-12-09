import 'dart:ui';

import 'package:flutter/material.dart';

class recorder extends StatefulWidget {
  const recorder({Key? key}) : super(key: key);

  @override
  State<recorder> createState() => _recorderState();
}

class _recorderState extends State<recorder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: buildStart()));
  }
}

Widget getLogo() {
  AssetImage assetImage = const AssetImage('res/images/logo.png');
  Image image = Image(
    image: assetImage,
    width: 120.0,
    height: 33.23,
  );
  return Container(child: image, margin: EdgeInsets.all(30.0));
}

Widget buildStart() {
  final isRecording = false;
  final icon = isRecording ? Icons.stop : Icons.mic;
  final text = isRecording ? 'STOP' : 'START';
  final primary = isRecording ? Colors.red : Colors.white;
  final onPrimary = isRecording ? Colors.white: Colors.black;
  

  return ElevatedButton.icon(
    style: ElevatedButton.styleFrom(
      minimumSize: Size(175, 50),
      primary: primary,
      onPrimary: onPrimary,
    ),
    icon: Icon(icon),
    label: Text(
      'START',
      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    ),
    onPressed: () async {},
  );
}
