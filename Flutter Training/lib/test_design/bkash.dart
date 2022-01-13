import 'package:flutter/material.dart';

class Bkash extends StatefulWidget {
  const Bkash({Key? key}) : super(key: key);

  @override
  _BkashState createState() => _BkashState();
}

class _BkashState extends State<Bkash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: const CircleAvatar(
          backgroundColor: Colors.red,
          child: Icon(Icons.account_circle_rounded, size: 50, color: Colors.white,),
        ),
        title: ListTile(
          title: const Text("Fahim Kamal",
            style: TextStyle(
            color: Colors.white,
          ),),
          subtitle: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Icon(Icons.monetization_on, color: Colors.red,),
                Text("   ব্যলেন্স দেখুন",
                style: TextStyle(
                  color: Colors.red,
                ),),
              ],
            ),
          ),
        ),
        actions: [
          Icon(Icons.admin_panel_settings_sharp, color: Colors.white, size: 40,),
          Icon(Icons.search, color: Colors.white, size: 40,),
          SizedBox(width: 20,)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
              height: 200,
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              child: GridView.count(
                crossAxisCount: 4,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: [
                  Column(
                    children: [
                      Icon(Icons.monetization_on, size: 50,),
                      Text("সেন্ড মানি",
                        style: TextStyle(
                          color: Colors.black,
                        ),),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.monetization_on),
                      Text("সেন্ড মানি",
                        style: TextStyle(
                          color: Colors.black,
                        ),),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.monetization_on),
                      Text("সেন্ড মানি",
                        style: TextStyle(
                          color: Colors.black,
                        ),),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.monetization_on),
                      Text("সেন্ড মানি",
                        style: TextStyle(
                          color: Colors.black,
                        ),),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.monetization_on),
                      Text("সেন্ড মানি",
                        style: TextStyle(
                          color: Colors.black,
                        ),),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.monetization_on),
                      Text("সেন্ড মানি",
                        style: TextStyle(
                          color: Colors.black,
                        ),),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.monetization_on),
                      Text("সেন্ড মানি",
                        style: TextStyle(
                          color: Colors.black,
                        ),),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.monetization_on),
                      Text("সেন্ড মানি",
                        style: TextStyle(
                          color: Colors.black,
                        ),),
                    ],
                  ),
                ],
              )
            ),
            Container(
              height: 120,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey,
              margin: EdgeInsets.all(10),
              child: Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    ListTile(
                      title: Text("আমার বিকাশ"),
                      trailing: Icon(Icons.arrow_drop_up),
                    ),

                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Icon(Icons.monetization_on),
                              Text("Priyo Numbers",
                                style: TextStyle(
                                  color: Colors.black,
                                ),),
                            ],
                          ),
                          SizedBox(width: 30,),
                          Column(
                            children: [
                              Icon(Icons.monetization_on),
                              Text("Saved Bills",
                                style: TextStyle(
                                  color: Colors.black,
                                ),),
                            ],
                          ),
                          SizedBox(width: 30,),
                          Column(
                            children: [
                              Icon(Icons.monetization_on),
                              Text("01917xxxxxx",
                                style: TextStyle(
                                  color: Colors.black,
                                ),),
                            ],
                          ),
                          SizedBox(width: 30,),
                          Column(
                            children: [
                              Icon(Icons.monetization_on),
                              Text("সেন্ড মানি",
                                style: TextStyle(
                                  color: Colors.black,
                                ),),
                            ],
                          ),
                          SizedBox(width: 30,),
                          Column(
                            children: [
                              Icon(Icons.monetization_on),
                              Text("সেন্ড মানি",
                                style: TextStyle(
                                  color: Colors.black,
                                ),),
                            ],
                          ),
                          SizedBox(width: 30,),
                          Column(
                            children: [
                              Icon(Icons.monetization_on),
                              Text("সেন্ড মানি",
                                style: TextStyle(
                                  color: Colors.black,
                                ),),
                            ],
                          ),
                          SizedBox(width: 30,),
                          Column(
                            children: [
                              Icon(Icons.monetization_on),
                              Text("সেন্ড মানি",
                                style: TextStyle(
                                  color: Colors.black,
                                ),),
                            ],
                          ),
                          SizedBox(width: 30,),
                          Column(
                            children: [
                              Icon(Icons.monetization_on),
                              Text("সেন্ড মানি",
                                style: TextStyle(
                                  color: Colors.black,
                                ),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 120,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey,
              margin: EdgeInsets.all(10),
              child: Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    ListTile(
                      title: Text("আমার বিকাশ"),
                      trailing: Icon(Icons.arrow_drop_up),
                    ),

                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Icon(Icons.monetization_on),
                              Text("Priyo Numbers",
                                style: TextStyle(
                                  color: Colors.black,
                                ),),
                            ],
                          ),
                          SizedBox(width: 30,),
                          Column(
                            children: [
                              Icon(Icons.monetization_on),
                              Text("Saved Bills",
                                style: TextStyle(
                                  color: Colors.black,
                                ),),
                            ],
                          ),
                          SizedBox(width: 30,),
                          Column(
                            children: [
                              Icon(Icons.monetization_on),
                              Text("01917xxxxxx",
                                style: TextStyle(
                                  color: Colors.black,
                                ),),
                            ],
                          ),
                          SizedBox(width: 30,),
                          Column(
                            children: [
                              Icon(Icons.monetization_on),
                              Text("সেন্ড মানি",
                                style: TextStyle(
                                  color: Colors.black,
                                ),),
                            ],
                          ),
                          SizedBox(width: 30,),
                          Column(
                            children: [
                              Icon(Icons.monetization_on),
                              Text("সেন্ড মানি",
                                style: TextStyle(
                                  color: Colors.black,
                                ),),
                            ],
                          ),
                          SizedBox(width: 30,),
                          Column(
                            children: [
                              Icon(Icons.monetization_on),
                              Text("সেন্ড মানি",
                                style: TextStyle(
                                  color: Colors.black,
                                ),),
                            ],
                          ),
                          SizedBox(width: 30,),
                          Column(
                            children: [
                              Icon(Icons.monetization_on),
                              Text("সেন্ড মানি",
                                style: TextStyle(
                                  color: Colors.black,
                                ),),
                            ],
                          ),
                          SizedBox(width: 30,),
                          Column(
                            children: [
                              Icon(Icons.monetization_on),
                              Text("সেন্ড মানি",
                                style: TextStyle(
                                  color: Colors.black,
                                ),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
