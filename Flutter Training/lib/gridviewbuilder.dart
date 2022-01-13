import 'package:flutter/material.dart';

class GridViewBuilder extends StatefulWidget {
  const GridViewBuilder({Key? key}) : super(key: key);

  @override
  _GridViewBuilderState createState() => _GridViewBuilderState();
}

class _GridViewBuilderState extends State<GridViewBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gridview With Builder"),
        centerTitle: true,
        leading: Icon(Icons.home),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            // maxCrossAxisExtent: 400,
            crossAxisCount: 3,
            childAspectRatio: 2/3,
            // mainAxisExtent: 300
          ),
          itemCount: 30,
          itemBuilder: (context, int index){
            return Card(
              color: Colors.red,
              shadowColor: Colors.deepPurpleAccent,
              elevation: 10,
              child: ListTile(
                onTap: (){
                  Navigator.push( context,MaterialPageRoute(builder: (context) => GridViewBuilder()));
                },
                title: Text("Title"),
                leading: Icon(Icons.ac_unit_rounded),
                trailing: Icon(Icons.ac_unit_rounded),
                hoverColor: Colors.blue,
                focusColor: Colors.black87,
                selectedTileColor: Colors.green,
              ),
            );
          },
      ),
    );
  }
}
