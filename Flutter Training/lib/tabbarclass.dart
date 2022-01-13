import 'package:flutter/material.dart';
import 'package:tt/alertdialogclass.dart';
import 'package:tt/bloghomepage.dart';
import 'package:tt/stackclass.dart';
import 'package:tt/test_design/bkash.dart';

class TabBarClass extends StatefulWidget {
  const TabBarClass({Key? key}) : super(key: key);

  @override
  _TabBarClassState createState() => _TabBarClassState();
}

class _TabBarClassState extends State<TabBarClass> {
  @override
  Widget build(BuildContext context) {
    return
      DefaultTabController(
          length: 4,
          child: Scaffold(
            appBar: TabBar(
              indicatorColor: Colors.red,
              labelColor: Colors.blue,
              unselectedLabelColor: Colors.black,
              tabs:[
                Tab(
                  text: 'Home',
                  icon: Icon(Icons.home),
                ),
                Tab(
                  text: "Settings",
                  icon: Icon(Icons.settings),
                ),
                Tab(
                  text: 'Home',
                  icon: Icon(Icons.home),
                ),
                // Tab(
                //   // text: "Settings",
                //   icon: Icon(Icons.settings),
                // ),
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Colors.black,
                    )
                  ),
                  child: Text("Home"),
                )
              ]
            ),
            body: TabBarView(
                children:[
                  Bkash(),
                  AlertDialogClass(),
                  StackClass(),
                  BlogHomePage(),
                  // Container(
                  //   color: Colors.red,
                  //   child: Text("red"),
                  // ),
                  // Container(
                  //   color: Colors.blue,
                  //   child: Text("Blue"),
                  // ),
                  // Container(
                  //   color: Colors.green,
                  //   child: Text("Green"),
                  // ),
                  // Container(
                  //   color: Colors.grey,
                  //   child: Text("Grey"),
                  // ),
                ]
            ),
          )
      );
  }
}
