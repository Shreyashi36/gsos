import 'package:flutter/material.dart';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:wsos/screens/new.dart';
import 'package:wsos/screens/signup_screen.dart';
import 'package:wsos/screens/splash_screen.dart';
import 'package:wsos/screens/welcome_page.dart';

import 'home.dart';

class Mylogin extends StatefulWidget {
  const Mylogin({Key? key}) : super(key: key);

  @override
  State<Mylogin> createState() => _MyloginState();
}

class _MyloginState extends State<Mylogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("images/picture4.png"), fit: BoxFit.cover),
          ),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 30,
                    child: Text(
                      "",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff4d4141),
                        fontSize: 0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 0),
                    child: 
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context) => New()
                        //Navigator.pushReplacement(context, MaterialPageRoute(
     // builder: (context) => Mylogin()
    ));
                      },
                      child: Text(
                        "Back",
                        style: TextStyle(
                           // decoration: TextDecoration.underline,
                            fontSize: 18,
                            color: Color.fromARGB(255, 0, 0, 0)),
                          
                      ),
                      
                    ),
                  )
                ]),
            //background(),
           // backarrow(),
            getLogo(),
            const SizedBox(
              height: 60,
            ),
            const SizedBox(
              width: 281,
              child: Text(
                "Login",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xff4d4141),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35, right: 35),
              child: TextField(
                decoration: InputDecoration(
                    labelText: 'Email/Phone Number',
                    hintText: 'abc@gmail.com/98323xxxxx',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35, right: 35),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'abc*332=4',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 0),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Forgot Password",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 15,
                      color: Colors.blue[900]),
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
                  child: Text('LOG IN'),
                  onPressed: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context) => home()
                 // onPressed: () => Fluttertoast.showToast(
                   //   msg: 'You will be logged in',
                     // backgroundColor: const Color(0xfffd7d96),
                     // textColor: Colors.white,
                     // fontSize: 28
                     ));
                  },
                  
            ),),
            
            
            
            
            Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 281,
                    child: Text(
                      "Haven't registerd yet?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff4d4141),
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 0),
                    child: 
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context) => SignUp()
                        //Navigator.pushReplacement(context, MaterialPageRoute(
     // builder: (context) => Mylogin()
    ));
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 18,
                            color: Colors.blue[900]),
                          
                      ),
                      
                    ),
                  )
                ])
          ],
        ),
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

//Widget background() {
  //AssetImage assetImage = const AssetImage('images/picture.png');
  //Image image = Image(
    //image: assetImage,
    //width: 390,
    //height: 844,
  //);
  //return Container(child: image, margin: EdgeInsets.all(30.0));
//}
Widget backarrow() {
  return Scaffold(
    body: Center(
      child: Container(
        width: 400,
        height: 700,
        color: Colors.grey,
        child: Stack(
          children: [Container(
            width: 200,
            height: 200,
            color: Colors.red,
          )],
        ),
      ) ),
  );
}
