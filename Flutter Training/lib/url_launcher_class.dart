import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncherClass extends StatefulWidget {
  const UrlLauncherClass({Key? key}) : super(key: key);

  @override
  _UrlLauncherClassState createState() => _UrlLauncherClassState();
}

class _UrlLauncherClassState extends State<UrlLauncherClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Url Launcher"), centerTitle: true,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              color: Colors.blue,
                onPressed: () async {
                  if(await canLaunch('https://www.facebook.com/')){
                    await launch('https://www.facebook.com/');
                  }
                  else{
                    Container();
                  }
                },
                child: Text("Facebook", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 20,),
            RaisedButton(
              color: Colors.blue,
                onPressed: () async {
                  if(await canLaunch('https://www.youtube.com/')){
                    await launch('https://www.youtube.com/');
                  }
                  else{
                    Container();
                  }
                },
                child: Text("Youtube", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 20,),
            RaisedButton(
              color: Colors.blue,
              onPressed: () async {
                if(await canLaunch('mailto: warbase487@gmail.com')){
                  await launch('mailto: warbase487@gmail.com');
                }
                else{
                  Container();
                }
              },
              child: Text("Mail me.", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 20,),
            RaisedButton(
              color: Colors.blue,
              onPressed: () async {
                if(await canLaunch('tel: 01917447979')){
                  await launch('tel: 01917447979');
                }
                else{
                  Container();
                }
              },
              child: Text("Call me.", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 20,),
            RaisedButton(
              color: Colors.blue,
              onPressed: () async {
                final String encodedURI = Uri.encodeFull(
                  "https://www.google.com/maps/place/24%C2%B050'36.8%22N+89%C2%B022'12.4%22E/@24.8435583,89.3701066,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x2c39ec88a2ebabb1!8m2!3d24.8435583!4d89.3701066"
                );
                if(await canLaunch(encodedURI)){
                  await launch(encodedURI);
                }
                else{
                  Container();
                }
              },
              child: Text("Go to Map", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
    );
  }
}
