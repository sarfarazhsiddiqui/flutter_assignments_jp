import 'package:fashions_ecom/tabbar_view.dart';
import 'package:flutter/material.dart';

class LoginSuccessfulView extends StatelessWidget {
  const LoginSuccessfulView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Successful!',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text(
                  'You have successfully registered in\n our app and start working on it.'),
              Spacer(),
              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black26, // Button background
                    foregroundColor: Colors.white, // Text and icon color
                    side: BorderSide(
                        color: Colors.white, width: 2), // White border
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TabBarNavigation()),
                    );
                  },
                  child: Text(
                    'Start Shopping',
                    style:
                        TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
