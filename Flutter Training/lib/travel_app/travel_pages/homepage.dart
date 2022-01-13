// import 'package:flutter/material.dart';
// import 'package:tt/travel_app/widgets/appbar_design.dart';
// import 'package:url_launcher/url_launcher.dart';
//
// class HomePage_Travel_app extends StatefulWidget {
//   const HomePage_Travel_app({Key? key}) : super(key: key);
//
//   @override
//   _HomePage_Travel_appState createState() => _HomePage_Travel_appState();
// }
//
// class _HomePage_Travel_appState extends State<HomePage_Travel_app> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBarDesign('HomePage'),
//       body: _bodyUI(),
//     );
//   }
//
//   Widget _bodyUI(){
//     return Padding(
//       padding: const EdgeInsets.all(12),
//       child: ListView(
//         children: [
//           Container(
//             color: Colors.green,
//             padding: EdgeInsets.all(10),
//             height: 100,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Icon(Icons.add_location_alt_outlined, color: Colors.white, size: 50,),
//                 Column(
//                   children: [
//                     Text("ভ্রমণ গাইড", style: TextStyle(fontSize: 40, color: Colors.white),),
//                     Text("দেশ-বিদেশ ভ্রমণের সকল তথ্য ও পরামর্শ", style: TextStyle(fontSize: 10, color: Colors.white),),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           GridView.custom(
//             physics: ScrollPhysics(),
//             shrinkWrap: true,
//             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 2,
//               mainAxisExtent: 120
//             ),
//
//             childrenDelegate: SliverChildListDelegate(
//               [
//                 CustomCard("বাংলাদেশ ভ্রমণ", Icons.my_location_sharp),
//                 CustomCard("বিদেশ ভ্রমণ",Icons.language),
//                 CustomCard("ভ্রমণ ব্লগ",Icons.paste),
//                 CustomCard("জনপ্রিয় স্থান", Icons.stars),
//                 CustomCard("ভিডিও", Icons.ondemand_video, iconColor: Colors.pink),
//                 CustomCard("সংরক্ষিত তথ্য", Icons.save),
//
//               ]
//             )
//           ),
//           Card(
//             child: Padding(
//               padding: EdgeInsets.all(12.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   IconButton(onPressed: ()async{ await launch('https://www.facebook.com'); }, icon: Image.asset("images/Icons/facebook.png")),
//                   SizedBox(width: 20,),
//                   IconButton(onPressed:()async{ await launch('https://www.instagram.com');},icon: Image.asset("images/Icons/instagram.png")),
//                   SizedBox(width: 20,),
//                   IconButton(onPressed: ()async{ await launch('https://www.twitter.com');},icon: Image.asset("images/Icons/twitter.png")),
//                   SizedBox(width: 20,),
//                   IconButton(onPressed:()async{ await launch('https://www.youtube.com');},icon: Image.asset("images/Icons/youtube.png")),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget CustomCard(String _title, IconData icon, {MaterialColor iconColor = Colors.green}){
//     return InkWell(
//       onTap: () async {
//         if(_title == "বাংলাদেশ ভ্রমণ"){
//           Navigator.push(context, MaterialPageRoute(builder: (context) => Container(
//             child: Center(
//               child: Text("Bangladesh visit"),
//             ),
//           ) ));
//         }
//         else if(_title == "বিদেশ ভ্রমণ"){
//           Navigator.push(context, MaterialPageRoute(builder: (context) => Container(
//             child: Center(
//               child: Text("Foreign visit"),
//             ),
//           ) ));
//         }
//         else if(_title == "ভ্রমণ ব্লগ"){
//           Navigator.push(context, MaterialPageRoute(builder: (context) => Container(
//             child: Center(
//               child: Text("Blog visit"),
//             ),
//           ) ));
//         }
//         else if(_title == "জনপ্রিয় স্থান"){
//           Navigator.push(context, MaterialPageRoute(builder: (context) => Container(
//             child: Center(
//               child: Text("Fevorite visit"),
//             ),
//           ) ));
//         }
//         else if(_title == "ভিডিও"){
//           await launch('https://www.youtube.com/channel/UCo0bGFsKTe8EIp3-4cOGvMw');
//         }
//         else if(_title == "সংরক্ষিত তথ্য"){
//           Navigator.push(context, MaterialPageRoute(builder: (context) => Container(
//             child: Center(
//               child: Text("Fevorite visit"),
//             ),
//           ) ));
//         }
//       },
//       child: Card(
//         child: Container(
//           decoration: BoxDecoration(
//             // color: Colors.blue,
//           ),
//           alignment: Alignment.center,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Icon(icon, color: iconColor, size: 50,),
//               SizedBox(height: 8,),
//               Text(_title, style: TextStyle(color: Colors.green),)
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
// }
