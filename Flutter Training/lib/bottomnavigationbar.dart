import 'package:flutter/material.dart';
import 'package:tt/test_design/bkash.dart';

import 'alertdialogclass.dart';
import 'bloghomepage.dart';
import 'drawer_class.dart';

class BottomNavigationBarClass extends StatefulWidget {
  const BottomNavigationBarClass({Key? key}) : super(key: key);

  @override
  _BottomNavigationBarClassState createState() => _BottomNavigationBarClassState();
}

class _BottomNavigationBarClassState extends State<BottomNavigationBarClass> {

  var _curIndex = 1;
  List _curPage = [
    DrawerClass(),
    BlogHomePage(),
    AlertDialogClass(),
  ];

  List backColor = [
    Colors.red,
    Colors.greenAccent,
    Colors.amber
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation Bar"),
        centerTitle: true,
        backgroundColor: backColor[_curIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _curIndex,
          onTap: (int index){
          setState(() {
            _curIndex = index;
          });
          },
          backgroundColor: backColor[_curIndex],
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.black,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Colors.red,
                icon: Icon(Icons.account_circle),
              label: "About",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings",
            ),
          ]
      ),
      body: _curPage[_curIndex],
    );
  }
}

