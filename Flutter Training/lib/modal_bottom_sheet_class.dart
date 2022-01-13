import 'package:flutter/material.dart';

class ModalBottomSheetClass extends StatefulWidget {
  const ModalBottomSheetClass({Key? key}) : super(key: key);

  @override
  _ModalBottomSheetClassState createState() => _ModalBottomSheetClassState();
}

class _ModalBottomSheetClassState extends State<ModalBottomSheetClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Modal Bottom Sheet"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 10,
          itemBuilder: (context, index){
            return Card(
              child: ListTile(
                title: Text("Mahmud Vai"),
                subtitle: Text("Mahmud Vai very good boy."),
                leading: Icon(Icons.handyman_sharp),
                trailing: Icon(Icons.person),
                onTap: (){
                  showModalBottomSheet(
                      isDismissible: false,
                      constraints: BoxConstraints(
                        maxHeight: 300
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      context: context,
                      builder: (BuildContext context){
                        return Padding(
                          padding: EdgeInsets.all(0),
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Theme.of(context).primaryColor,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                  ),
                                ),
                                alignment: Alignment.center,
                                child: IconButton(
                                    onPressed: (){
                                      Navigator.pop(context);
                                    },
                                    icon: Icon(Icons.clear)),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: GridView.builder(
                                    shrinkWrap: true,
                                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 3,
                                          crossAxisSpacing: 10,
                                          mainAxisSpacing: 10
                                      ),
                                      itemCount: 10,
                                      itemBuilder: (context, index){
                                        return Container(
                                          decoration: BoxDecoration(
                                            color: Colors.greenAccent,
                                            borderRadius: BorderRadius.circular(10)
                                          ),

                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text("This is one"),
                                              Text("This is two"),
                                            ],
                                          ),
                                        );
                                      }
                                  ),
                                ),
                              )
                              // Container(child: Text("Hello"),)
                            ],
                          ),
                        );
                      }
                  );
                },
              ),
            );
          }
      ),
    );
  }
}
