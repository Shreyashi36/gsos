import 'package:flutter/material.dart';
import 'package:wsos/screens/new.dart';
//import 'package:wsos/screens/signup_screen.dart';

import 'package:wsos/screens/splash_screen.dart';
import 'package:wsos/screens/welcome_page.dart';

void main() {
  runApp(MyApp());
 
}

class MyApp extends StatelessWidget {
   
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
      
    );
  }
}





Widget backarrow() {
  return Scaffold(
    body: Center(
      child: Container(
        
        width: 100,
        height: 100,
        color: Colors.black12,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            Container(
            width: 100,
            height: 200,
            color: Colors.red,
          )],
        ),
      ) ),
  );
}



//import 'dart:html';

//import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';


//class MyApp extends StatelessWidget {
  //@override 
  //Widget build(BuildContext context) {
    //return MaterialApp(
      //home: Scaffold(
        //body: Container(
          //width: double.infinity,
  //        height: double.infinity,
  //        decoration: BoxDecoration(
 //           image: DecorationImage(image: AssetImage("images/picture.png"), fit: BoxFit.cover),
         // ),
          //child: Center(
            //child: Text("Welcome"),
       //     ),
     //       ),
   //         );
        //);
      
    
 // }
//}
