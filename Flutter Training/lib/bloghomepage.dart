import 'package:flutter/material.dart';

class BlogHomePage extends StatefulWidget {
  const BlogHomePage({Key? key}) : super(key: key);

  @override
  _BlogHomePageState createState() => _BlogHomePageState();
}

class _BlogHomePageState extends State<BlogHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DaktarBari Blog"),
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
      ),

      body: Container(
        margin: EdgeInsets.all(10),
        child: ListView(
          children: [
            ListTile(
              subtitle: Text("Article Categories"),
              trailing: Icon(Icons.arrow_right_alt),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                // scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    height: 80,
                    width: 150,
                    // color: Colors.red,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10),

                    ),
                    child: Center(child: Text("Hello")),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 80,
                    width: 150,
                    // color: Colors.red,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10),

                    ),
                    child: Center(child: Text("Hello")),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 80,
                    width: 150,
                    // color: Colors.red,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10),

                    ),
                    child: Center(child: Text("Hello")),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 80,
                    width: 150,
                    // color: Colors.red,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10),

                    ),
                    child: Center(child: Text("Hello")),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 80,
                    width: 150,
                    // color: Colors.red,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10),

                    ),
                    child: Center(child: Text("Hello")),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 80,
                    width: 150,
                    // color: Colors.red,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10),

                    ),
                    child: Center(child: Text("Hello")),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 80,
                    width: 150,
                    // color: Colors.red,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10),

                    ),
                    child: Center(child: Text("Hello")),
                  ),
                  SizedBox(width: 10,),
                ],
              ),
            ),

            ListTile(
              subtitle: Text("Recent Posts"),
              trailing: Icon(Icons.arrow_right_alt),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                // scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    height: 300,
                    width: 200,
                    // color: Colors.red,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10),

                    ),
                    child: Center(child: Text("Hello")),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 300,
                    width: 200,
                    // color: Colors.red,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10),

                    ),
                    child: Center(child: Text("Hello")),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 300,
                    width: 200,
                    // color: Colors.red,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10),

                    ),
                    child: Center(child: Text("Hello")),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 300,
                    width: 200,
                    // color: Colors.red,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10),

                    ),
                    child: Center(child: Text("Hello")),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 300,
                    width: 200,
                    // color: Colors.red,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10),

                    ),
                    child: Center(child: Text("Hello")),
                  ),
                  SizedBox(width: 10,),
                ],
              ),
            ),
            ListTile(
              subtitle: Text("Popular Posts"),
              trailing: Icon(Icons.arrow_right_alt),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                // scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    height: 300,
                    width: 200,
                    // color: Colors.red,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10),

                    ),
                    child: Center(child: Text("Hello")),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 300,
                    width: 200,
                    // color: Colors.red,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10),

                    ),
                    child: Center(child: Text("Hello")),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 300,
                    width: 200,
                    // color: Colors.red,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10),

                    ),
                    child: Center(child: Text("Hello")),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 300,
                    width: 200,
                    // color: Colors.red,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10),

                    ),
                    child: Center(child: Text("Hello")),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 300,
                    width: 200,
                    // color: Colors.red,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10),

                    ),
                    child: Center(child: Text("Hello")),
                  ),
                  SizedBox(width: 10,),
                ],
              ),
            ),
          ],
        )
      ),
    );
  }
}
