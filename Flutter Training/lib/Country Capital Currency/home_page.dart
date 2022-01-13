import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tt/Country%20Capital%20Currency/database_file.dart';
import 'package:tt/Country%20Capital%20Currency/country_list_view.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Color? appbarColor = Colors.deepPurple[900];
  Color? bgColor;
  Color? textColor;
  bool darkMode = false;

  SharedPreferences? sharedObject;

  List<String>? homepageContents;

  _initShared() async {
    sharedObject = await SharedPreferences.getInstance();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homepageContents = List.from(DataBase.homepageContents);
    _initShared();
    darkMode = sharedObject!.getBool("darkMode")??false;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbarColor,
        title: Text("Country Capital Currency"),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Container(
          color: bgColor,
          child: ListView(
            children: [
              ListTile(
                title: Text('Privacy Policy', style: TextStyle(color: textColor),),
              ),
              ListTile(
                title: Text('Rate this App', style: TextStyle(color: textColor),),
              ),
              ListTile(
                title: Text('Share', style: TextStyle(color: textColor),),
              ),
              ListTile(
                title: Text('Settings', style: TextStyle(color: textColor),),
              ),
              ListTile(
                onTap: DarkModeToggle,
                title: Text('Toggle Dark Mode', style: TextStyle(color: textColor),),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        // margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: bgColor
        ),
        child: ListView.builder(
            itemCount: homepageContents!.length,
            itemBuilder: (context, index){
              return Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.grey[700],
                child: ListTile(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CountryListView(
                          appBarTitle: homepageContents![index],
                          appBarColor: appbarColor,
                          bgColor: bgColor,
                          textColor: textColor,
                        ))
                    );
                  },
                  title: Center(child: Text(homepageContents![index], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
                ),
              );
            }
        ),
      ),
    );
  }

  void DarkModeToggle(){
    setState(() {
      darkMode = !darkMode;
      if(darkMode){
        bgColor = Colors.black;
        textColor = Colors.white;
      }
      else{
        bgColor = Colors.white;
        textColor = Colors.black;
      }
    });
  }
}
