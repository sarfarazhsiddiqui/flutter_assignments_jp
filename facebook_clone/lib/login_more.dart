import 'package:flutter/material.dart';

class LoginMore extends StatelessWidget {
  const LoginMore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // 🖼️ Curved background image
          Positioned(
            top: -150,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/images/vector2.png',
              height: 550,
              fit: BoxFit.cover,
            ),
          ),

          // 📝 Overlayed content
          Positioned(
            top: 320,
            left: 20,
            right: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Text(
                //   "Sign In",
                //   style: TextStyle(
                //     fontSize: 28,
                //     fontWeight: FontWeight.bold,
                //     color: Colors.black,
                //   ),
                // ),
                RichText(
                  text: TextSpan(
                    style: TextStyle(fontSize: 24, color: Colors.black),
                    children: [
                      TextSpan(
                        text: 'Sign',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.pink,
                          decorationThickness: 2,
                          color: Colors.black, // Text color
                        ),
                      ),
                      TextSpan(text: 'In'), // Normal text
                    ],
                  ),
                ),
                SizedBox(height: 50),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(Icons.email_outlined),
                    hintText: "| demo@email.com",
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.pinkAccent, width: 2.0)),
                  ),
                ),
                SizedBox(height: 12),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(Icons.key),
                    labelText: "Password",
                    hintText: "| enter your password",
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.pinkAccent, width: 2.0)),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (_) {}),
                    Text("Remember Me"),
                    Spacer(),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(color: Colors.pinkAccent),
                        )),
                  ],
                ),
                SizedBox(
                  width: double.infinity,
//                  height: 20,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pinkAccent, // Button background
                      foregroundColor: Colors.white, // Text and icon color
                    ),
                    onPressed: () {},
                    child: Text(
                      "Login",
                    ),
                  ),
                ),
                SizedBox(height: 12),
                TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Text("Don't have an Account? "),
                      Text(
                        "Sign up",
                        style: TextStyle(color: Colors.pinkAccent),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
