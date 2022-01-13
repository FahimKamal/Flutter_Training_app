import 'package:flutter/material.dart';
import 'package:tt/raisedbutton.dart';
import 'package:tt/stateandflags.dart';

import 'alertdialogclass.dart';

class ListViewClass extends StatefulWidget {
  const ListViewClass({Key? key}) : super(key: key);

  @override
  _ListViewClassState createState() => _ListViewClassState();
}

class _ListViewClassState extends State<ListViewClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List View"),
        centerTitle: true,
        leading: const Icon(Icons.list),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: ListView(
          children: [
            ListTile(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context) => AlertDialogClass()
                    ));
              },
              title: Text("Fahim Kamal"),
              subtitle: Text("I am a CSE student"),
              leading: CircleAvatar(
                // child: Icon(Icons.person),
                radius: 50,
                backgroundImage: AssetImage("images/Profile-pic.jpg"),
                // foregroundImage: AssetImage("images/Bangladesh.png"),
              ),
              trailing: Icon(Icons.person_add_disabled),

              tileColor: Colors.greenAccent,
            ),
            Divider(),
            ListTile(
              title: Text("Fahim Kamal"),
              subtitle: Text("I am a CSE student"),
              leading: CircleAvatar(
                // child: Icon(Icons.person),
                radius: 50,
                backgroundImage: AssetImage("images/Profile-pic.jpg"),
                // foregroundImage: AssetImage("images/Bangladesh.png"),
              ),
              trailing: Icon(Icons.person_add_disabled),

              tileColor: Colors.greenAccent,
            ),
            Divider(),
            ListTile(
              title: Text("Fahim Kamal"),
              subtitle: Text("I am a CSE student"),
              leading: CircleAvatar(
                // child: Icon(Icons.person),
                radius: 50,
                backgroundImage: AssetImage("images/Profile-pic.jpg"),
                // foregroundImage: AssetImage("images/Bangladesh.png"),
              ),
              trailing: Icon(Icons.person_add_disabled),

              tileColor: Colors.greenAccent,
            ),
            Divider(),
            ListTile(
              title: Text("Fahim Kamal"),
              subtitle: Text("I am a CSE student"),
              leading: CircleAvatar(
                // child: Icon(Icons.person),
                radius: 50,
                backgroundImage: AssetImage("images/Profile-pic.jpg"),
                // foregroundImage: AssetImage("images/Bangladesh.png"),
              ),
              trailing: Icon(Icons.person_add_disabled),

              tileColor: Colors.greenAccent,
            ),
            Divider(),
            ListTile(
              title: Text("Fahim Kamal"),
              subtitle: Text("I am a CSE student"),
              leading: CircleAvatar(
                // child: Icon(Icons.person),
                radius: 50,
                backgroundImage: AssetImage("images/Profile-pic.jpg"),
                // foregroundImage: AssetImage("images/Bangladesh.png"),
              ),
              trailing: Icon(Icons.person_add_disabled),

              tileColor: Colors.greenAccent,
            ),

          ],
        ),
      )
    );
  }
}
