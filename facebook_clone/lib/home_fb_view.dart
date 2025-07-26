import 'package:flutter/material.dart';

class HomeFBView extends StatefulWidget {
  const HomeFBView({super.key});

  @override
  State<HomeFBView> createState() => _HomeFBViewState();
}

class _HomeFBViewState extends State<HomeFBView> {
  List posts = [];
  List stories = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade300,
      ),
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // search block
            Row(
              //              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  radius: 17,
                  backgroundImage: NetworkImage(
                    "https://cdn.pixabay.com/photo/2017/03/27/14/59/man-2179243_1280.jpg",
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Expanded(
                  child: TextField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      hintText: "What's on your mind?",
                      hintStyle: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Icon(
                  Icons.post_add,
                  color: Colors.green,
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Divider(
              thickness: 2,
              indent: 1,
              endIndent: 20,
            ),
// stories block
            ListView.builder(
                itemCount: stories.length,
                itemBuilder: (context, index) {
//                  return stile();
                }),
// posts block
            // ListView.builder(
            //     itemCount: posts.length, itemBuilder: (context, index) {}),
          ],
        ),
      ),
    );
  }
}
