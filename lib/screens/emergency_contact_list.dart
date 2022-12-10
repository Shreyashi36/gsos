import 'package:flutter/material.dart';

class EmergencyContactList extends StatefulWidget {
  const EmergencyContactList({Key? key}) : super(key: key);

  @override
  State<EmergencyContactList> createState() => _EmergencyContactListState();
}

class _EmergencyContactListState extends State<EmergencyContactList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Column(
        children: [
          getLogo(),
          const SizedBox(
            width: 357,
            height: 73,
            child: Text(
              "Your emergency contacts",
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
              onPressed: () {},
              child: const Text(
                "Contact No - 1",
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
              onPressed: () {},
              child: const Text(
                "Contact No - 2",
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
              onPressed: () {},
              child: const Text(
                "Contact No - 3",
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
              onPressed: () {},
              child: const Text(
                "Contact No - 4",
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
              onPressed: () {},
              child: const Text(
                "Contact No - 5",
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
