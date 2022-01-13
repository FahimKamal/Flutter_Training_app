import 'package:flutter/material.dart';

class ColumnClasses extends StatefulWidget {
  const ColumnClasses({Key? key}) : super(key: key);

  @override
  _ColumnClassesState createState() => _ColumnClassesState();
}

class _ColumnClassesState extends State<ColumnClasses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BOSS App'),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.all(20),
              // color: Colors.blue,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: const Center(
                  child: Text("I am BOSS!!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
            ),
            Container(
              height: 200,
              width: 200,
              margin: EdgeInsets.all(20),
              color: Colors.blue,
            ),
            Container(
              height: 200,
              width: 200,
              margin: EdgeInsets.all(20),
              color: Colors.blue,
            ),
            Container(
              height: 200,
              width: 200,
              margin: EdgeInsets.all(20),
              color: Colors.blue,
            ),
            Container(
              height: 200,
              width: 200,
              margin: EdgeInsets.all(20),
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
