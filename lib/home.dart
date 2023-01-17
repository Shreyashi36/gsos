import 'package:flutter/material.dart';
import 'package:wsos/screens/add_your_details.dart';
import 'package:wsos/screens/new.dart';
import 'package:wsos/screens/splash_screen.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _AboutWsosState();
}

class _AboutWsosState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(children: [
            const SizedBox(
              height: 10,
            ),
            Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 10,
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
            getLogo(),
            getImg(),
            const SizedBox(
              // width: 352,
              // height: 100,
              child: Text(
                "WSOS is an application that informs users of their location's safety status. Also with the help of features in this app such as live location and audio, you can track people during potentially dangerous situations. Know more About us here.",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(312, 42),
                    textStyle: TextStyle(fontSize: 24),
                    primary: Color(0xfffd7d96),
                    onPrimary: Colors.white,
                  ),
                  child: Text('About Us'),
                  onPressed: () {}),
            ),
            
            Padding(
              padding: const EdgeInsets.all(20),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(312, 42),
                    textStyle: TextStyle(fontSize: 23),
                    primary: Color(0xfffd7d96),
                    onPrimary: Colors.white,
                  ),
                  child: Text('Add/Edit Your Details Here'),
                  onPressed: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context) => AddYourDetails()
                        ));
                  }),
            )
          ]),
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

Widget getImg() {
  AssetImage assetImage = const AssetImage('images/about.png');
  Image image = Image(
    image: assetImage,
    width: 354.54,
    height: 300.0,
  );
  return Container(child: image, margin: EdgeInsets.all(20.0));
}
