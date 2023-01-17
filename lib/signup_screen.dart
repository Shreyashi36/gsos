import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:wsos/screens/login_screen.dart';
import 'package:wsos/screens/splash_screen.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
      builder: (context) => Mylogin()
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
              getLogo(),
        
              const SizedBox(
          height: 30,
              ),
        
              const SizedBox(
          width: 281,
          child: Text(
            "Sign Up",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color(0xff4d4141),
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
              ),
              const SizedBox(
          height: 20,
              ),
        
              // REGISTER E-MAIL/PHONE NUMBER
        
              Padding(
          padding: const EdgeInsets.only(left: 35, right: 35),
          child: TextField(
            decoration: InputDecoration(
                labelText: 'First Name',
                hintText: 'Ammy',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
          ),
              ),
              const SizedBox(
          height: 20,
              ),
        
              // ENTER FULL NAME
              Padding(
          padding: const EdgeInsets.only(left: 35, right: 35),
          child: TextField(
            decoration: InputDecoration(
                labelText: 'Last Name',
                hintText: 'Greens',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
          ),
              ),
              const SizedBox(
          height: 20,
              ),
        
              // TYPE THE WORKING PHONE NUMBER
              Padding(
          padding: const EdgeInsets.only(left: 35, right: 35),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
                labelText: 'Phone Number',
                hintText: '94747XXXXX',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
          ),
              ),
              const SizedBox(
          height: 20,
              ),
        
              Padding(
          padding: const EdgeInsets.only(left: 35, right: 35),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
                labelText: 'email address',
                hintText: 'abc@gmail.com',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
          ),
              ),
              const SizedBox(
          height: 20,
              ),
        
              // ENTER A STRONG PASSWORD
              Padding(
          padding: const EdgeInsets.only(left: 35, right: 35),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'abc*332=4',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
          ),
              ),
              const SizedBox(
          height: 20,
              ),
        
              // RE-TYPE  PASSWORD
              Padding(
          padding: const EdgeInsets.only(left: 35, right: 35),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
                labelText: 'Re-Type Password',
                hintText: 'abc*332=4',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
          ),
              ),
              const SizedBox(
          height: 20,
              ),
        
              const SizedBox(
          width: 281,
          child: Text(
            "By Signing up, you agree to our Terms and Conditions and our Privacy Policy. ",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xff4d4141),
              fontSize: 15,
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
              child: Text('Sign Up'),
              onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context) =>  Mylogin(),
                      ));
                    }),
              ),
            ]),
        ));
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
