import 'package:flutter/material.dart';
import 'package:food_app/config/colors.dart';

import '../home_screens/drawer.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      drawer: DrawerSide(),
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text("My Profile"),
      ),
      body: Stack(
        children: [
          Container(
            height: 100,
            child: Padding(
              padding: const EdgeInsets.only(top: 75, left: 125),
              child: Text(
                "Ranjeet Shrestha",
                style: TextStyle(
                  color: scaffoldBackgroundColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
              ),
            ),
            color: primaryColor,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Container(
              height: 550,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(top: 2, left: 125),
                child: Text(
                  "shrestharanjit2014@gmail.com",
                  style: TextStyle(
                    color: primaryColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: scaffoldBackgroundColor,
                borderRadius: BorderRadius.only(
                  topLeft:Radius.circular(20),
                  topRight: Radius.circular(20),)
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 55, left: 40),
            child: CircleAvatar(
              radius: 40,
              backgroundColor: primaryColor,
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://3.bp.blogspot.com/-eXIP5zRiFPU/W4zFLF6GSLI/AAAAAAAAQWw/HxXI27Mj1yoLdHxMe7h_tPrEw-c9vZmzgCLcBGAs/s640/Momo.jpg"),
                backgroundColor: Colors.green,
                radius: 35,
              ),
            ),
          )
        ],
      ),
    );
  }
}
