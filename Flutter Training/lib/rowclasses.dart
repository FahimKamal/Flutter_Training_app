import 'package:flutter/material.dart';

class RowClasses extends StatefulWidget {
  const RowClasses({Key? key}) : super(key: key);

  @override
  _RowClassesState createState() => _RowClassesState();
}

class _RowClassesState extends State<RowClasses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Row"),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              height: 200,
              width: 200,
              margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
              color: Colors.blue,
            ),
            SizedBox(
              width: 10,
              child: Container(
                color: Colors.red,
                height: 200,
              ),
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.blue,
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.blue,
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.blue,
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
    );
  }
}
