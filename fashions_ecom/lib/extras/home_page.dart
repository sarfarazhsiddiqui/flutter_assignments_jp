import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, dynamic>> popularItems = [
    {
      "image":
          "https://cdn.pixabay.com/photo/2015/03/04/09/55/walnut-658569_1280.jpg",
      "name": "Zero HeadPhone",
      "price": 590
    },
    {
      "image":
          "https://cdn.pixabay.com/photo/2015/03/04/09/55/walnut-658569_1280.jpg",
      "name": "Marlins Shirts",
      "price": 376
    },
    {
      "image":
          "https://cdn.pixabay.com/photo/2015/03/04/09/55/walnut-658569_1280.jpg",
      "name": "Jordan Shoes",
      "price": 825
    },
    {
      "image":
          "https://cdn.pixabay.com/photo/2015/03/04/09/55/walnut-658569_1280.jpg",
      "name": "Cucci Bag",
      "price": 933
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(16),
          children: [
            // 🔘 Top Bar
            Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.black,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          height: 2,
                          width: 16,
                          color: Colors.white,
                          margin: EdgeInsets.only(left: 15)),
                      SizedBox(height: 6),
                      Container(
                          height: 2,
                          width: double.infinity,
                          color: Colors.white),
                      SizedBox(height: 6),
                      Container(
                          height: 2,
                          width: 16,
                          color: Colors.white,
                          margin: EdgeInsets.only(right: 15)),
                    ],
                  ),
                ),
                Spacer(),
                Icon(Icons.search, color: Colors.black, size: 32),
              ],
            ),

            SizedBox(height: 20),

            // 🔖 Discount Section
//            SectionHeader(title: "Discounts"),
            SizedBox(height: 8),
            SizedBox(
              height: 140,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  DiscountCard(
                      "https://cdn.pixabay.com/photo/2014/06/18/18/41/running-shoe-371624_1280.jpg"),
                  SizedBox(width: 12),
                  DiscountCard(
                      "https://cdn.pixabay.com/photo/2014/06/18/18/41/running-shoe-371624_1280.jpg"),
                  SizedBox(width: 12),
                  DiscountCard(
                      "https://cdn.pixabay.com/photo/2014/06/18/18/41/running-shoe-371624_1280.jpg"),
                ],
              ),
            ),

            SizedBox(height: 24),

            // 🆕 New Arrivals Section
            SectionHeader(title: "New Arrivals", showViewAll: true),
            SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: ProductCard(
                    image:
                        "https://cdn.pixabay.com/photo/2021/08/03/06/47/perfume-6518634_1280.jpg",
                    brand: "The Marc Jacobs",
                    name: "Traveler Tote",
                    price: "PKR.5999",
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: ProductCard(
                    image:
                        "https://cdn.pixabay.com/photo/2021/08/03/06/47/perfume-6518634_1280.jpg",
                    brand: "Axel Arigato",
                    name: "Clean 90 Triple Sneakers",
                    price: "PKR.7500",
                  ),
                ),
              ],
            ),

            SizedBox(height: 24),

            // 🔥 Popular Section
            SectionHeader(title: "Popular", showViewAll: true),
            SizedBox(height: 8),
            ...popularItems.map((item) => Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: PopularItemCard(
                    image: item['image'],
                    name: item['name'],
                    price: item['price'],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

class SectionHeader extends StatelessWidget {
  final String title;
  final bool showViewAll;

  SectionHeader({required this.title, this.showViewAll = false});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        Spacer(),
        if (showViewAll)
          TextButton(
            onPressed: () {},
            child: Text("View All", style: TextStyle(color: Colors.grey[600])),
          ),
      ],
    );
  }
}

class DiscountCard extends StatelessWidget {
  final String image;

  DiscountCard(this.image);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Container(
        width: 120,
        child: Image.network(image, fit: BoxFit.cover),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String image, brand, name, price;

  ProductCard(
      {required this.image,
      required this.brand,
      required this.name,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            Image.network(image, height: 80),
            SizedBox(height: 8),
            Text(brand, style: TextStyle(fontWeight: FontWeight.bold)),
            Text(name),
            Text(price, style: TextStyle(color: Colors.green)),
          ],
        ),
      ),
    );
  }
}

class PopularItemCard extends StatelessWidget {
  final String image, name;
  final int price;

  PopularItemCard(
      {required this.image, required this.name, required this.price});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: ListTile(
        leading: Image.network(image, width: 50),
        title: Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
        trailing:
            Text("Rs.$price", style: TextStyle(fontWeight: FontWeight.bold)),
      ),
    );
  }
}
