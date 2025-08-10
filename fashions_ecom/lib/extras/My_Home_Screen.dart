import 'package:fashions_ecom/sneaker_carousel_imageview.dart';
import 'package:fashions_ecom/widget/CustomDisscount.dart';
import 'package:fashions_ecom/widget/CustomNewArrival.dart';
import 'package:fashions_ecom/widget/CustomPopularItems.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 25, top: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                // Firts Line
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.black,
                      child: Padding(
                        padding: EdgeInsets.all(9),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 15),
                              height: 2,
                              width: 16,
                              color: Colors.white,
                            ),
                            SizedBox(height: 6),
                            Container(
                              height: 2,
                              width: double.infinity,
                              color: Colors.white,
                            ),
                            SizedBox(height: 6),
                            Container(
                              margin: EdgeInsets.only(right: 15),
                              height: 2,
                              width: 16,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.search, color: Colors.black, size: 38),
                    ),
                    SizedBox(width: 10),
                  ],
                ),
                SizedBox(height: 0),

                //========================================================================
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      DiscountWidget("assets/images/disscount01.png"),
                      SizedBox(width: 18),
                      DiscountWidget("assets/images/disscount02.png"),
                      SizedBox(width: 18),
                      DiscountWidget("assets/images/disscount01.png"),
                      SizedBox(width: 18),
                      DiscountWidget("assets/images/disscount02.png"),
                      SizedBox(width: 18),
                      DiscountWidget("assets/images/disscount01.png"),
                      SizedBox(width: 18),
                      DiscountWidget("assets/images/disscount02.png"),
                      SizedBox(width: 18),
                    ],
                  ),
                ),

                //================================================================================

                // new Arrival text and view all button
                Row(
                  children: [
                    Text(
                      "New Arrivals",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "View All",
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ),
                    SizedBox(width: 12),
                  ],
                ),

                // New Arrival section
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SneakerProductPage(),
                            ),
                          );
                        },
                        child: CustomNewArrival(
                          "assets/images/newarrival_bag.png",
                          "The Marc Jacobs",
                          "Traveler Tote",
                          "Prize: PKR.5999",
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SneakerProductPage(),
                            ),
                          );
                        },
                        child: CustomNewArrival(
                          "assets/images/newarrival_shoes.png",
                          "Axel Arigato",
                          "Clean 90 Triple Sneakers",
                          "Prize: PKR.7500",
                        ),
                      ),
                    ),
                    SizedBox(width: 13),
                  ],
                ),

                SizedBox(height: 14),

                //========================================================================

                // popular section
                Row(
                  children: [
                    Text(
                      "Popular",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "View All",
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ),
                    SizedBox(width: 12),
                  ],
                ),

                customPopularItem(
                  "assets/images/headphone.png",
                  "Zero HeadPhone",
                  590,
                ),
                SizedBox(height: 15),

                customPopularItem(
                  "assets/images/popular_shirt.png",
                  "Marlins Shirts",
                  376,
                ),
                SizedBox(height: 15),

                customPopularItem(
                  "assets/images/newarrival_shoes.png",
                  "Jordan Shoes",
                  825,
                ),
                SizedBox(height: 15),

                customPopularItem(
                  "assets/images/newarrival_bag.png",
                  "Cucci Bag",
                  933,
                ),
                SizedBox(height: 15),
                customPopularItem(
                  "assets/images/headphone.png",
                  "Zero HeadPhone",
                  590,
                ),
                SizedBox(height: 15),

                customPopularItem(
                  "assets/images/popular_shirt.png",
                  "Marlins Shirts",
                  376,
                ),
                SizedBox(height: 15),

                customPopularItem(
                  "assets/images/newarrival_shoes.png",
                  "Jordan Shoes",
                  825,
                ),
                SizedBox(height: 15),

                customPopularItem(
                  "assets/images/newarrival_bag.png",
                  "Cucci Bag",
                  933,
                ),
                SizedBox(height: 15),
                customPopularItem(
                  "assets/images/headphone.png",
                  "Zero HeadPhone",
                  590,
                ),
                SizedBox(height: 15),

                customPopularItem(
                  "assets/images/popular_shirt.png",
                  "Marlins Shirts",
                  376,
                ),
                SizedBox(height: 15),

                customPopularItem(
                  "assets/images/newarrival_shoes.png",
                  "Jordan Shoes",
                  825,
                ),
                SizedBox(height: 15),

                customPopularItem(
                  "assets/images/newarrival_bag.png",
                  "Cucci Bag",
                  933,
                ),
                SizedBox(height: 15),
                customPopularItem(
                  "assets/images/headphone.png",
                  "Zero HeadPhone",
                  590,
                ),
                SizedBox(height: 15),

                customPopularItem(
                  "assets/images/popular_shirt.png",
                  "Marlins Shirts",
                  376,
                ),
                SizedBox(height: 15),

                customPopularItem(
                  "assets/images/newarrival_shoes.png",
                  "Jordan Shoes",
                  825,
                ),
                SizedBox(height: 15),

                customPopularItem(
                  "assets/images/newarrival_bag.png",
                  "Cucci Bag",
                  933,
                ),
                SizedBox(height: 15),

                //===========
              ],
            ),
          ),
        ),
      ),
    );
  }
}
