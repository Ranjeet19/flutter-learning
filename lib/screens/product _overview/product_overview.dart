// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:food_app/config/colors.dart';

enum SignInCharacter { fill, outline }

class ProductOverview extends StatefulWidget {



  // const ProductOverview({Key? key}) : super(key: key);
  
  final String productName;
  final String productImage;
  ProductOverview({required this.productImage, required this.productName});

  @override
  State<ProductOverview> createState() => _ProductOverviewState();
}

class _ProductOverviewState extends State<ProductOverview> {
  SignInCharacter _character = SignInCharacter.fill;

  Widget buttonNavigator(
      {required Color iconColor,
      required Color backgroundColor,
      required Color color,
      required IconData iconData,
      required String title}) {
    return Expanded(
        child: Container(
      padding: EdgeInsets.all(20),
      color: backgroundColor,
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Icon(iconData, size: 17, color: iconColor),
        SizedBox(
          width: 5,
        ),
        Text(
          title,
          style: TextStyle(color: textColor),
        )
      ]),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Row(children: [
          buttonNavigator(
            backgroundColor: textColor,
            color: Colors.white70,
            iconColor: Colors.grey,
            title: "Add to  Whitelist",
            iconData: Icons.favorite_border_outlined,
          ),
          buttonNavigator(
            backgroundColor: primaryColor,
            color: textColor,
            iconColor: Colors.white70,
            title: "Go to the cart",
            iconData: Icons.shopping_cart_outlined,
          ),
        ]),
        appBar: AppBar(
          iconTheme: IconThemeData(color: textColor),
          backgroundColor: primaryColor,
          title: Text("Prodcuct Overview"),
        ),
        body: Column(
          children: [
            Expanded(
                flex: 2,
                child: Container(
                  width: double.infinity,
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(widget.productName,
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        subtitle: Text(" \$50"),
                      ),
                      Container(
                        height: 250,
                        padding: EdgeInsets.all(20),
                        child: Image.network(
                           widget.productImage,),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        width: double.infinity,
                        child: Text("Available Options",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: textColor, fontWeight: FontWeight.w600)),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 3,
                                  backgroundColor: Colors.green[700],
                                ),
                                Radio(
                                  value: SignInCharacter.fill,
                                  groupValue: _character,
                                  activeColor: Colors.green[700],
                                  onChanged: (value) {
                                    setState(() {
                                      // _character= value;
                                    });
                                  },
                                ),
                              ],
                            ),
                            Text("\$50"),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 5),
                              decoration: BoxDecoration(
                                border: Border.all(color: textColor),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Row(children: [
                                Icon(Icons.add, size: 15, color: primaryColor),
                                Text(
                                  "Add",
                                  style: TextStyle(
                                      fontSize: 13, color: primaryColor),
                                ),
                              ]),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "All About This Products :-",
                        style: TextStyle(
                          color: textColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                      ),
                      // SizedBox(height: 5,),

                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 4, horizontal: 7),
                        child: Text(
                          "Newari foods include Alu tama, Haku Choila, Chatamari, Gundruk, Egg bara, Juju dhau and more. You must try Newari foods once in your lifetime.",
                          style: TextStyle(
                            color: textColor,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ]),
              ),
            ),
          ],
        ));
  }
}
