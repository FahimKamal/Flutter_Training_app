import 'package:flutter/cupertino.dart';
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
        title: const Text('Container'),
        leading: const Icon(Icons.account_balance),
        centerTitle: true,
      ),
      body: Container(
        height: 200,
        width: 500,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.red,
            width: 5,
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.green,
              offset: Offset.zero,
              blurRadius: 10,
              spreadRadius: 10,
            ),
          ],
        ),
        alignment: Alignment.center,
        // color: Colors.blue,

        child: const Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently w",
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            // letterSpacing: 10,
            // wordSpacing: 50,
            color: Colors.red,
            backgroundColor: Colors.lightGreenAccent,
          ),
        ),
      ),
    );
  }
}
