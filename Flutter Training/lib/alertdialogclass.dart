import 'package:flutter/material.dart';

class AlertDialogClass extends StatefulWidget {
  const AlertDialogClass({Key? key}) : super(key: key);

  @override
  _AlertDialogClassState createState() => _AlertDialogClassState();
}

class _AlertDialogClassState extends State<AlertDialogClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Dialog"),
        centerTitle: true,
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Use Less Button"),
            onPressed: (){
              showDialog(
                  context: context, 
                  builder: (BuildContext context){
                    return AlertDialog(
                      title: Text("Alert!!"),
                      content: Text("BOSS is coming."),
                      actions: [
                        FlatButton(
                          child: Text("RUN!!"),
                          onPressed: (){
                            Navigator.pop(context);
                          }
                        ),
                        FlatButton(
                            child: Text("DIE!!"),
                            onPressed: (){
                              Navigator.pop(context);
                            }
                        ),
                      ],
                    );
              });
            } 
        ),
      ),
    );
  }

}
