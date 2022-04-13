import 'package:flutter/material.dart';
import 'package:food_app/config/colors.dart';

class SingleItem extends StatelessWidget {
  bool isBool = false;
  SingleItem({required this.isBool});

  // const SingleItem ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: Row(
        children: [
          Expanded(
              child: Container(
            height: 100,
            child: Center(
                child: Image.network(
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/d/db/Lapte_Bhowe.jpg/220px-Lapte_Bhowe.jpg")),
          )),
          SizedBox(
            width: 10,
          ),
          Expanded(
              child: Container(
            height: 100,
            child: Column(
                mainAxisAlignment: isBool == false
                    ? MainAxisAlignment.spaceAround
                    : MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text("Prodect Name ",
                          style: TextStyle(
                            color: textColor,
                            fontWeight: FontWeight.bold,
                          )),
                      Text(
                        "50\$/50 Gram",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                  isBool == false
                      ? Container(
                          margin: EdgeInsets.only(right: 15),
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          height: 35,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(children: [
                            Expanded(
                              child: Text(
                                "50 Gram",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 14),
                              ),
                            ),
                            Center(
                              child: Icon(
                                Icons.arrow_drop_down,
                                size: 20,
                                color: primaryColor,
                              ),
                            )
                          ]),
                        )
                      : Text("50 Gram"),
                ]),
          )),
          Expanded(
            child: Container(
              height: 100,
              padding: isBool == false
                  ? EdgeInsets.symmetric(horizontal: 15, vertical: 32)
                  : EdgeInsets.only(right: 15, left: 15),
              child: isBool == false
                  ? Container(
                      height: 25,
                      width: 40,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.add,
                                size: 20,
                                color: primaryColor,
                              ),
                              Text(
                                "Add",
                                style: TextStyle(color: primaryColor),
                              )
                            ]),
                      ),
                    )
                  : Column(
                      children: [
                        Icon(
                          Icons.delete,
                          size: 25,
                          color: Colors.black54,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 25,
                          width: 60,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.add,
                                    size: 20,
                                    color: primaryColor,
                                  ),
                                  Text(
                                    "Add",
                                    style: TextStyle(color: primaryColor),
                                  )
                                ]),
                          ),
                        )
                      ],
                    ),
            ),
          ),

               isBool==false?Container():Divider(
                    height:1,
                    color:Colors.black45,
                  ),
        ],
      ),
    );
  }
}
