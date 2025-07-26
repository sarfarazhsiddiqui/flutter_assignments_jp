import 'package:flutter/material.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                color: Colors.green,
                image: DecorationImage(
                    image: AssetImage(
                      'assets/images/vector2.png',
                    ),
                    fit: BoxFit.scaleDown)),
          ),
          // Positioned(
          //   //left: 10,
          //   bottom: 0,
          //   child: Container(
          //     width: MediaQuery.of(context).size.width,
          //     height: MediaQuery.of(context).size.height * 0.10,
          //     color: Colors.white,
          //     child: Column(
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         Text(
          //           'Welcome',
          //           style: TextStyle(
          //               color: Colors.black,
          //               fontSize: 40,
          //               fontWeight: FontWeight.bold),
          //         ),
          //         Text(
          //             'Lorem ipsum dolor sit amet consectetur.\n Lorem id sit'),
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
