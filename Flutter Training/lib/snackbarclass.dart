import 'package:flutter/material.dart';

class SnackBarClass extends StatefulWidget {
  const SnackBarClass({Key? key}) : super(key: key);

  @override
  _SnackBarClassState createState() => _SnackBarClassState();
}

class _SnackBarClassState extends State<SnackBarClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Snack Bar"), centerTitle: true,),
      body: Center(
        child: Builder(
            builder: (BuildContext ctx){
              return RaisedButton(
                onPressed: (){
                  Scaffold.of(ctx).showSnackBar(
                    SnackBar(
                        content: Text("You have Pocked me!!")
                    )
                  );
                },
                child: Text("Pock Me"),
              );
            }
        ),
      ),
    );
  }
}
