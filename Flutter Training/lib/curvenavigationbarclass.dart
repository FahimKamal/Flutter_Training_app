import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class CurveNavigationBarClass extends StatefulWidget {
  const CurveNavigationBarClass({Key? key}) : super(key: key);

  @override
  _CurveNavigationBarClassState createState() =>
      _CurveNavigationBarClassState();
}

class _CurveNavigationBarClassState extends State<CurveNavigationBarClass> {
  int _curPage = 0;
  List _pages = ['Home', 'Camera', 'Menu'];

  GlobalKey<CurvedNavigationBarState> _globalNavKey = GlobalKey();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Curve NavBar" + " " + _pages[_curPage]),
        centerTitle: true,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.red,
        backgroundColor: Colors.green,
        buttonBackgroundColor: Colors.yellow,
        animationDuration: Duration(milliseconds: 800),
        animationCurve: Curves.bounceOut,
        key: _globalNavKey,
        index: _curPage,
        onTap: (index) {
          setState(() {
            _curPage = index;
          });
        },
        items: [
          Icon(Icons.home),
          Icon(Icons.camera),
          Icon(Icons.menu),
        ],
      ),
      body: Center(
        child: Text(
          _pages[_curPage],
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
