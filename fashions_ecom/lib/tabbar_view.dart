import 'package:fashions_ecom/cart_view.dart';
import 'package:fashions_ecom/dashboard_view.dart';
import 'package:fashions_ecom/home_page.dart';
import 'package:fashions_ecom/login_view.dart';
import 'package:fashions_ecom/notification_view.dart';
import 'package:fashions_ecom/profile_view.dart';
import 'package:flutter/material.dart';

class TabBarNavigation extends StatefulWidget {
  const TabBarNavigation({super.key});

  @override
  State<TabBarNavigation> createState() => _TabBarNavigationState();
}

class _TabBarNavigationState extends State<TabBarNavigation> {
  int selectedIndex = 0;

  final List<Widget> screens = [
    // HomeScreen(),
    // AddtocartScreen(),
    // NotificationScreen(),
    // ProfileScreen()
    HomePage(),
    CartView(),
    NotificationView(),
    ProfileView()
  ];

  final List<IconData> icons = [
    Icons.home,
    Icons.shopping_bag,
    Icons.notifications,
    Icons.person,
  ];

  final List<String> labels = [
    "Home",
    "Cart",
    "Notify",
    "Profile",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: screens[selectedIndex],
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(icons.length, (index) {
              bool isSelected = selectedIndex == index;

              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    color: isSelected ? Colors.black : Colors.transparent,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        icons[index],
                        color: isSelected ? Colors.white : Colors.black,
                      ),
                      if (isSelected) ...[
                        const SizedBox(width: 8),
                        Text(
                          labels[index],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ]
                    ],
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }

  //------------------------------
  // int selectedIndex = 0;
  //
  // final List<Widget> screens = [
  //   LoginView(),
  //   //HomePage(),
  //   //DashboardView(),
  //   CartView(),
  //   NotificationView(),
  //   ProfileView()
  // ];
  //
  // final List<IconData> icons = [
  //   Icons.home,
  //   Icons.shopping_bag,
  //   Icons.notifications,
  //   Icons.person,
  // ];
  //
  // final List<String> labels = [
  //   "Home",
  //   "Cart",
  //   "Notify",
  //   "Profile",
  // ];
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     backgroundColor: Colors.grey[200],
  //     body: screens[selectedIndex],
  //     bottomNavigationBar: SafeArea(
  //       child: Padding(
  //         padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
  //         child: Row(
  //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //           children: List.generate(icons.length, (index) {
  //             bool isSelected = selectedIndex == index;
  //             return GestureDetector(
  //               onTap: () {
  //                 setState(() {
  //                   selectedIndex = index;
  //                 });
  //               },
  //
  //             );
  //           }),
  //         ),
  //       ),
  //     ),
  //   );
  // }
}
