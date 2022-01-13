import 'package:flutter/material.dart';
import 'package:tt/test_design/bkash.dart';
import 'package:tt/time_and_date_picker.dart';

import 'calculator_class.dart';
import 'curvenavigationbarclass.dart';

class DropDownBtn extends StatefulWidget {
  const DropDownBtn({Key? key}) : super(key: key);

  @override
  _DropDownBtnState createState() => _DropDownBtnState();
}

class _DropDownBtnState extends State<DropDownBtn> {
  String dropdownValue = 'One';
  List<String> dropdownItem = ['One', 'Two', 'Three', 'Four'];
  List<Color> appBarColors = [Colors.red, Colors.amber, Colors.blue, Colors.greenAccent];

  List<Widget> widgetLists = [DateAndTimePicker(), CurveNavigationBarClass(), SimpleCalculator(), Bkash()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dropdown Button"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
              value: dropdownValue,
              onChanged: (value){
                setState(() {
                  dropdownValue = value!;
                  var indexNum = dropdownItem.indexOf(value);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => widgetLists[indexNum]));

                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(builder: (context) => DateAndTimePicker(
                  //       appBarTitle: dropdownValue,
                  //       appBarColor: appBarColors[indexNum],
                  //     ))
                  // );
                });
              },
              items: dropdownItem.map((String selectNumber) {
                return DropdownMenuItem(
                    value: selectNumber,
                    child: Text(
                      selectNumber,
                      style: TextStyle(color: Colors.amber),
                    ));
              }).toList()),
        ),
      ),
    );
  }
}
