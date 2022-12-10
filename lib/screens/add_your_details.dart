import 'dart:html';

import 'package:flutter/material.dart';

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


      child: Column(
        
        children: [
          getLogo(),
          // HEADING
          const SizedBox(
            width: 357,
            height: 73,
            child: Text(
              "Add Your Details",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
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
              onPressed: () {},
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
                Navigator.pushNamed(context, 'emergency_contacts');
              },
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
              onPressed: () {},
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
              onPressed: () {},
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
              onPressed: () {},
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
  AssetImage assetImage = const AssetImage('res/images/logo.png');
  Image image = Image(
    image: assetImage,
    width: 120.0,
    height: 33.23,
  );
  return Container(child: image, margin: EdgeInsets.all(30.0));
}
