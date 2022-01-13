import 'package:flutter/material.dart';

class States extends StatefulWidget {
  const States({Key? key}) : super(key: key);

  @override
  _StatesState createState() => _StatesState();
}

class _StatesState extends State<States> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text("States with Flags"),
            Container(
              width: MediaQuery.of(context).size.width/2,
              child: Icon(Icons.search),
            )
          ],
        ),
        centerTitle: true,
        leading: Icon(Icons.menu),
      ),

      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,

            height: 150,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 10,
                    left: 10,
                    child: Image.asset(
                      "images/Bangladesh.png",
                      fit: BoxFit.fill,
                      width: 150,
                      height: 130,
                    ),
                ),
                const Positioned(
                  top: 10,
                    left: 250,
                    child: Text("Bangladesh",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                ),
                const Positioned(
                    top: 50,
                    left: 250,
                    child: Text("Dhaka",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                ),
              ],
            ),
          ),
          // SizedBox(height: 10,),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 150,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 10,
                  left: 10,
                  child: Image.asset(
                    "images/usa.jpg",
                    fit: BoxFit.fill,
                    width: 150,
                    height: 130,
                  ),
                ),
                const Positioned(
                    top: 10,
                    left: 250,
                    child: Text("America",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                ),
                const Positioned(
                    top: 50,
                    left: 250,
                    child: Text("Washington",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
