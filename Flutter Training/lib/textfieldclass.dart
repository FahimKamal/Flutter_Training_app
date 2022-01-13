import 'package:flutter/material.dart';
import 'package:tt/raisedbutton.dart';

class TextFieldClass extends StatefulWidget {
  const TextFieldClass({Key? key}) : super(key: key);

  @override
  _TextFieldClassState createState() => _TextFieldClassState();
}

class _TextFieldClassState extends State<TextFieldClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TextField"),
        centerTitle: true,
      ),

      // floatingActionButton: FloatingActionButton(
      //   onPressed: (){},
      //   child: const Icon(Icons.add),
      // ),

      floatingActionButton: FloatingActionButton.extended(
          onPressed: (){},
          // icon: Icon(Icons.bolt),
          label: Row(
            children: [
              Text("Boss"),
              Icon(Icons.bolt),
            ],
          ),

      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              child: Image.network(
                "https://www.gizmochina.com/wp-content/uploads/2020/10/iPhone-12-Pro-Dark-Wallpaper-1-Medium.jpg"
                // height: 300,
                // width: 500,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: Image.asset(
                "images/Profile-pic.jpg",
                fit: BoxFit.fill,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/2,
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                hintText: "Name",
                fillColor: Colors.blue,
              ),
            ),
            const SizedBox(height: 10,),
            FlatButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => const RaisedButtonClass()));
                },
                color: Colors.green,
                hoverColor: Colors.blue,
                child: const Text("Flat Button")
            ),
            const SizedBox(height: 10,),
            RaisedButton(
              onPressed: (){},
              color: Colors.blue,
              splashColor: Colors.amber,
              child: const Text("RaisedButton"),
            )
          ],
        ),
      ),
    );
  }
}
