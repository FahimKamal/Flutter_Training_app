import 'package:flutter/material.dart';

class DropDown_Menu extends StatefulWidget {
  const DropDown_Menu({Key? key}) : super(key: key);

  @override
  _DropDown_MenuState createState() => _DropDown_MenuState();
}

class _DropDown_MenuState extends State<DropDown_Menu> {
  
  bool settings = false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drop Down Menu'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: Text("Settings"),
              trailing: IconButton(
                onPressed: (){
                  setState(() {
                    settings = !settings;
                  });
                },
                icon: settings? Icon(Icons.arrow_upward):Icon(Icons.arrow_downward),
              ),
            ),

            settings? Container(
              child: Column(
                children: [
                  Card(
                    child: ListTile(
                      title: Text("Phone"),
                      subtitle: Text("01917 44 79 79"),
                      trailing: Icon(Icons.phone),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      title: Text("Phone"),
                      subtitle: Text("01917 44 79 79"),
                      trailing: Icon(Icons.phone),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      title: Text("Phone"),
                      subtitle: Text("01917 44 79 79"),
                      trailing: Icon(Icons.phone),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      title: Text("Phone"),
                      subtitle: Text("01917 44 79 79"),
                      trailing: Icon(Icons.phone),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      title: Text("Phone"),
                      subtitle: Text("01917 44 79 79"),
                      trailing: Icon(Icons.phone),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      title: Text("Phone"),
                      subtitle: Text("01917 44 79 79"),
                      trailing: Icon(Icons.phone),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      title: Text("Phone"),
                      subtitle: Text("01917 44 79 79"),
                      trailing: Icon(Icons.phone),
                    ),
                  ),
                ],
              ),
            ):Container(),
          ],
        ),
      ),
    );
  }
}
