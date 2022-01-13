import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesClass extends StatefulWidget {
  const SharedPreferencesClass({Key? key}) : super(key: key);

  @override
  _SharedPreferencesClassState createState() => _SharedPreferencesClassState();
}

class _SharedPreferencesClassState extends State<SharedPreferencesClass> {

  int counter = 0;

  SharedPreferences? prefs;

  _increment() async {
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      counter++;
    });
    await prefs!.setInt("counter", counter);
  }

  _decrement() async {
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      counter--;
    });
    await prefs!.setInt("counter", counter);
  }

  _initShared() async {
    prefs = await SharedPreferences.getInstance();
    setState(() {
      counter = (prefs!.getInt("counter")??0);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _initShared();
    // _increment();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared Peferences"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
        children: [
          Text('${counter}', style: TextStyle(fontSize: 60),),
          SizedBox(height: 10,),
          RaisedButton(
              onPressed: _increment,
            child: Column(
              children: [
                Text("Increment"),
                Text("Button"),
              ],
            ),
          ),
          SizedBox(height: 10,),
          RaisedButton(
            onPressed: _decrement,
            child: Text("Decrement"),
          ),
        ],
    ),
    ),
    );
  }
}
