import 'package:flutter/material.dart';

class AppbarAndContainer extends StatefulWidget {
  const AppbarAndContainer({Key? key}) : super(key: key);

  @override
  _AppbarAndContainerState createState() => _AppbarAndContainerState();
}

class _AppbarAndContainerState extends State<AppbarAndContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
        leading: const Icon(Icons.account_balance),
        centerTitle: true,
      ),
      
      body: Center(
        child: Container(
          height: 200,
          width: 500,
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.red,
              width: 2,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                offset: Offset.zero,
                blurRadius: 10,
                spreadRadius: 2,
              )
            ],
          ),
          child: const Text("jfdsfsdfknajsdbvabfcsdkc",
          style: TextStyle(
            fontSize: 30,
            color: Colors.orange,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            backgroundColor: Colors.deepPurpleAccent,
          ),
          ),
        ),
      ),
    );
  }
}
