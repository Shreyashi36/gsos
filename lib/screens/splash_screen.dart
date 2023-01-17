import 'dart:async';
import 'package:flutter/material.dart';
import 'package:wsos/screens/welcome_page.dart';

//import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  @override 
  State<StatefulWidget> createState() => StartState();

}

class StartState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = Duration(seconds: 10);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context) => WelcomePage()
    ));
  }
  @override 
  Widget build(BuildContext context) {
    return initWidget();
  }


  Widget initWidget() {
    AssetImage assetImage = const AssetImage('images/sosbutton.png');
    Image image = Image(
    image: assetImage,
    //width: 120.0,
    //height: 33.23,
    );
    return Scaffold(
      body: Stack(
        children: [
          getLogo(),
          Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 238, 239, 239),
              gradient: LinearGradient(
                colors: [(Color.fromARGB(255, 238, 239, 240)), (Color.fromARGB(255, 247, 248, 249))],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter

                 )
            ),
          ),
          Center(
            child: Container(
              child: image,
            ),
          )
        ],
      ),
    );
  }
}

Widget getLogo() {
  AssetImage assetImage = const AssetImage('images/logo.png');
  Image image = Image(
    image: assetImage,
    width: 120.0,
    height: 33.23,
  );
  return Container(child: image, margin: EdgeInsets.all(30.0));
}