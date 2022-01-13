import 'package:flutter/material.dart';

import 'alertdialogclass.dart';

class SliverAppBarClass extends StatefulWidget {
  const SliverAppBarClass({Key? key}) : super(key: key);

  @override
  _SliverAppBarClassState createState() => _SliverAppBarClassState();
}

class _SliverAppBarClassState extends State<SliverAppBarClass> {

  List titleList = [
    "Fahim",
    "Sayem",
    "Saklin",
    "Sabbir",
    "Ext",
    "Fahim",
    "Sayem",
    "Saklin",
    "Sabbir",
    "Ext",
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
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
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            // title: Text("Sliver AppBar"),
            pinned: true,
            expandedHeight: size.height*0.25,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Sliver AppBar"),
              background: Image.asset(
                  "images/Bangladesh.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index){
              return CustomCard(titleList[index], "_subtitle");
            },
              childCount: titleList.length,
            ),
              // delegate: SliverChildListDelegate(
              //   [
              //     CustomCard("Sliver", "Sliver subtitle"),
              //     CustomCard("Sliver", "Sliver subtitle"),
              //     CustomCard("Sliver", "Sliver subtitle"),
              //     CustomCard("Sliver", "Sliver subtitle"),
              //     CustomCard("Sliver", "Sliver subtitle"),
              //     CustomCard("Sliver", "Sliver subtitle"),
              //     CustomCard("Sliver", "Sliver subtitle"),
              //     CustomCard("Sliver", "Sliver subtitle"),
              //     CustomCard("Sliver", "Sliver subtitle"),
              //     CustomCard("Sliver", "Sliver subtitle"),
              //     CustomCard("Sliver", "Sliver subtitle"),
              //     CustomCard("Sliver", "Sliver subtitle"),
              //     CustomCard("Sliver", "Sliver subtitle"),
              //   ]
              // )
          )
        ],
      ),
    );
  }

  Widget CustomCard(String _title, String _subtitle){
    return Card(
      child: ListTile(
        title: Text(_title),
        subtitle: Text(_subtitle),
      ),
    );
  }
}
