import 'dart:html';

import 'package:flutter/material.dart';

class welcome_page extends StatefulWidget {
  @override
  State<StatefulWidget> createstate() {
    return _welcome_page();
  }
  
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
 
}

class _welcome_page extends State<welcome_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WSOS"),
      ),
      body: Container(
        child: Column(
          children: [

            getImg(),
          ],
        ),
      ),
    );
  }
}

Widget getImg() {
  AssetImage assetImage = AssetImage('res/svg/cycle_rider1.svg');
  Image image = Image(
    image: assetImage,
    width: 125.0,
    height: 125.0,
  );
  return Container(
    child: image,
  );
}
