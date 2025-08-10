import 'package:fashions_ecom/login_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignupView extends StatelessWidget {
  SignupView({super.key});

  TextEditingController userNameController = TextEditingController();
  TextEditingController emailPhoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmController = TextEditingController();

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
                'Sign Up!',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text('Create an new account'),
              SizedBox(
                height: 70,
              ),
              Text(
                'User Name',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextField(
                controller: userNameController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  suffixIcon: Icon(Icons.offline_pin_rounded),
                  hintText: "Enter your user name",
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.black26, width: 2.0)),
                ),
              ),
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
                  hintText: "Enter your email",
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
                  suffixIcon: Icon(Icons.remove_red_eye_rounded),
//                  labelText: "Password",
                  hintText: "Enter your password",
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.black26, width: 2.0)),
                ),
              ),
              SizedBox(height: 12),
              Text(
                'Confirm Password',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextField(
                controller: passwordConfirmController,
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  suffixIcon: Icon(Icons.remove_red_eye_rounded),
//                  labelText: "Password",
                  hintText: "Enter your confirm password",
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.black26, width: 2.0)),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Checkbox(value: false, onChanged: (_) {}),
                  Text(
                      "By creating an acouunt you have to agree\nwith our term & condition."),
                  Spacer(),
                  // TextButton(
                  //     onPressed: () {},
                  //     child: Text(
                  //       "By creating an acouunt you have to agree\nwith our term & condition.",
                  //       style: TextStyle(color: Colors.pinkAccent),
                  //     )),
                ],
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
                    signup(context);

                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (BuildContext context) => LoginView()),
                    // );
                  },
                  child: Text(
                    "Login",
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

//  login(context) {
  signup(context) async {
    String chkUser = userNameController.text;
    String chkEmail = emailPhoneController.text;
    String chkPasw = passwordController.text;
    String chkConfPasw = passwordConfirmController.text;
    print(emailPhoneController.text);
    print('');

    try {
      final credentials = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: chkEmail, password: chkPasw);
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginView()),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
    // ------------- comment for firebase auth --------------------
    // if (chkEmail == 'abc' && chkPasw == 'abc') {
    //   print('Login Successful');
    //
    //   // Navigator.push(
    //   //   context,
    //   //   MaterialPageRoute(
    //   //       builder: (BuildContext context) => LoginView()),
    //   // );
    // } else {
    //   print('Login Failed');
    // }
    // ------------- comment for firebase auth --------------------
  }
}
