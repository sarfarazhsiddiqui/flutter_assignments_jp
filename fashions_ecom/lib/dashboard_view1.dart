import 'package:fashions_ecom/widget/custom_widget_productsview.dart';
import 'package:flutter/material.dart';
import 'package:fashions_ecom/data/popular_products.dart';
import 'package:fashions_ecom/data/newarrival_products.dart';
import 'package:fashions_ecom/data/discounts_products.dart';

class DashboardView1 extends StatefulWidget {
  const DashboardView1({super.key});

  @override
  State<DashboardView1> createState() => _DashboardView1State();
}

class _DashboardView1State extends State<DashboardView1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.search),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 🔁 First Block - Discounts (Horizontal Scroll)
              SizedBox(
                height: 200,
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: discountsProducts.length,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: InkWell(
                        onTap: () {
                          print('Card-01 block Clicked');
                        },
                        child: Container(
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                              image: NetworkImage(
                                  //                                'https://cdn.pixabay.com/photo/2014/12/31/11/41/shoes-584850_1280.jpg'
                                  discountsProducts[index]['discProdImage']),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(0.2), // Dark overlay
                                BlendMode.dstATop,
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "${discountsProducts[index]['dicountPercent']} Off"!,
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  discountsProducts[index]['discountDate']!,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 10),
                                Text(
                                    'With code: ${discountsProducts[index]['discountCode']}'),
                                SizedBox(height: 30),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Colors.black, // Background color
                                    foregroundColor: Colors.white, // Text color
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 24, vertical: 12),
                                  ),
                                  child: const Text('Get Now'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),

              SizedBox(height: 16),

              // 🆕 New Arrival Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('New Arrival',
                      style: TextStyle(
                          fontSize: 25.0, fontWeight: FontWeight.bold)),
                  TextButton(onPressed: () {}, child: Text('View All')),
                ],
              ),

              // 🆕 New Arrival Horizontal List
              SizedBox(
                height: 200,
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: newArrivalProducts.length,
                  itemBuilder: (context, i) {
                    return Card(
                      elevation: 6,
                      margin: EdgeInsets.only(right: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: InkWell(
                        onTap: () {
                          print('Card-02 block clicked');
                        },
                        child: Container(
                          width: 160,
                          padding: EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.network(
                                        newArrivalProducts[i]['newarrival_img'],
                                        fit: BoxFit.cover,
                                        width: double.infinity,
                                      ),
                                    ),
                                    Positioned(
                                      top: 8,
                                      right: 8,
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle,
                                        ),
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.favorite_border,
                                            color: Colors.black,
                                            size: 20,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                  newArrivalProducts[i]
                                      ['newarrival_productname'],
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text(newArrivalProducts[i]
                                  ['newarrival_productdetail']),
                              Text(newArrivalProducts[i]
                                  ['newarrival_productprice']),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),

              SizedBox(height: 16),

              // 🔥 Popular Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Popular',
                      style: TextStyle(
                          fontSize: 25.0, fontWeight: FontWeight.bold)),
                  TextButton(onPressed: () {}, child: Text('View All')),
                ],
              ),

              // 🔥 Popular Vertical List (No Expanded)
              ListView.builder(
                physics:
                    NeverScrollableScrollPhysics(), // Prevent nested scroll
                shrinkWrap:
                    true, // 👈 Important to make it fit inside scroll view
                itemCount: popularProducts.length,
                itemBuilder: (context, i) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 6,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: ListTile(
                      contentPadding: EdgeInsets.all(12),
                      leading: CircleAvatar(
                        backgroundImage:
                            NetworkImage(popularProducts[i]['popular_img']),
                      ),
                      title: Text(popularProducts[i]['popular_productname']),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(popularProducts[i]['popular_productdetail']),
                          Text("⭐ ${popularProducts[i]['popular_rating']}"),
                        ],
                      ),
                      trailing: Text(
                        popularProducts[i]['popular_productprice'],
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        print('List-03 block clicked');
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
