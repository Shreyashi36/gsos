import 'package:flutter/material.dart';

class AboutWsos extends StatefulWidget {
  const AboutWsos({Key? key}) : super(key: key);

  @override
  State<AboutWsos> createState() => _AboutWsosState();
}

class _AboutWsosState extends State<AboutWsos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(children: [
          getLogo(),

          getImg(),

          const SizedBox(
            width: 352,
            height: 100,
            child: Text(
              "WSOS is an application that informs users of their location's safety status. Also with the help of features in this app such as live location and audio, you can track people during potentially dangerous situations. Know more About us here",
              style: TextStyle(
                fontSize: 18,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
           SizedBox(
            height: 20,
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
                child: Text('About Us'),
                onPressed: () {}),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(50),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(312, 42),
                  textStyle: TextStyle(fontSize: 20),
                  primary: Color(0xfffd7d96),
                  onPrimary: Colors.white,
                ),
                child: Text('Add/Edit your Details here'),
                onPressed: () {}),
          )
        ]),
      ),
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

Widget getImg() {
  AssetImage assetImage = const AssetImage('res/images/about.png');
  Image image = Image(
    image: assetImage,
    width: 354.54,
    height: 300.0,
  );
  return Container(child: image, margin: EdgeInsets.all(30.0));
}
