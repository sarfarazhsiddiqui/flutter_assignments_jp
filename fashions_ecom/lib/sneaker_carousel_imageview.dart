import 'package:flutter/material.dart';

class SneakerProductPage extends StatelessWidget {
  final List<String> imageUrls = [
    'https://cdn.pixabay.com/photo/2014/12/31/11/41/shoes-584850_1280.jpg',
    'https://cdn.pixabay.com/photo/2017/07/13/02/53/shoe-2498994_1280.jpg',
    'https://cdn.pixabay.com/photo/2016/02/15/17/04/nike-1201595_960_720.jpg',
  ];

  final List<Color> availableColors = [
    Colors.black,
    Colors.white,
    Colors.red,
    Colors.blue,
    Colors.green,
  ];

  final PageController _pageController = PageController();
  final ValueNotifier<int> _currentPage = ValueNotifier<int>(0);
  final ValueNotifier<int> _selectedColorIndex = ValueNotifier<int>(0);
  final ValueNotifier<int> _quantity = ValueNotifier<int>(1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Image Carousel
            SizedBox(
              height: 250,
              child: PageView.builder(
                controller: _pageController,
                itemCount: imageUrls.length,
                onPageChanged: (index) => _currentPage.value = index,
                itemBuilder: (context, index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      imageUrls[index],
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  );
                },
              ),
            ),

            // Dots Indicator
            ValueListenableBuilder<int>(
              valueListenable: _currentPage,
              builder: (context, currentIndex, _) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(imageUrls.length, (index) {
                    return AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      margin: EdgeInsets.symmetric(horizontal: 4, vertical: 12),
                      width: currentIndex == index ? 12 : 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color:
                            currentIndex == index ? Colors.black : Colors.grey,
                        borderRadius: BorderRadius.circular(4),
                      ),
                    );
                  }),
                );
              },
            ),

            // Title and Rating
            Text(
              'Clean 90 Triole Sneakers',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Icon(Icons.star, color: Colors.amber),
                Text('4.5 (270 Reviews)'),
              ],
            ),

            SizedBox(height: 12),

            // Size Selector
            Row(
              children: [
                Text('Size:', style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(width: 8),
                Wrap(
                  spacing: 8,
                  children: ['39', '39.5', '40', '40.5', '41'].map((size) {
                    return Chip(label: Text(size));
                  }).toList(),
                ),
              ],
            ),

            SizedBox(height: 12),

            // Floating Color Options
            Row(
              children: [
                Text('Color:', style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(width: 8),
                ValueListenableBuilder<int>(
                  valueListenable: _selectedColorIndex,
                  builder: (context, selectedIndex, _) {
                    return Wrap(
                      spacing: 8,
                      children: List.generate(availableColors.length, (index) {
                        final isSelected = selectedIndex == index;
                        return GestureDetector(
                          onTap: () => _selectedColorIndex.value = index,
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              color: availableColors[index],
                              shape: BoxShape.circle,
                              border: isSelected
                                  ? Border.all(color: Colors.black, width: 2)
                                  : null,
                            ),
                          ),
                        );
                      }),
                    );
                  },
                ),
              ],
            ),

            SizedBox(height: 12),

            // Description
            Text(
              'Engineered to crush any movement-based workout, these On sneakers enhance the label\'s original Cloud sneaker with cutting edge technologies.',
              style: TextStyle(color: Colors.grey[700]),
            ),

            SizedBox(height: 12),

            // Quantity Selector
            Row(
              children: [
                Text('Quantity:',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(width: 12),
                ValueListenableBuilder<int>(
                  valueListenable: _quantity,
                  builder: (context, qty, _) {
                    return Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.remove),
                          onPressed: () {
                            if (qty > 1) _quantity.value = qty - 1;
                          },
                        ),
                        Text('$qty', style: TextStyle(fontSize: 18)),
                        IconButton(
                          icon: Icon(Icons.add),
                          onPressed: () {
                            _quantity.value = qty + 1;
                          },
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),

            Spacer(),

            // Price and Add to Cart
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('\$245.00',
                    style:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Add to Cart'),
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 24)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
