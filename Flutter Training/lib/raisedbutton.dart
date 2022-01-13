import 'package:flutter/material.dart';
import 'package:tt/stackclass.dart';

class RaisedButtonClass extends StatefulWidget {
  const RaisedButtonClass({Key? key}) : super(key: key);

  @override
  _RaisedButtonClassState createState() => _RaisedButtonClassState();
}

class _RaisedButtonClassState extends State<RaisedButtonClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Raised Button"),
        centerTitle: true,
      ),

      body: Center(
        child: RaisedButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => const StackClass()));
            },
            color: Colors.red,
            child: const Text("Click Here", style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}
