import 'package:facebook_clone/assig_reels/reel_login.dart';
import 'package:facebook_clone/assig_reels/reel_welcomeview.dart';
import 'package:facebook_clone/contactApp/contact_view.dart';
import 'package:facebook_clone/fb_home_view.dart';
import 'package:facebook_clone/home_fb_view.dart';
import 'package:facebook_clone/home_view.dart';
import 'package:facebook_clone/login1.dart';
import 'package:facebook_clone/extras/login_view.dart';
import 'package:facebook_clone/login_more.dart';
import 'package:facebook_clone/post_view.dart';
import 'package:facebook_clone/contactApp/splash_view.dart';
import 'package:facebook_clone/posts_view.dart';
import 'package:facebook_clone/assig_reels/reels_view.dart';
import 'package:facebook_clone/assig_reels/reel_new_login.dart';
import 'package:facebook_clone/reels/reels_view.dart';
import 'package:facebook_clone/widget/welcome_view.dart';
import 'package:flutter/material.dart';

import 'assig_reels/reel_new_login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: LoginMore(),
      // ReelNewLogin(),
      // ReelWelcomeview(),
      // ReelLoginView(),
      // WelcomeView(),
      //ReelsView(),
      // HomeFBView(),

      //FBHomeStlView(),  -- old copy of Abdullah

      //HomeView(), // no result

      //PostsViews(), // ok

      //SplashView(),
      //ContactView(),
      //LoginV(), //LoginView(),
    );
  }
}
/*
class TabBarClass extends StatelessWidget {
  const TabBarClass({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: FBTabBar());
  }
}

// TabBarExample to FBTabBar
class FBTabBar extends StatelessWidget {
  const FBTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'facebook',
            style: TextStyle(
                color: Colors.blue, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.white,
          actions: [
            IconButton(
              icon: const Icon(Icons.search, color: Colors.black),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.message, color: Colors.black),
              onPressed: () {},
            ),
          ],
          bottom: const TabBar(
            indicatorColor: Colors.blue,
            labelColor: Colors.blue,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.home_filled)),
              Tab(icon: Icon(Icons.group_outlined)),
              Tab(icon: Icon(Icons.ondemand_video_outlined)),
              Tab(icon: Icon(Icons.store_outlined)),
              Tab(icon: Icon(Icons.notifications_outlined)),
              Tab(icon: Icon(Icons.menu)),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            /*
            HomeScreen(),
            VideosScreen(),
            FriendsScreen(),
            MarketplaceScreen(),
            NotificationScreen(),
            MenuScreen()
            */
//            Center(child: Text("It's home here")),
//            Center(child: Text("It's group here")),
//            HomeView(),
            FBHomeStlView(),
            PostView(),
            Center(child: Text("It's video here")),
            Center(child: Text("It's store here")),
            Center(child: Text("It's notification here")),
            Center(child: Text("It's menu here")),
          ],
        ),
      ),
    );
  }
}
*/
