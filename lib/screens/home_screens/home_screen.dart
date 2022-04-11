import 'package:flutter/material.dart';
import 'package:food_app/config/colors.dart';
import 'package:food_app/screens/home_screens/single_product.dart';
import 'package:food_app/screens/product%20_overview/product_overview.dart';
import 'drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  // this  is the function where first scrollable foods are placed
  // Widget singleProducts() {
  // }

  Widget _buildCulturalFoods(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SingalProduct(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ProductOverview(
                        productName: "Newari Food",
                        productImage:
                            "https://upload.wikimedia.org/wikipedia/commons/thumb/d/db/Lapte_Bhowe.jpg/220px-Lapte_Bhowe.jpg"),
                  ));
                },
                productImage:
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/d/db/Lapte_Bhowe.jpg/220px-Lapte_Bhowe.jpg",
                productName: "Newari Food",
              ),
              SingalProduct(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ProductOverview(
                      productImage:
                          "http://www.beyultreks.com/wp-content/uploads/2017/06/dal-bhat-Nepalese-food.jpg",
                      productName: "Thakali Food",
                    ),
                  ));
                },
                productImage:
                    "http://www.beyultreks.com/wp-content/uploads/2017/06/dal-bhat-Nepalese-food.jpg",
                productName: "Thakali Food",
              ),
              SingalProduct(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ProductOverview(
                      productImage:
                          "https://www.thegundruk.com/wp-content/uploads/2016/01/IMG_0161.jpg",
                      productName: "Tharu Food",
                    ),
                  ));
                },
                productImage:
                    "https://www.thegundruk.com/wp-content/uploads/2016/01/IMG_0161.jpg",
                productName: "Tharu Food",
              ),
              SingalProduct(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ProductOverview(
                      productImage:
                          "https://www.tourismmail.com/public/uploads/2018/09/images/magar-food-festival.jpg",
                      productName: "Magar Food",
                    ),
                  ));
                },
                productImage:
                    "https://www.tourismmail.com/public/uploads/2018/09/images/magar-food-festival.jpg",
                productName: "Magar Food",
              ),
              SingalProduct(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ProductOverview(
                      productImage:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDEK8UEZJek-8Tll0saRqNlTBbmChYgWbvkbeIVgf6pnlSZ0-Eq7oxHcmfZxPBn4EeUUM&usqp=CAU",
                      productName: "Gundruk Dhindo",
                    ),
                  ));
                },
                productImage:
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDEK8UEZJek-8Tll0saRqNlTBbmChYgWbvkbeIVgf6pnlSZ0-Eq7oxHcmfZxPBn4EeUUM&usqp=CAU",
                productName: "Gundruk Dhindo",
              ),
              SingalProduct(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ProductOverview(
                      productImage:
                          "https://gallery.thelongestwayhome.com/img/s1/v56/p630569877-4.jpg",
                      productName: "Cheeura Vojh",
                    ),
                  ));
                },
                productImage:
                    "https://gallery.thelongestwayhome.com/img/s1/v56/p630569877-4.jpg",
                productName: "Cheeura Vojh",
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildFastFoods(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Best Fast Foods Of Nepal",
                style: TextStyle(fontSize: 18),
              ),
              Text(
                "View All",
                style: TextStyle(color: textColor, fontSize: 13),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SingalProduct(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ProductOverview(
                      productImage:
                          "https://3.bp.blogspot.com/-eXIP5zRiFPU/W4zFLF6GSLI/AAAAAAAAQWw/HxXI27Mj1yoLdHxMe7h_tPrEw-c9vZmzgCLcBGAs/s640/Momo.jpg",
                      productName: "MOMO's",
                    ),
                  ));
                },
                productImage:
                    "https://3.bp.blogspot.com/-eXIP5zRiFPU/W4zFLF6GSLI/AAAAAAAAQWw/HxXI27Mj1yoLdHxMe7h_tPrEw-c9vZmzgCLcBGAs/s640/Momo.jpg",
                productName: "MOMO's",
              ),
              SingalProduct(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ProductOverview(
                      productImage:
                          "https://media-cdn.tripadvisor.com/media/photo-s/0e/08/54/89/my-burger-meal-rs-250.jpg",
                      productName: "Burger",
                    ),
                  ));
                },
                productImage:
                    "https://media-cdn.tripadvisor.com/media/photo-s/0e/08/54/89/my-burger-meal-rs-250.jpg",
                productName: "Burger",
              ),
              SingalProduct(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ProductOverview(
                      productImage:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEmEX6eXI6fCrIf5ZqQCQdGz4_zQVTctU4HioP-Ml4z3MXlmwhPXnKMoQIGXDTIEfZqH0&usqp=CAU",
                      productName: "Samosa",
                    ),
                  ));
                },
                productImage:
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEmEX6eXI6fCrIf5ZqQCQdGz4_zQVTctU4HioP-Ml4z3MXlmwhPXnKMoQIGXDTIEfZqH0&usqp=CAU",
                productName: "Samosa",
              ),
              SingalProduct(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ProductOverview(
                      productImage:
                          "https://thefoodxp.com/wp-content/uploads/2019/12/6fbc6859-e2b1-499d-b0fa-ada600c9cc3f.jpg",
                      productName: "Crispy KFC",
                    ),
                  ));
                },
                productImage:
                    "https://thefoodxp.com/wp-content/uploads/2019/12/6fbc6859-e2b1-499d-b0fa-ada600c9cc3f.jpg",
                productName: "Crispy KFC",
              ),
              SingalProduct(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ProductOverview(
                      productImage:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUGGLagyB4VLxz8RcxzjnZJKZZ8l4NRf-7U8ZDnnPTo9b9XwbSKZfWwKEfTtbbEQvL8Qo&usqp=CAU",
                      productName: "chowmien",
                    ),
                  ));
                },
                productImage:
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUGGLagyB4VLxz8RcxzjnZJKZZ8l4NRf-7U8ZDnnPTo9b9XwbSKZfWwKEfTtbbEQvL8Qo&usqp=CAU",
                productName: "chowmien",
              ),
              SingalProduct(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ProductOverview(
                      productImage:
                          "https://i0.wp.com/utsav360.com/wp-content/uploads/2019/08/How-to-make-spicy-laphing-noodle.jpg?fit=1203%2C800&ssl=1",
                      productName: "Laphing",
                    ),
                  ));
                },
                productImage:
                    "https://i0.wp.com/utsav360.com/wp-content/uploads/2019/08/How-to-make-spicy-laphing-noodle.jpg?fit=1203%2C800&ssl=1",
                productName: "Laphing",
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _bakeryFoods(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
                style: TextStyle(color: textColor, fontSize: 13),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SingalProduct(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ProductOverview(
                      productImage:
                          "http://4.bp.blogspot.com/-hFFYT7UEBVE/T2i4Z033EOI/AAAAAAAAOVI/9Eqg1-iScuI/s1600/Nepal+2007+134.jpg",
                      productName: "Lakhamari",
                    ),
                  ));
                },
                productImage:
                    "http://4.bp.blogspot.com/-hFFYT7UEBVE/T2i4Z033EOI/AAAAAAAAOVI/9Eqg1-iScuI/s1600/Nepal+2007+134.jpg",
                productName: "Lakhamari",
              ),
              SingalProduct(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ProductOverview(
                      productImage:
                          "https://nepaltraveller.com/images/main/1578894009.sidetrackimageIMG_8166.jpg",
                      productName: "Gwarmari",
                    ),
                  ));
                },
                productImage:
                    "https://nepaltraveller.com/images/main/1578894009.sidetrackimageIMG_8166.jpg",
                productName: "Gwarmari",
              ),
              SingalProduct(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ProductOverview(
                      productImage:
                          "https://myrepublica.nagariknetwork.com/uploads/media/2018/November/tihar-treats.jpg",
                      productName: "Tihar Mithai",
                    ),
                  ));
                },
                productImage:
                    "https://myrepublica.nagariknetwork.com/uploads/media/2018/November/tihar-treats.jpg",
                productName: "Tihar Mithai",
              ),
              SingalProduct(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ProductOverview(
                      productImage:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCDckaKPVnVAB4fvFSoPZhuruXsuuzwCd6-yLlbjeXPqeaGzC88EDvgRUdpgsgbsT01uA&usqp=CAU",
                      productName: "Customezed Cake",
                    ),
                  ));
                },
                productImage:
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCDckaKPVnVAB4fvFSoPZhuruXsuuzwCd6-yLlbjeXPqeaGzC88EDvgRUdpgsgbsT01uA&usqp=CAU",
                productName: "Customezed Cake",
              ),
              SingalProduct(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ProductOverview(
                      productImage:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzd2Av6dok6zkSUjIFG6sb7CqqS5ud5T51WPSx8Vvc3WTkud50N_vIodXfJIp8z7N-lYs&usqp=CAU",
                      productName: "Milk Pedaa",
                    ),
                  ));
                },
                productImage:
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzd2Av6dok6zkSUjIFG6sb7CqqS5ud5T51WPSx8Vvc3WTkud50N_vIodXfJIp8z7N-lYs&usqp=CAU",
                productName: "Milk Pedaa",
              ),
              SingalProduct(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ProductOverview(
                      productImage:
                          "http://nepalecoadventure.com/wp-content/uploads/2016/02/laddu.jpg",
                      productName: "Basen Laddu",
                    ),
                  ));
                },
                productImage:
                    "http://nepalecoadventure.com/wp-content/uploads/2016/02/laddu.jpg",
                productName: "Basen Laddu",
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffcbcbcb),
      drawer: DrawerSide(),
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

          _buildCulturalFoods(context),

          _buildFastFoods(context),

          _bakeryFoods(context),

          // Padding(
          //   padding: const EdgeInsets.all(10.0),
          //   child: SingleChildScrollView(
          //     scrollDirection: Axis.horizontal,
          //     child: Row(
          //       children: <Widget>[
          //         singleProducts(),
          //         singleProducts(),
          //         singleProducts(),
          //         singleProducts(),
          //         singleProducts(),
          //         singleProducts(),
          //         singleProducts(),
          //         singleProducts(),
          //         singleProducts(),
          //         singleProducts(),
          //         singleProducts(),
          //         singleProducts(),
          //         singleProducts(),
          //       ],
          //     ),
          //   ),
          // ),

          //   Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 12),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       Text(
          //         "Dry Foods",
          //         style: TextStyle(fontSize: 18),
          //       ),
          //       Text(
          //         "View All",
          //         style: TextStyle(color: Colors.grey, fontSize: 13),
          //       ),
          //     ],
          //   ),
          // ),

          // Padding(
          //   padding: const EdgeInsets.all(10.0),
          //   child: SingleChildScrollView(
          //     physics: const NeverScrollableScrollPhysics(),
          //     scrollDirection: Axis.horizontal,
          //     child: Row(
          //       children: <Widget>[
          //         singleProducts(),
          //         singleProducts(),
          //         singleProducts(),
          //         singleProducts(),
          //         singleProducts(),
          //         singleProducts(),
          //         singleProducts(),
          //         singleProducts(),
          //         singleProducts(),
          //         singleProducts(),
          //         singleProducts(),
          //         singleProducts(),
          //         singleProducts(),
          //       ],
          //     ),
          //   ),
          // ),
          //           Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 12),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       Text(
          //         "Best Foods",
          //         style: TextStyle(fontSize: 18),
          //       ),
          //       Text(
          //         "View All",
          //         style: TextStyle(color: Colors.grey, fontSize: 13),
          //       ),
          //     ],
          //   ),
          // ),

          // Padding(
          //   padding: const EdgeInsets.all(10.0),
          //   child: SingleChildScrollView(
          //     physics: BouncingScrollPhysics(),
          //     scrollDirection: Axis.horizontal,
          //     child: Row(
          //       children: <Widget>[
          //         singleProducts(),
          //         singleProducts(),
          //         singleProducts(),
          //         singleProducts(),
          //         singleProducts(),
          //         singleProducts(),
          //         singleProducts(),
          //         singleProducts(),
          //         singleProducts(),
          //         singleProducts(),
          //         singleProducts(),
          //         singleProducts(),
          //         singleProducts(),
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
