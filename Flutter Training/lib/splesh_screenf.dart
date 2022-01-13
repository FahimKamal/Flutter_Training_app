import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tt/travel_app/travel_pages/homepage.dart';
import 'package:tt/travel_app/travel_pages/registration_form.dart';

class SpleshScreenClass extends StatefulWidget {
  const SpleshScreenClass({Key? key}) : super(key: key);

  @override
  _SpleshScreenClassState createState() => _SpleshScreenClassState();
}

class _SpleshScreenClassState extends State<SpleshScreenClass> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 3),
        () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => RegistrationForm()))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Center(
        child: Image.asset(
          "images/Profile-pic.jpg",
          height: 300,
          width: 300,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
