import 'package:flutter/material.dart';
import 'package:food_app/config/colors.dart';

import '../home_screens/drawer.dart';

class MyProfile extends StatelessWidget {



  const MyProfile({Key? key}) : super(key: key);

  @override


  Widget listTile({required IconData icon,required String title}){
    return Column(
      children: <Widget>[
        Divider(height: 1,),
        ListTile(
          leading:Icon(icon),
          title: Text(title),
          trailing: Icon(Icons.arrow_forward_ios,size: 15,),
        )
      ],
    );
  }







  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      drawer: DrawerSide(),
      appBar: AppBar(
        elevation:0,
        backgroundColor: primaryColor,
        title: Text("My Profile"),
      ),
      body: Stack(
        children: [
          Container(
            height: 100,
            child: Padding(
              padding: const EdgeInsets.only(top: 75, left: 125),
              child: Row(
                children: [
                  Text(
                    "Ranjeet Shrestha",
                    style: TextStyle(
                      color: scaffoldBackgroundColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 17,
                    ),
                  ),


                  Padding(
                    padding: const EdgeInsets.only(bottom: 2,  left:70),
                    child: CircleAvatar(
                      radius: 11,
                      backgroundColor:scaffoldBackgroundColor,
                      child: CircleAvatar(
                        child: Icon(Icons.edit,color: scaffoldBackgroundColor, size:10,),
                        radius: 9,
                        backgroundColor: primaryColor,
                      ),
                    ),
                  )
                ],
              ),
            ),
            color: primaryColor,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Container(
              height: 550,
              width: double.infinity,
              decoration: BoxDecoration(
                color: scaffoldBackgroundColor,
                borderRadius: BorderRadius.only(
                  topLeft:Radius.circular(20),
                  topRight: Radius.circular(20),)
              ),
             
                child: ListView(
                  children: [
                    Padding(
                       padding: const EdgeInsets.only(top: 2, left: 125 ,right: 2 ,bottom: 50),
                      child: Text(
                        "shrestharanjit2014@gmail.com",
                        style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                    ),


                    listTile(
                      icon: Icons.add_shopping_cart,
                      title: "My Orders",
                    ),
                    
                    listTile(
                      icon: Icons.location_on_outlined,
                      title: "My Delivery Address",
                    ),
                    listTile(
                      icon: Icons.person_outline,
                      title: "Refer Friends",
                    ),
                    listTile(
                      icon: Icons.file_copy_outlined,
                      title: "Terms  & Conditions",
                    ),
                    listTile(
                      icon: Icons.policy_outlined,
                      title: "Privacy Policy",
                    ),
                    listTile(
                      icon: Icons.account_balance_outlined,
                      title: "About",
                    ),
                    listTile(
                      icon: Icons.exit_to_app_outlined,
                      title: "Log Out",
                    ),
                  ],
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
