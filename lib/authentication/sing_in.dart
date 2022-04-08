import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class SignIn extends StatelessWidget {
  const SignIn({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // decoration: BoxDecoration(
        //   image:DecorationImage(
        //     fit: BoxFit.cover,
        //     image: AssetImage("assests/background.png"),
        //   ),

        // ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 400,
              width: double.infinity,
              color:Colors.red,
              child: Column(
                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                children:<Widget> [
           
                 Text("Sign In To Continue"),

                  Text("Food App",
                  style: TextStyle(fontSize: 50,color: Colors.white,
                  shadows: [
                    BoxShadow(
                      blurRadius: 5,
                      color: Colors.green.shade900,
                      offset: Offset(3,3),
                    )
                  ]
                  
                  ),),

                  Column(  children: [
                  //       SignInButton(
                  //   Buttons.Apple,
                  //   text:"Sign In With Apple",
                  //   onPressed: (){},
                  // ),
                  // SignInButton(
                  //   Buttons.Google,
                  //   text:"Sign In With Google",
                  //   onPressed: (){},
                  // ),

                  ],   
                  ),

                 Column(children: [ Text("By Sign In you are ready to our",style: TextStyle(color: Colors.grey[700]),),
                  Text("Terms and Privacy Policy.",style: TextStyle(color:Colors.grey[700]),),],)
                ]),
            )
          ],
        ),
      ),


      
    );
  }
}