import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
          child: Column(children: [
        getLogo(),

        const SizedBox(
          height: 60,
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
                labelText: 'Email/Phone Number',
                hintText: 'abc@gmail.com/98323xxxxx',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
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
                labelText: 'Full Name',
                hintText: 'Ammy Greens',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
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
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
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
                labelText: 'Full Name',
                hintText: 'Ammy Greens',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
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
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
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
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
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
                Fluttertoast.showToast(
                    msg: 'Signing you up',
                    backgroundColor: const Color(0xfffd7d96),
                    textColor: Colors.white,
                    fontSize: 28);
                Navigator.pushNamed(context, 'about');
              }),
        ),
      ])),
    );
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
