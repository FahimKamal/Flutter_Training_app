import 'package:flutter/material.dart';

class PopupMenuBarClass extends StatefulWidget {
  const PopupMenuBarClass({Key? key}) : super(key: key);

  @override
  _PopupMenuBarClassState createState() => _PopupMenuBarClassState();
}

class _PopupMenuBarClassState extends State<PopupMenuBarClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Popup Menu"),
        centerTitle: true,
        actions: [
          PopupMenuButton(
            icon: Icon(Icons.settings),
              itemBuilder: (BuildContext context) =>[
                PopupMenuItem(
                    child: Text("Settings"),
                  onTap: (){},
                ),
                PopupMenuItem(
                  child: Text("Settings"),
                  onTap: (){},
                ),
              ]
          )
        ],
      ),
    );
  }
}
