import 'package:flutter/material.dart';
import 'package:untitled2/models/user/user_model.dart';

class UserScreen extends StatelessWidget {
  List<UserModel> users = [
    UserModel(
      phone: "0771259244",
      name: "mustafa",
      id: 1,
    ),
    UserModel(
      phone: "077165522",
      name: "ali",
      id: 2,
    ),
    UserModel(
      phone: "07716553266",
      name: "saad",
      id: 3,
    ),
    UserModel(
      phone: "07726552326",
      name: "kareem",
      id: 4,
    ),
    UserModel(
      phone: "0771259244",
      name: "mustafa",
      id: 1,
    ),
    UserModel(
      phone: "077165522",
      name: "ali",
      id: 2,
    ),
    UserModel(
      phone: "07716553266",
      name: "saad",
      id: 3,
    ),
    UserModel(
      phone: "07726552326",
      name: "kareem",
      id: 4,
    ),
    UserModel(
      phone: "0771259244",
      name: "mustafa",
      id: 1,
    ),
    UserModel(
      phone: "077165522",
      name: "ali",
      id: 2,
    ),
    UserModel(
      phone: "07716553266",
      name: "saad",
      id: 3,
    ),
    UserModel(
      phone: "07726552326",
      name: "kareem",
      id: 4,
    ),
    UserModel(
      phone: "0771259244",
      name: "mustafa",
      id: 1,
    ),
    UserModel(
      phone: "077165522",
      name: "ali",
      id: 2,
    ),
    UserModel(
      phone: "07716553266",
      name: "saad",
      id: 3,
    ),
    UserModel(
      phone: "07726552326",
      name: "kareem",
      id: 4,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Users",
        ),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => buildUserItem(users[index]),
        separatorBuilder: (context, index) => Container(
          width: double.infinity,
          height: 1.0,
          color: Colors.red,
        ),
        itemCount: users.length,
      ),
    );
  }

  Widget buildUserItem(UserModel user) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 25.0,
              child: Text(
                "${user.id}",
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              width: 20.0,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${user.name}",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                Text(
                  "${user.phone}",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
}
