import 'package:flutter/material.dart';
import 'package:tt/User/user_model.dart';
import 'package:tt/User/users_data.dart';

class UserListClass extends StatefulWidget {
  const UserListClass({Key? key}) : super(key: key);

  @override
  _UserListClassState createState() => _UserListClassState();
}

class _UserListClassState extends State<UserListClass> {
  List<User> users= [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    users = getUserList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User List"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index){
            return Container(
              child: Column(
                children: [
                  Text('${users[index].name}'),
                  Text('${users[index].phone}'),
                  Text('${users[index].email}'),
                  Text('${users[index].phone}'),
                  Text('${users[index].address}'),
                ],
              ),
            );
          }
      ),
    );
  }
}
