import 'package:facebook_clone/assig_reels/reel_new_login.dart';
import 'package:facebook_clone/assig_reels/reels_view.dart';
import 'package:flutter/material.dart';
import 'package:facebook_clone/assig_reels/reel_new_login.dart';

/*
1. welcom--reel_welcomeview.dart
2. login--reel_new_login.dart
3. reel--reelsview.dart
 */
class ReelWelcomeview extends StatelessWidget {
  const ReelWelcomeview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text('Reel App'),
        // ),
        body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
//        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
        child: Column(
          //        mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/vector2.png',
              width: MediaQuery.of(context).size.width,
              height: 500,
              fit: BoxFit.fill,
            ),
            Text(
              'Welcome',
              style: TextStyle(
                  fontSize: 40,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'This app is for the Reels Screen.',
              style: TextStyle(
                fontSize: 10,
                color: Colors.black,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Continue'),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ReelNewLogin()));
                  },
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(20),
                    backgroundColor: Color(0xFFFF8383), // Button color
                    foregroundColor: Colors.white, // Icon color
                  ),
                  child: Icon(Icons.forward),
                ),
              ],
            )
          ],
        ),
      ),
    )

//       Stack(
//         children: [
//           //Text('data'),
//           Container(
//             width: MediaQuery.of(context).size.width,
//             height: MediaQuery.of(context).size.height,
//             color: Colors.green,
//           ),
//           Positioned(
//             bottom: 0,
// //            left: 10,
//             child: Container(
//               width: MediaQuery.of(context).size.width,
//               height: MediaQuery.of(context).size.height * 0.7,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(20),
//               ),
//               child: Column(
//                 children: [
//                   Text('Welcome'),
//                   Text('This is the world of reels for your precious time.'),
//                   IconButton(
//                       onPressed: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => ReelsView()));
//                       },
//                       icon: Icon(
//                         Icons.forward,
//                         color: Colors.green,
//                       ))
//                 ],
//               ),
//             ),
//           )
//         ],
//       ),
        );
  }
}
