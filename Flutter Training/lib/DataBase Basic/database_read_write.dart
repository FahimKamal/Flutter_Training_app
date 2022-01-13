import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class DatabaseBasic extends StatefulWidget {
  const DatabaseBasic({Key? key}) : super(key: key);

  @override
  _DatabaseBasicState createState() => _DatabaseBasicState();
}

class _DatabaseBasicState extends State<DatabaseBasic> {

  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();

  String? docID;

  bool longPressActive = false;

  void showMessage(String message){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
      duration: const Duration(seconds: 3),
      action: SnackBarAction(
        label: 'ACTION',
        onPressed: () { },
      ),
    ));
  }

  create() async {
    try{
      await FirebaseFirestore.instance.collection('user').doc().set(
        {
          'name': name.text,
          'email': email.text
        }
      );
    } catch(e){
      print(e);
    }
    showMessage('New User is created.');
  }

  update() async {
    try{
      await FirebaseFirestore.instance.collection('user').doc(docID).update({
        'name': name.text,
        'email': email.text
      });

    } catch(e){
      print(e);
    }
    showMessage('User Data Updated.');
  }

  delete() async {
    try{
      await FirebaseFirestore.instance.collection('user').doc(docID).delete();
    } catch(e){
      print(e);
    }
    showMessage('User Data is Deleted.');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Database Basic"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          child: StreamBuilder(
            stream: FirebaseFirestore.instance.collection('user').snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if(snapshot.hasData){
                return SlidableAutoCloseBehavior(
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    primary: true,
                    itemCount: snapshot.data!.docs.length,
                    itemBuilder: (context, index){
                      QueryDocumentSnapshot networkData = snapshot.data!.docs[index];
                      return Card(
                        child: Slidable(
                          groupTag: 'A',
                          startActionPane: ActionPane(
                            extentRatio: 0.25,
                            motion: DrawerMotion(),
                            children: [
                              SlidableAction(
                                label: "Update",
                                icon: Icons.update,
                                backgroundColor: Colors.blue,
                                foregroundColor: Colors.white,
                                onPressed: (context){
                                  setState(() {
                                    docID = networkData.id;
                                    name.text = networkData['name'];
                                    email.text = networkData['email'];
                                  });
                                  _customShowDialog(
                                      dialogTitle: "Update Data...",
                                      addOrCreateBtnText: "Update",
                                      onPressedFunctionForAddOrCreateBtn: update);
                                },
                              )
                            ],
                          ),
                          endActionPane: ActionPane(
                            extentRatio: 0.25,
                            motion: DrawerMotion(),
                            children: [
                              SlidableAction(
                                label: "Delete",
                                icon: Icons.delete,
                                backgroundColor: Colors.red,
                                foregroundColor: Colors.white,
                                onPressed: (context){
                                  docID = networkData.id;
                                  showDialog(
                                      context: context,
                                      builder: (context){
                                        return AlertDialog(
                                          title: Text("Confirm!!!"),
                                          content: Text("Are you sure you?"),
                                          actions: [
                                            ElevatedButton(
                                                onPressed: (){
                                                  delete();
                                                  Navigator.pop(context);
                                                },
                                                child: Text("Yes")),
                                            ElevatedButton(
                                                onPressed: (){
                                                  Navigator.pop(context);
                                                },
                                                child: Text("No")),
                                          ],
                                        );
                                      }
                                  );
                                },
                              )
                            ],
                          ),
                          child: ListTile(
                            onLongPress: (){
                              setState(() {
                                longPressActive = !longPressActive;
                              });
                            },
                            title: Text(networkData['name']),
                            subtitle: Text(networkData['email']),
                            trailing: longPressActive? IconButton(
                              onPressed: (){},
                                icon: Icon(Icons.delete, color: Colors.red,)
                            ): Text(""),
                            // leading: Text(networkData['test']),
                          ),
                        ),
                      );
                    }
                  ),
                );
              }
              return const Center(child: CircularProgressIndicator());
            }
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _customShowDialog(
              dialogTitle: "Add New...",
              addOrCreateBtnText: "Add",
              onPressedFunctionForAddOrCreateBtn: create);
        },
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        child: Icon(Icons.add),
      ),
    );
  }

  void _customShowDialog(
      {required String dialogTitle,
      required String addOrCreateBtnText,
      required VoidCallback onPressedFunctionForAddOrCreateBtn}){
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(dialogTitle),
            content: ListView(
              shrinkWrap: true,
              children: [
                _customTextField(name, "Name"),
                SizedBox(height: 10,),
                _customTextField(email, "Email"),
              ],
            ),
            actions: [
              TextButton(
                  onPressed: (){
                    onPressedFunctionForAddOrCreateBtn();
                    setState(() {
                      name.clear();
                      email.clear();
                    });
                    Navigator.pop(context);
                  },
                  child: Text(addOrCreateBtnText)),
              TextButton(
                  onPressed: (){
                    setState(() {
                      name.clear();
                      email.clear();
                    });
                    Navigator.pop(context);
                  },
                  child: Text("Cancel")),
            ],
          );
        }
    );
  }

  Widget _customTextField(TextEditingController controller, String label){
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        label: Text(label),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: 2),
            borderRadius: BorderRadius.circular(15)
        ),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: 2),
            borderRadius: BorderRadius.circular(15)
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: 2),
            borderRadius: BorderRadius.circular(15)
        ),
      ),
    );
  }
}
