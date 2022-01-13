import 'package:flutter/material.dart';

class TableClass extends StatefulWidget {
  const TableClass({Key? key}) : super(key: key);

  @override
  _TableClassState createState() => _TableClassState();
}

class _TableClassState extends State<TableClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Table"),
        centerTitle: true,
        leading: Icon(Icons.table_chart),
      ),
      body: Center(
        child: Table(
          border: TableBorder(
            top: BorderSide(
              color: Colors.black,
              width: 2,
            ),
            right: BorderSide(
              color: Colors.black,
              width: 2,
            ),
            bottom: BorderSide(
              color: Colors.black,
              width: 2,
            ),
            left: BorderSide(
              color: Colors.black,
              width: 2,
            ),
            horizontalInside: BorderSide(
              color: Colors.black,
              width: 2,
            ),
            verticalInside: BorderSide(
              color: Colors.black,
              width: 2,
            ),

          ),
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: [
            TableRow(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  child: Center(child: Text("One"))
                ),
                Text("One", textAlign: TextAlign.center,),
                Text("One"),
                Text("One"),
              ]
            ),
            TableRow(
              children: [
                Text("One"),
                Text("One"),
                Text("One"),
                Text("One"),
              ]
            ),
            TableRow(
              children: [
                Text("One"),
                Text("One"),
                Text("One"),
                Text("One"),
              ]
            ),
            TableRow(
              children: [
                Text("One"),
                Text("One"),
                Text("One"),
                Text("One"),
              ]
            ),
          ],
        ),
      ),
    );
  }
}
