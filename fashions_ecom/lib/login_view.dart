import 'dart:math';

import 'package:fashions_ecom/login_successful_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});

  TextEditingController emailPhoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.center,
                height: 250,
//                width: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/fashions_logo.jpg'),
                      fit: BoxFit.contain),
                ),
              ),
              Text(
                'Welcome!',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text('Please login or Sign Up to continue our App.'),
              SizedBox(
                height: 20,
              ),
              Text(
                'Email',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextField(
                controller: emailPhoneController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  suffixIcon: Icon(Icons.offline_pin_rounded),
                  hintText: "Enter your email.",
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.black26, width: 2.0)),
                ),
              ),
              SizedBox(height: 12),
              Text(
                'Password',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  suffixIcon: Icon(Icons.offline_pin),
//                  labelText: "Password",
                  hintText: "Enter your password",
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.black26, width: 2.0)),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black, // Button background
                    foregroundColor: Colors.white, // Text and icon color
                  ),
                  onPressed: () {
                    login(context);
                  },
                  child: Text(
                    "Login",
                    style:
                        TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              // for divider with text start
              SizedBox(
                height: 10,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Divider(
                      color: Colors.black, // or any color that suits your theme
                      thickness: 1,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'or',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.black,
                      thickness: 1,
                    ),
                  ),
                ],
              ),
              // for divider with text start
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent, // Button background
                    foregroundColor: Colors.white, // Text and icon color
                  ),
                  onPressed: () {
                    login(context);
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.facebook,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Continue with Facebook",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white, // Button background
                    foregroundColor: Colors.black, // Text and icon color
                    side: BorderSide(
                        color: Colors.grey, width: 2), // White border
                  ),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.g_mobiledata_rounded,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Continue with Google",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white, // Button background
                    foregroundColor: Colors.black, // Text and icon color
                    side: BorderSide(
                        color: Colors.grey, width: 2), // White border
                  ),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.apple,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Continue with Apple",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  login(context) async {
    String chkEmail = emailPhoneController.text;
    String chkPasw = passwordController.text;
    print(emailPhoneController.text);
//    print('');
    // ------------- comment for firebase auth --------------------
//     if (chkEmail == 'abc@gmail.com' && chkPasw == 'abc') {
//       print('Login Successful');
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (context) => LoginSuccessfulView()),
//       );
//     } else {
//       print('Login Failed');
//     }
    // ------------- comment for firebase auth --------------------
    try {
      final credentials = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: chkEmail, password: chkPasw);

//          .createUserWithEmailAndPassword(email: chkEmail, password: chkPasw);
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginSuccessfulView()),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-email') {
        print('The email is invalid.');
      } else if (e.code == 'invalid-password') {
        print('The password is invalid.');
      }
    } catch (e) {
      print(e);
    }
  }
}
