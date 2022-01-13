import 'package:flutter/material.dart';

class TooltioClass extends StatefulWidget {
  const TooltioClass({Key? key}) : super(key: key);

  @override
  _TooltioClassState createState() => _TooltioClassState();
}

class _TooltioClassState extends State<TooltioClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ToolTip"), centerTitle: true,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(10),
          color: Colors.red,
          child: Tooltip(
              message: "Hi! it's a tooltip",
            showDuration: Duration(milliseconds: 4000),
            waitDuration: Duration(milliseconds: 400),
            child: Icon(Icons.account_box, size: 100,),
          ),
        ),
      ),
    );
  }
}
