import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // body: Column(
        //   children: [
        //     Text(
        //       'facebook',
        //       style: TextStyle(
        //         fontSize: 50,
        //         color: Colors.blue[600],
        //         fontFamily: 'Klavika',
        //         fontWeight: FontWeight.bold,
        //       ),
        //     ),
        //     Text(
        //       'Facebook helps you connect and share\nwith the people in your life.',
        //       style: TextStyle(fontSize: 20),
        //     ),
        //   ],
        // ),
        // // Container(
        //   padding: EdgeInsets.all(16),
        //   margin: EdgeInsets.symmetric(vertical: 8),
        //   decoration: BoxDecoration(
        //     color: Colors.white,
        //     borderRadius: BorderRadius.circular(8),
        //     border: Border.all(color: Colors.white),
        //     boxShadow: [
        //       BoxShadow(
        //         color: Colors.grey.withOpacity(0.4),
        //         spreadRadius: 2,
        //         blurRadius: 6,
        //         offset: Offset(2, 4), // Shadow position
        //       ),
        //     ],
        //   ),
        //   child: Column(
        //     children: [
        //       TextField(
        //         decoration: InputDecoration(
        //             border: OutlineInputBorder(),
        //             hintText: 'Email address or phone number'),
        //         //                controller: emailPhoneController(),
        //       ),
        //       TextField(
        //         decoration: InputDecoration(
        //             border: OutlineInputBorder(), hintText: 'Password'),
        //         //                controller: passwordController(),
        //       ),
        //       ElevatedButton(
        //           onPressed: () {},
        //           style: ElevatedButton.styleFrom(
        //             backgroundColor: Colors.blue,
        //             foregroundColor: Colors.white,
        //             //                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        //           ),
        //           child: const Text(
        //             'Log in',
        //           )),
        //       TextButton(
        //           onPressed: () {},
        //           style: ButtonStyle(
        //             foregroundColor: WidgetStateProperty.all(Colors.blue),
        //             textStyle:
        //                 WidgetStateProperty.resolveWith<TextStyle>((states) {
        //               if (states.contains(WidgetState.hovered)) {
        //                 return TextStyle(
        //                   decoration: TextDecoration.underline,
        //                   //                          fontSize: 18,
        //                 );
        //               }
        //               return TextStyle(
        //                 decoration: TextDecoration.none,
        //                 //                        fontSize: 18,
        //               );
        //             }),
        //           ),
        //           child: Text(
        //             'Forgotten Password?',
        //           )),
        //       ElevatedButton(
        //           onPressed: () {},
        //           style: ElevatedButton.styleFrom(
        //               backgroundColor: Colors.green,
        //               foregroundColor: Colors.white,
        //               shape: RoundedRectangleBorder(
        //                   borderRadius: BorderRadius.circular(6))),
        //           // style: ButtonStyle(
        //     shape: WidgetStateProperty.all<RoundedRectangleBorder>(
        //       RoundedRectangleBorder(
        //         borderRadius: BorderRadius.zero,
        //         side: BorderSide(color: Colors.blue),
        //       ),
        //     ),
        //     backgroundColor:
        //         WidgetStateProperty.all<Color>(Colors.green),
        //     foregroundColor:
        //         WidgetStateProperty.all<Color>(Colors.white)),
        //         child: const Text(
        //           'Create new account',
        //           // style: TextStyle(
        //           //     backgroundColor: Colors.green, color: Colors.white),
        //         ))
        //   ],
        // ),
        // ),
        );
  }
}
