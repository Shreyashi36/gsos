import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:wsos/screens/new.dart';
import 'package:wsos/screens/splash_screen.dart';
//import 'package:gsos/screens/login.dart';

import 'login_screen.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePage();
}

class _WelcomePage extends State<WelcomePage> {
  final double _minimumpadding = 5.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("WSOS"),

      // ),
      
      body: Container(
        margin: EdgeInsets.all(_minimumpadding * 2),
        child: Container(
          child: Column(
            children: [
               //cycle_image
              const SizedBox(
              height: 30,
            ),
            
        
              getLogo(), //Logo

              getImg(),
        
              const SizedBox(
                width: 281,
                child: Text(
                  "Inform your contacts in case of emergency.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xff4d4141),
                    fontSize: 30,
                  ),
                ),
              ),
        
              Padding(
                padding: const EdgeInsets.all(50),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(312, 42),
                      textStyle: TextStyle(fontSize: 28),
                      primary: Color(0xfffd7d96),
                      onPrimary: Colors.white,
                    ),
                    child: const Text('Get Started'),
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context) => New(),
                      ));
                    }
                    //=> Fluttertoast.showToast(
                    //     msg: 'You will be logged in', fontSize: 18)
                    //
                    ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget getImg() {
  AssetImage assetImage = const AssetImage('images/cycle_rider.png');
  Image image = Image(
    image: assetImage,
    width: 354.54,
    height: 300.0,
  );
  return Container(child: image, margin: EdgeInsets.all(30.0));
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
