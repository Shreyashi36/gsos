import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:wsos/main.dart';
import 'package:wsos/screens/splash_screen.dart';
import 'package:wsos/screens/welcome_page.dart';
//import 'package:gsos/screens/login.dart';

import 'login_screen.dart';

class New extends StatefulWidget {
  const New({Key? key}) : super(key: key);

  @override
  State<New> createState() => _New();
}

class _New extends State<New> {
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
        
              
        
              Padding(
                padding: const EdgeInsets.all(50),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(312, 42),
                      textStyle: TextStyle(fontSize: 28),
                      primary: Color(0xfffd7d96),
                      onPrimary: Colors.white,
                    ),
                    child: const Text('Login'),
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context) =>  Mylogin(),
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
  AssetImage assetImage = const AssetImage('images/sosbutton.png');
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
    alignment: Alignment.center,
    width: 120.0,
    height: 33.23,
  );
  return Container(child: image, margin: EdgeInsets.all(30.0));
}
