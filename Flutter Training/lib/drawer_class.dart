import 'package:flutter/material.dart';
import 'package:tt/alertdialogclass.dart';

class DrawerClass extends StatefulWidget {
  const DrawerClass({Key? key}) : super(key: key);

  @override
  _DrawerClassState createState() => _DrawerClassState();
}

class _DrawerClassState extends State<DrawerClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                accountName: Text("Fahim Kamal Ahmed"),
                accountEmail: Text("fahimkamal63@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  foregroundImage: AssetImage("images/Profile-pic.jpg"),
                ),
              // currentAccountPictureSize: Size(200, 150),
            ),
            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),
              trailing: IconButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AlertDialogClass()));
                  },
                  icon: Icon(Icons.arrow_right_alt)
              ),
            ),
            ListTile(
              title: Text("Setting"),
              leading: Icon(Icons.settings),
              trailing: Icon(Icons.arrow_right_alt),
            ),
            ListTile(
              title: Text("Logout"),
              leading: Icon(Icons.logout),
              trailing: Icon(Icons.arrow_right_alt),
            ),
            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),
              trailing: Icon(Icons.apartment),
            )
          ],
        ),
      ),
    );
  }
}
