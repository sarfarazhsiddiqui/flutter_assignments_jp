import 'package:flutter/material.dart';
import 'package:reelsapp/reels_view.dart';

class ReelNewLogin extends StatelessWidget {
  ReelNewLogin({super.key});

  TextEditingController emailPhoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment(0, -0.9), // Y-axis: -1 (top) to 1 (bottom)
                child: Image.asset(
                  'assets/images/vector2.png',
                  fit: BoxFit.fill,
                  width: MediaQuery.of(context).size.width,
                  height: 350,
                ),
              ),
              Text(
                'Sign In',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              // SizedBox(
              //   height: 10,
              // ),
              TextField(
                expands: false,
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.phone_android,
                      color: Color(0xFFFF8383),
                    ),
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
                    prefixIcon: Icon(
                      Icons.password,
                      color: Color(0xFFFF8383),
                    ),
                    border: OutlineInputBorder(),
                    hintText: 'Password'),
                controller: passwordController,
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: ElevatedButton(
                    onPressed: () {
                      login(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFFF8383),
                      //Colors.blue,
                      foregroundColor: Colors.white,
                      //                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                    ),
                    child: const Text(
                      'Log in',
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  foregroundColor: WidgetStateProperty.all(Color(0xFFFF8383)),
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
            ],
          ),
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
//      ReelWelcomeview();
      Navigator.push(
        context,
//        MaterialPageRoute(builder: (context) => TabBarClass()),
        MaterialPageRoute(builder: (context) => ReelsView()),
      );
    } else {
      print('Login Failed');
    }
  }
}
