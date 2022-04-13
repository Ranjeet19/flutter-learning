import 'package:flutter/material.dart';
import 'package:food_app/config/colors.dart';
import 'package:food_app/widgets/single_item.dart';

class ReviewCart extends StatelessWidget {
  const ReviewCart({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: ListTile(
        title: Text("Total Amount",),
        subtitle: Text("\$170.0 ",style:TextStyle(color: Colors.green[900])),
        trailing: Container(
          width:160,
          child:MaterialButton(
            child: Text("Submit"),
            color: primaryColor,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            onPressed: (){},
          )
        ),
      ),
      appBar:AppBar(
        backgroundColor: primaryColor,
        title: Text("Review"),
      ),


      body:ListView(
        children: [
          SizedBox(height: 10,),

            SingleItem(isBool: true,),
          SingleItem(isBool: true),
          SingleItem(isBool: true),
          SingleItem(isBool: true),
          SingleItem(isBool: true),
 
        SizedBox(height: 10,)
        ]
      )
    );
  }
}