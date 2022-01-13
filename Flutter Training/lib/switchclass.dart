import 'package:flutter/material.dart';

class SwitchClass extends StatefulWidget {
  const SwitchClass({Key? key}) : super(key: key);

  @override
  _SwitchClassState createState() => _SwitchClassState();
}

class _SwitchClassState extends State<SwitchClass> {

  bool isSelect = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Switch"), centerTitle: true,),
      body: Center(
        child: Column(
          children: [
            Switch(
              activeColor: Colors.red,
                activeTrackColor: Colors.yellow,
                inactiveThumbColor: Colors.black,
                inactiveTrackColor: Colors.green,

                value: isSelect,
                onChanged: (bool value){
                  setState(() {
                    isSelect = value;
                  });
                },
            )
          ],
        ),
      ),
    );
  }
}
