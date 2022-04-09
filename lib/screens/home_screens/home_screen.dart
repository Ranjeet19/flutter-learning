import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  // this  is the function where first scrollable foods are placed
  Widget singleProducts() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: 191,
      width: 150,
      decoration: BoxDecoration(
        color: Colors.white54,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 0,
            child: Image.network(
                "https://upload.wikimedia.org/wikipedia/commons/thumb/d/db/Lapte_Bhowe.jpg/220px-Lapte_Bhowe.jpg"),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Newari Food",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Rs 150/- ",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            height: 25,
                            width: 70,
                            decoration: BoxDecoration(
                              // color: Colors.red,
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(color: Colors.grey),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text("50 gm",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black54,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  Icon(
                                    Icons.arrow_drop_down_outlined,
                                    color: Colors.yellow,
                                    size: 20,
                                  )
                                ],
                              ),
                            )),
                        Container(
                            height: 25,
                            width: 50,
                            //  color: Colors.blue,
                            decoration: BoxDecoration(
                              // color: Colors.red,
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(color: Colors.grey),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 6.0),
                                  child: Icon(
                                    Icons.remove,
                                    size: 15,
                                  ),
                                ),
                                Text(
                                  "1",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black54,
                                      fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 6.0),
                                  child: Icon(
                                    Icons.add,
                                    size: 15,
                                  ),
                                ),
                              ],
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }


  Widget listTile({required IconData icon,required String title}){
    return ListTile(
      leading:Icon(icon,size:24),
      title: Text(title,
      style: TextStyle(color: Colors.black45,fontSize: 16),),
      );

    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffcbcbcb),
      drawer: Drawer(

        child:Container(
          color:Color(0xffd6b738),
          child: ListView(
            children: <Widget>[
                DrawerHeader(
                  child: Row(
                    children:<Widget>[
                    
                      CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius:36,
                          backgroundColor:Color(0xffd6b2323) ),
                        
                      ),
                    
                    SizedBox(width: 10,),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment:CrossAxisAlignment.start,
                      children: [
                        Text("Hello Foodiee!!",style:TextStyle(fontSize: 16,fontWeight: FontWeight.w700)),
                        SizedBox(height: 5,),
                        Container(
                       
                          height: 23,
                          width: 60,
                          decoration: BoxDecoration(

                            border: Border.all(),
                            borderRadius: BorderRadius.circular(20),
                            
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal:11.0),
                            child: Text("LogIn",style: TextStyle(fontSize: 14,fontWeight:FontWeight.w500,color:Colors.white),),
                          ),
                        )
                      ],
                    )
                    ]
                  )

                ),


                listTile(icon: Icons.home, title: "Home"),
                
                listTile(icon: Icons.shop_outlined, title: "Review Cart"),

                listTile(icon: Icons.person_outline, title: "My Profile"),

                listTile(icon: Icons.notifications_outlined, title: "Notification"),

                listTile(icon: Icons.star_outline, title: "Rating & Reviews"),

                listTile(icon: Icons.favorite_outline, title: "Whitelist"),

                listTile(icon: Icons.copy_outlined, title: "Raise a Compliment"),
                
                listTile(icon: Icons.format_quote_outlined, title: "FAQs"),


                    // SizedBox(height: 5,),
                Container(
                    height: 100,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      children: [
                      Row(
                        children: [
                          Text("Contact For Support",style: TextStyle(fontWeight: FontWeight.w700),),
                        ],
                      ),
                      SizedBox(height: 1,),
                    

                      Row(
                          
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                        Text("Call Us :",style: TextStyle(fontWeight: FontWeight.w700),),
                         SizedBox(width: 10,),

                        Text(" 9823292366"),

                      ],),

                      Row(
                         mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                        Text("Mail Us :",style: TextStyle(fontWeight: FontWeight.w700),),
                        SizedBox(width: 10,),
                        Text("shrestharohit2014@gmail.com"),
                      ],)
                    ]),
                  ),
                ),


                // Text(" V2.0",style:TextStyle(fontWeight: FontWeight.bold),),



            ],
          ),
        ),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          "Home",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Color(0xffd6b738),
        actions: [
          CircleAvatar(
            radius: 15,
            backgroundColor: Color(0xffd4d181),
            // color:Colors.white,
            child: Icon(Icons.search, size: 18, color: Colors.black),
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
          CircleAvatar(
            backgroundColor: Color(0xffd4d181),
            radius: 15,
            child: Icon(
              Icons.shopping_cart,
              size: 18,
              color: Colors.black,
            ),
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 8,
            ),
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7dNo_6pCKAmLb8s3SktQMuK2aOhuAERTQug&usqp=CAU"))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Best Cultural Foods",
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  "View All",
                  style: TextStyle(color: Colors.grey, fontSize: 13),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                ],
              ),
            ),
          ),


            Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Dry Foods",
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  "View All",
                  style: TextStyle(color: Colors.grey, fontSize: 13),
                ),
              ],
            ),
          ),


          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                ],
              ),
            ),
          ),
                    Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Best Foods",
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  "View All",
                  style: TextStyle(color: Colors.grey, fontSize: 13),
                ),
              ],
            ),
          ),


          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
