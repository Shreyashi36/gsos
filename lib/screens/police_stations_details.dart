import 'package:flutter/material.dart';
import 'package:wsos/Police_Station_1.dart';
import 'package:wsos/Police_Station_2.dart';
import 'package:wsos/Police_Station_3.dart';
import 'package:wsos/screens/add_your_details.dart';
import 'package:wsos/screens/contact_1.dart';
import 'package:wsos/screens/contact_2.dart';
import 'package:wsos/screens/contact_3.dart';
import 'package:wsos/screens/contact_4.dart';

//import 'contact_1.dart';
//import 'contact_2.dart';

class Nearby_police_station_List extends StatefulWidget {
  const Nearby_police_station_List({Key? key}) : super(key: key);

  @override
  State<Nearby_police_station_List> createState() => _Nearby_police_station_List();
}

class _Nearby_police_station_List extends State<Nearby_police_station_List> {
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
                    width: 20,
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
      builder: (context) => AddYourDetails()
                        
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
            width: 357,
            height: 73,
            child: Text(
              "Add / Edit Nearby Police Station Details here",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontFamily: "Inter",
                fontWeight: FontWeight.w700,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(312, 42),
                textStyle: TextStyle(fontSize: 28),
                primary: Color(0xfffd7d96),
                onPrimary: Colors.white,
              ),
              onPressed: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context) => Police_Station_1(),
                        )); },
              child: const Text(
                "Police Station - 1",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xff1e1e1e),
                  fontSize: 18,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
           Padding(
            padding: const EdgeInsets.all(20),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(312, 42),
                textStyle: TextStyle(fontSize: 28),
                primary: Color(0xfffd7d96),
                onPrimary: Colors.white,
              ),
              onPressed: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context) => Police_Station_2(),
                        )); },
              child: const Text(
                "Police Station - 2",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xff1e1e1e),
                  fontSize: 18,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
           Padding(
            padding: const EdgeInsets.all(20),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(312, 42),
                textStyle: TextStyle(fontSize: 28),
                primary: Color(0xfffd7d96),
                onPrimary: Colors.white,
              ),
              onPressed: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context) => Police_Station_3(),
                        )); },
              child: const Text(
                "Police Station - 3",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xff1e1e1e),
                  fontSize: 18,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
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
