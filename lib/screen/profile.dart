// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:book_mart_project/data/profile_data.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white24,
          automaticallyImplyLeading: false,
          title: Center(
              child: Text(
            "My Profile",
            style: TextStyle(color: Colors.black),
          ))),
      body: Container(
        padding: EdgeInsets.only(left: 15, right: 15, top: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundImage: NetworkImage(
                      "https://aboutme-images-1.s3.amazonaws.com/background/users/a/b/u/abubakar9999_1605285555_568.jpg"),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Abu Bakar",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(
                        "abubakar38@gmail.com",
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Flexible(
              fit: FlexFit.tight,
              child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: profileData.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      contentPadding: EdgeInsets.all(0),
                      leading: Icon(
                        profileData[index]['Icon'],
                      ),
                      title: Text(profileData[index]['tittle']),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
