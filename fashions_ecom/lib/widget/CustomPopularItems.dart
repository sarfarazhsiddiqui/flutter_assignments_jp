import 'package:flutter/material.dart';

Widget customPopularItem(String BGImage, String ProdName, int ProdPrize) {
  return Container(
    width: 350, // item ka width
    height: 90,
    margin: const EdgeInsets.only(right: 22,left: 7),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1), // shadow ka color
          blurRadius: 8, // shadow ka blur
          offset: const Offset(0, 4), // shadow neeche ki taraf
        ),
      ],
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // 🖼️ Product Image
        Padding(
          padding: EdgeInsets.only(left: 6),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(BGImage, height: 80, width: 90, fit: BoxFit.cover),
          ),
        ),

        // 📄 Product Name & Price
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                ProdName,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text("Top Rated", style: TextStyle(color: Colors.grey[600])),

              Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.star,color: Colors.amber,size: 20,),
                  SizedBox(width: 4,),
                  Text("(4.5)",style: TextStyle(fontSize: 14,),),
                ],
              )
            ],
          ),
        ),
        Spacer(),

        Text(
          "\$${ProdPrize.toStringAsFixed(2)}",
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),

        SizedBox(width: 10,)
      ],
    ),
  );
}


/*

import 'package:flutter/material.dart';

class PopularItemCard extends StatelessWidget {
  final String imageUrl;    // Image ka path ya network URL
  final String title;       // Product ka naam
  final double price;       // Product ki price

  const PopularItemCard({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160, // item ka width
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1), // shadow ka color
            blurRadius: 8, // shadow ka blur
            offset: const Offset(0, 4), // shadow neeche ki taraf
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 🖼️ Product Image
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.asset(
              imageUrl,
              height: 120,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          // 📄 Product Name & Price
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  "\$${price.toStringAsFixed(2)}",
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}



Text(
                  "\$${ProdPrize.toStringAsFixed(2)}",
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
*/