import 'package:facebook_clone/home_view.dart';
import 'package:facebook_clone/main.dart';
import 'package:flutter/material.dart';

class LoginV extends StatelessWidget {
  LoginV({super.key});

  TextEditingController emailPhoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey.shade100,
        //height: 200,
        // width: 600,
        child: Row(
//          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'facebook',
                  style: TextStyle(
                      color:
                          Color(0xFF4267BA), //Color.fromARGB(50, 66, 103, 178),
                      //Colors.blue,
                      fontSize: 60,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Facebook helps you connect and share \nwith the people in your life.',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            Container(
              width: 400,
              height: 300,
              padding: EdgeInsets.all(16),
              margin: EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.white),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    spreadRadius: 2,
                    blurRadius: 6,
                    offset: Offset(2, 4), // Shadow position
                  ),
                ],
              ),
              child: Column(
                children: [
                  TextField(
                    expands: false,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Email address or phone number'),
                    controller: emailPhoneController,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), hintText: 'Password'),
                    controller: passwordController,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        login(context);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                        //                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)),
                      ),
                      child: const Text(
                        'Log in',
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      foregroundColor: WidgetStateProperty.all(Colors.blue),
                      textStyle:
                          WidgetStateProperty.resolveWith<TextStyle>((states) {
                        if (states.contains(WidgetState.hovered)) {
                          return TextStyle(
                            decoration: TextDecoration.underline,
                            //                          fontSize: 18,
                          );
                        }
                        return TextStyle(
                          decoration: TextDecoration.none,
                          //                        fontSize: 18,
                        );
                      }),
                    ),
                    child: Text(
                      'Forgotten Password?',
                    ),
                  ),
                  // SizedBox(
                  //   height: 20,
                  // ),
                  Divider(
                    color: Colors.grey, // Line color
                    thickness: 1, // Line thickness
                    indent: 16, // Left padding
                    endIndent: 16, // Right padding
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6))),
                      child: const Text(
                        'Create new account',
                        // style: TextStyle(
                        //     backgroundColor: Colors.green, color: Colors.white),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  login(context) {
    String chkEmail = emailPhoneController.text;
    String chkPasw = passwordController.text;
    print(emailPhoneController.text);
    print('');
    if (chkEmail == 'abc' && chkPasw == 'abc') {
      print('Login Successful');
      TabBarClass(),
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(builder: (context) => TabBarClass()),
      // );
    } else {
      print('Login Failed');
    }
  }
}
