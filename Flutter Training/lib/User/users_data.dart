import 'package:tt/User/user_model.dart';

List<User> getUserList(){
  List<User> userList = <User>[];
  User user = User();
  user.name = "Fahim Kamal";
  user.phone = "01917447979";
  user.email = "fahimkamal63@gmail.com";
  user.gender = "Male";
  user.address = "Bonani";
  userList.add(user);

  user = User();
  user.name = "Rafiul Islam Sayem";
  user.phone = "01712348905";
  user.email = "Sayem63@gmail.com";
  user.gender = "Male";
  user.address = "Colony";
  userList.add(user);

  user = User();
  user.name = "Kamal";
  user.phone = "01917447979";
  user.email = "kamal63@gmail.com";
  user.gender = "Male";
  user.address = "Bonani";
  userList.add(user);

  user = User();
  user.name = "Sakib";
  user.phone = "01917447934";
  user.email = "fahim63@gmail.com";
  user.gender = "Male";
  user.address = "Sathmatha";
  userList.add(user);

  // user = User(name: "kamal", phone: "01258789", email: "fkjsbfk", gender: "Male", address: "fnjdfksa");
  // userList.add(user);

  return userList;
}