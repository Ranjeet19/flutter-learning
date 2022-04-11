import 'package:flutter/material.dart';
import 'package:food_app/screens/home_screens/home_screen.dart';
import 'package:food_app/screens/my_profile/my_profile.dart';

class DrawerSide extends StatelessWidget {
  const DrawerSide({Key? key}) : super(key: key);

  Widget listTile(
      {required IconData icon,
      required String title,
      required VoidCallback onTap}) {
    return ListTile(
      onTap: onTap,
      leading: Icon(icon, size: 24),
      title: Text(
        title,
        style: TextStyle(color: Colors.black45, fontSize: 16),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
      color: Color(0xffd6b738),
      child: ListView(
        children: <Widget>[
          DrawerHeader(
              child: Row(children: <Widget>[
            CircleAvatar(
              radius: 40,
              backgroundColor: Colors.white,
              child:
                  CircleAvatar(
                    backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/d/db/Lapte_Bhowe.jpg/220px-Lapte_Bhowe.jpg"),
                    radius: 36, backgroundColor: Color(0xffd6b2323)),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Hello Foodiee!!",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 23,
                  width: 60,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 11.0),
                    child: Text(
                      "LogIn",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                )
              ],
            )
          ])),

          listTile(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: ((context) => HomeScreen())));
              },
              icon: Icons.home,
              title: "Home"),

          listTile(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: ((context) => MyProfile())));
              },
              icon: Icons.shop_outlined,
              title: "Review Cart"),

          listTile(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: ((context) => MyProfile())));
              },
              icon: Icons.person_outline,
              title: "My Profile"),

          listTile(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: ((context) => MyProfile())));
              },
              icon: Icons.notifications_outlined,
              title: "Notification"),

          listTile(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: ((context) => MyProfile())));
              },
              icon: Icons.star_outline,
              title: "Rating & Reviews"),

          listTile(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: ((context) => MyProfile())));
              },
              icon: Icons.favorite_outline,
              title: "Whitelist"),

          listTile(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: ((context) => MyProfile())));
              },
              icon: Icons.copy_outlined,
              title: "Raise a Compliment"),

          listTile(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: ((context) => MyProfile())));
              },
              icon: Icons.format_quote_outlined,
              title: "FAQs"),

          // SizedBox(height: 5,),
          Container(
            height: 80,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 10,
              ),
              child: Column(children: [
                Row(
                  children: [
                    Text(
                      "Contact For Support",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                SizedBox(
                  height: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Call Us :",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(" 9823292366"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Mail Us :",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("shrestharohit2014@gmail.com"),
                  ],
                )
              ]),
            ),
          ),
          Center(
              child: Text(
            " V2.0",
            style: TextStyle(fontWeight: FontWeight.bold),
          )),
        ],
      ),
    ));
  }
}
