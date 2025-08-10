import 'package:fashions_ecom/extras/DiscountCardList.dart';
import 'package:fashions_ecom/firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fashions_ecom/extras/My_Home_Screen.dart';
import 'package:fashions_ecom/extras/NavTabBar.dart';
import 'package:fashions_ecom/cart_view.dart';
import 'package:fashions_ecom/dashboard_view.dart';
import 'package:fashions_ecom/extras/home_page.dart';
import 'package:fashions_ecom/notification_view.dart';
import 'package:fashions_ecom/extras/productdetail_view.dart';
import 'package:fashions_ecom/sneaker_carousel_imageview.dart';
import 'package:fashions_ecom/splash_view.dart';
import 'package:fashions_ecom/tabbar_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
// --------------- code b4 firebase auth ------------------
// void main() {
//   runApp(const MyApp());
// }
// --------------- code b4 firebase auth ------------------

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
      //HomePage(),
      //DiscountCardList(),
      //DashboardView(),
      //TabBarNavigation(),
      //NavTabBar(),
      //CartView(),
      //NotificationView(),
      //SneakerProductPage(),
      // ProductsDetailView(),
    );
  }
}
