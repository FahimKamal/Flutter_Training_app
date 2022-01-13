import 'package:flutter/material.dart';

class StackClass extends StatefulWidget {
  const StackClass({Key? key}) : super(key: key);

  @override
  _StackClassState createState() => _StackClassState();
}

class _StackClassState extends State<StackClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack"),
      ),

      body: Stack(
        overflow: Overflow.visible,
        children: [
          Container(
            height: 500,
            width: 500,
            color: Colors.green,
          ),
          // পতাকার বৃত্ত
          Positioned(
            left: 150, 
              top: 150,
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(100)
                ),
              )
          ),
          Positioned(
            left: 175,
              top: 175,
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(75)
                ),
              )
          ),
          Positioned(
              left: 190,
              top: 190,
              child: Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(75)
                ),
              )
          ),
          Positioned(
              left: 210,
              top: 210,
              child: Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(75)
                ),
              )
          ),
          Positioned(
              left: 225,
              top: 225,
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(75)
                ),
              )
          ),
          // পতাকার বাশঁ
          Positioned(
            right: 1,
              child: Container(
                height: 600,
                width: 20,
                color: Colors.orangeAccent,
              )
          ),
          // বাশেঁর গোড়া
          Positioned(
            bottom: -200,
              right: 0,
              child: Container(
                height: 100,
                width: 50,
                color: Colors.brown,
              )
          )
        ],
      ),
    );
  }
}
