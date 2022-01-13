import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AyToastKha extends StatefulWidget {
  const AyToastKha({Key? key}) : super(key: key);

  @override
  _AyToastKhaState createState() => _AyToastKhaState();
}

class _AyToastKhaState extends State<AyToastKha> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ay Baba Toast Kha"), centerTitle: true,),
      body: Center(
        child: RaisedButton(
          child: Text("Toast"),
            onPressed: (){
              Fluttertoast.showToast(
                gravity: ToastGravity.TOP,
                timeInSecForIosWeb: 5,
                  msg: "Ay Baba Toast Kha!!",
              );
            }
        ),
      ),
    );
  }
}
