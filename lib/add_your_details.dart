import 'dart:html';

import 'package:flutter/material.dart';
import 'package:wsos/Edit_Your_address.dart';
import 'package:wsos/police_stations_details.dart';
import 'package:wsos/screens/SOS_message.dart';
import 'package:wsos/screens/SOS_pin.dart';
import 'package:wsos/screens/emergency_contact_list.dart';
import 'package:wsos/screens/home.dart';

class AddYourDetails extends StatefulWidget {
  const AddYourDetails({Key? key}) : super(key: key);

  @override
  State<AddYourDetails> createState() => _EmergencyContactListState();
}

class _EmergencyContactListState extends State<AddYourDetails> {
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
      builder: (context) => home()
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
          // HEADING
          const SizedBox(
            width: 357,
            height: 73,
            child: Text(
              "Add / Edit Your Details",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: "Inter",
                fontWeight: FontWeight.w700,
              ),
            ),
          ),

// YOUR ADDRESS
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
      builder: (context) =>  Your_address(),
                      ));
                    },
              child: const Text(
                "Your Address",
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

// YOUR EMERGENCY CONTACTS

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
      builder: (context) => EmergencyContactList()
            ));},
              child: const Text(
                "Your Emergency Contacts",
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

//SOS PIN

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
      builder: (context) => SOS_pin()
      ));},
              child: const Text(
                "SOS Pin",
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

// NEARBY POLICE STATION

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
      builder: (context) => Nearby_police_station_List()
      ));},
              child: const Text(
                "Nearby Police Station",
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

//SOS MESSAGE

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
      builder: (context) => SOS_Message()
      ));},
              child: const Text(
                "SOS Message",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xff1e1e1e),
                  fontSize: 18,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          )
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
