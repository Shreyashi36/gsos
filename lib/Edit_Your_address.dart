import 'package:flutter/material.dart';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:wsos/screens/add_your_details.dart';
import 'package:wsos/screens/emergency_contact_list.dart';
import 'package:wsos/screens/signup_screen.dart';

//import 'emergency_contact_list.dart';
//import 'home.dart';

class Your_address extends StatefulWidget {
  const Your_address({Key? key}) : super(key: key);

  @override
  State<Your_address> createState() => _Your_address();
}

class _Your_address extends State<Your_address> {
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
            //background(),
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
              height: 30,
            ),
            const SizedBox(
              width: 281,
              child: Text(
                "Add / Edit Your Address here",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xff4d4141),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          //  Padding(
          //    padding: const EdgeInsets.all(50),
          //    child: ElevatedButton(
              //    style: ElevatedButton.styleFrom(
           //         minimumSize: const Size(312, 42),
               //     textStyle: TextStyle(fontSize: 28),
               //     primary: Color(0xfffd7d96),
               //     onPrimary: Colors.white,
               //   ),
               //   child: Text('Contact - 3'),
              //    onPressed: () {},
                  
         //   ),),
            const SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35, right: 35),
              child: TextField(
                decoration: InputDecoration(
                    labelText: 'Flat / House No',
                    hintText: '123',
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
                decoration: InputDecoration(
                    labelText: 'Street Name',
                    hintText: 'xyz Nagar',
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
                decoration: InputDecoration(
                    labelText: 'Locality, City',
                    hintText: 'Gachibowli, Hyderabad',
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
                decoration: InputDecoration(
                    labelText: 'State',
                    hintText: 'Telangana',
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
                decoration: InputDecoration(
                    labelText: 'Pin code',
                    hintText: '5000...',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(50),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(250, 42),
                    textStyle: TextStyle(fontSize: 28),
                    primary: Color(0xfffd7d96),
                    onPrimary: Colors.white,
                  ),
                  child: Text('Save'),
                  onPressed: () {Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context) => AddYourDetails()
              ));},
                  
            ),),

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