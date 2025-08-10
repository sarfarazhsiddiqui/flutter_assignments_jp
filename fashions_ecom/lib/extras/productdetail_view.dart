import 'package:flutter/material.dart';

class ProductsDetailView extends StatelessWidget {
  const ProductsDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product Details")),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Sneaker Image
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                  "https://cdn.pixabay.com/photo/2014/12/31/11/41/shoes-584850_1280.jpg",
                  height: 250,
                  fit: BoxFit.cover),
            ),
            SizedBox(height: 16),

            // Product Name & Rating
            Text("Axel Arigato Clean 90 Triple Sneakers",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Row(
              children: [
                Icon(Icons.star, color: Colors.amber),
                Text("4.5 (270 reviews)"),
              ],
            ),
            Text("In Stock", style: TextStyle(color: Colors.green)),

            SizedBox(height: 16),

            // Size Selector
            Text("Select Size"),
            Wrap(
              spacing: 8,
              children: ["39", "39.5", "40", "40.5", "41"].map((size) {
                return ChoiceChip(
                  label: Text(size),
                  selected: size == "41", // handle selection state
                  onSelected: (selected) {},
                );
              }).toList(),
            ),

            SizedBox(height: 16),

            // Color Selector
            Text("Select Color"),
            Row(
              children: [Colors.black, Colors.white, Colors.blue].map((color) {
                return GestureDetector(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: color,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey),
                    ),
                  ),
                );
              }).toList(),
            ),

            SizedBox(height: 16),

            // Description
            Text("Engineered to crush any movement-based workout..."),

            SizedBox(height: 24),

            // Price & Add to Cart
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("\$245.00",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ElevatedButton(onPressed: () {}, child: Text("Add to Cart")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
