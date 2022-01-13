import 'package:flutter/material.dart';

class CountryDetails extends StatefulWidget {
  const CountryDetails({Key? key}) : super(key: key);

  @override
  _CountryDetailsState createState() => _CountryDetailsState();
}

class _CountryDetailsState extends State<CountryDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            color: Colors.grey[900],
            child: Center(
              child: Container(
                width: 200,
                height: 200,
                color: Colors.red,
                child: Image.asset(
                  "images/Bangladesh.png",
                  fit: BoxFit.fill,
                  width: 200,
                  height: 200,
                ),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.all(5),
            child: Container(
              height: 450,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(10),

              ),
              child: ListView(
                children: [
                  Container(
                    height: 60,
                    child: Stack(
                      children: const [
                      Center(
                        child: Text("Bangladesh",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                        Positioned(
                          top: 20,
                            right: 20,
                            child: Icon(Icons.favorite_border, color: Colors.white,)
                        )
                      ],
                    ),
                  ),
                  const ListTile(
                    leading: Icon(Icons.apartment, color: Colors.white,),
                    title: Text("Brussels",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    subtitle: Text("Capital",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const ListTile(
                    leading: Icon(Icons.monetization_on, color: Colors.white,),
                    title: Text("Euro(EUR)",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    subtitle: Text("Currency",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const ListTile(
                    leading: Icon(Icons.vpn_lock_sharp, color: Colors.white,),
                    title: Text("Dutch, French",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    subtitle: Text("Language",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const ListTile(
                    leading: Icon(Icons.build, color: Colors.white,),
                    title: Text("Brussels",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    subtitle: Text("Capital",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
