import 'dart:js';

import 'package:flutter/material.dart';
import 'package:gsos/screens/about.dart';
import 'package:gsos/screens/sign_up.dart';
// import 'package:gsos/screens/welcome_page.dart';
import './screens/home.dart';
import './screens/login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title:"WSOS",
    color: Colors.pink[200],
    home: WelcomePage(),
    routes: {
    'login': (context) => Mylogin(),
    'signup':(context) => SignUp(),
    'about':(context) => AboutWsos(),
    }
  ));
}
