import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class SimpleCalculator extends StatefulWidget {
  const SimpleCalculator({Key? key}) : super(key: key);

  @override
  _SimpleCalculatorState createState() => _SimpleCalculatorState();
}

class _SimpleCalculatorState extends State<SimpleCalculator> {
  String equation = "0";
  String result = "0";
  String expression = '';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            color: Colors.red,
            padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.1, vertical: size.width * 0.02),
            alignment: Alignment.centerRight,
            child: Text(
              equation,
              style: TextStyle(fontSize: size.width * 0.1),
              maxLines: 1,
            ),
          ),
          Divider(),
          Container(
            color: Colors.red,
            padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.1, vertical: size.width * 0.02),
            alignment: Alignment.centerRight,
            child: Text(
              result,
              style: TextStyle(fontSize: size.width * 0.1),
              maxLines: 1,
            ),
          ),
          Divider(),
          Row(
            children: [
              Container(
                width: size.width * 0.75,
                child: Table(
                  children: [
                    TableRow(children: [
                      buildBtn("C", 1, Colors.red),
                      buildBtn("AC", 1, Colors.blue),
                      buildBtn("÷", 1, Colors.blue),
                    ]),
                    TableRow(children: [
                      buildBtn("7", 1, Colors.blue),
                      buildBtn("8", 1, Colors.blue),
                      buildBtn("9", 1, Colors.blue),
                    ]),
                    TableRow(children: [
                      buildBtn("4", 1, Colors.blue),
                      buildBtn("5", 1, Colors.blue),
                      buildBtn("6", 1, Colors.blue),
                    ]),
                    TableRow(children: [
                      buildBtn("1", 1, Colors.blue),
                      buildBtn("2", 1, Colors.blue),
                      buildBtn("3", 1, Colors.blue),
                    ]),
                    TableRow(children: [
                      buildBtn(" . ", 1, Colors.blue),
                      buildBtn("0", 1, Colors.blue),
                      buildBtn("00", 1, Colors.blue),
                    ]),
                  ],
                ),
              ),
              Container(
                width: size.width * 0.25,
                child: Table(
                  children: [
                    TableRow(children: [
                      buildBtn("×", 1, Colors.blue),
                    ]),
                    TableRow(children: [
                      buildBtn("-", 1, Colors.blue),
                    ]),
                    TableRow(children: [
                      buildBtn("+", 1, Colors.blue),
                    ]),
                    TableRow(children: [
                      buildBtn("=", 2, Colors.blue),
                    ]),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildBtn(String btnText, double btnHeight, Color btnColor) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.1 * btnHeight,
      decoration: BoxDecoration(
        color: btnColor,
        borderRadius: BorderRadius.circular(50)
      ),
      child: FlatButton(
        onPressed: () {
          setState(() {
            if (btnText == "C") {
              equation = "0";
              result = "0.0";
            } else if (btnText == "AC") {
              equation = equation.substring(0, equation.length - 1);
              if (equation == "") {
                equation = "0";
              }
            } else if (btnText == "=") {
              expression = equation;
              expression = expression.replaceAll('×', '*');
              expression = expression.replaceAll('÷', '/');

              try{
                Parser p = Parser();
                Expression exp = p.parse(expression);
                ContextModel cm = ContextModel();
                result = "${exp.evaluate(EvaluationType.REAL, cm)}";
              }catch(e){
                result = "Error";
              }
            } else {
              if(equation == "0"){
                equation = btnText;
              } else {
                equation += btnText;
              }
            }
          });
        },
        child: Text(
          btnText,
          style: TextStyle(fontSize: size.width * 0.1),
        ),
        shape: RoundedRectangleBorder(
            side: BorderSide(
          color: Colors.white,
          width: 1,
          style: BorderStyle.solid,
        )),
      ),
    );
  }
}
