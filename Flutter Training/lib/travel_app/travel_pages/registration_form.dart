import 'package:flutter/material.dart';

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({Key? key}) : super(key: key);

  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration Form"),
        centerTitle: true,
      ),
      body: _bodyUI(),
    );
  }

  Widget _bodyUI(){
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          _formUI("Name", TextInputType.name),
          SizedBox(height: 10,),
          _formUI("Phone Number", TextInputType.phone),
          SizedBox(height: 10,),
          _formUI("Password", TextInputType.text),
        ],
      ),
    );
  }

  Widget _formUI(String hintText, TextInputType textInputType){
    return TextFormField(
      keyboardType: textInputType,
      decoration: InputDecoration(
        label: Text(hintText),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blue,
            width: 2,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.amberAccent,
            width: 2,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
            width: 2,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.pink,
            width: 2,
          ),
        ),
      ),
    );
  }
}
