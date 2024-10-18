import 'package:flutter/material.dart';
import 'package:saim/screens/login.dart';
import 'package:saim/screens/signup.dart';
import 'package:saim/widgets/logo.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    TextEditingController username = TextEditingController();

    return Scaffold(
      body: Container(
        width: screenWidth,
        height: screenHeight,
        decoration: BoxDecoration(
            color: Color.fromRGBO(11, 18, 37, 1),
            borderRadius: BorderRadius.circular(25)),
        child: Column(
          children: [
            SizedBox(height: 30),
            LogoWidget(),
            // SizedBox(height: 10),
            Text("Deliver Favourite Food",
                style: TextStyle(color: Colors.white, fontSize: 16)),
            SizedBox(height: 30),
            Center(
                child: Container(
              padding: EdgeInsets.all(12),
              width: 300,
              height: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xff1D102D)),
              child: Column(
                children: [
                  Text("SignUp",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w900)),
                  SizedBox(height: 35),
                  TextField(
                    controller: username,
                    decoration: InputDecoration(
                      hintText: 'username', // Placeholder text
                      hintStyle: TextStyle(color: Colors.white), // Text color
                      prefixIcon: Image.asset("assets/images/bxs_user.png"),
                      filled: true,
                      fillColor: Colors.transparent, // Background color
                      contentPadding: EdgeInsets.symmetric(vertical: 20.0),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                            color: Colors.white, width: 1.0), // White border
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                            color: Colors.white,
                            width: 1.0), // White border on focus
                      ),
                    ),
                    style: TextStyle(color: Colors.white), // Input text color
                  ),
                  SizedBox(height: 20),
                  TextField(
                    controller: email,
                    decoration: InputDecoration(
                      hintText: 'example@gmail.com', // Placeholder text
                      hintStyle: TextStyle(color: Colors.white), // Text color
                      prefixIcon: Image.asset("assets/images/bxs_user.png"),
                      filled: true,
                      fillColor: Colors.transparent, // Background color
                      contentPadding: EdgeInsets.symmetric(vertical: 20.0),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                            color: Colors.white, width: 1.0), // White border
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                            color: Colors.white,
                            width: 1.0), // White border on focus
                      ),
                    ),
                    style: TextStyle(color: Colors.white), // Input text color
                  ),
                  SizedBox(height: 20),
                  TextField(
                    controller: password,
                    decoration: InputDecoration(
                      hintText: 'Password', // Placeholder text
                      hintStyle: TextStyle(color: Colors.white), // Text color
                      prefixIcon: Image.asset("assets/images/bxs_lock-alt.png"),
                      suffixIcon: Image.asset("assets/images/bi_eye-fill.png"),
                      filled: true,
                      fillColor: Colors.transparent, // Background color
                      contentPadding: EdgeInsets.symmetric(vertical: 20.0),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                            color: Colors.white, width: 1.0), // White border
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                            color: Colors.white,
                            width: 1.0), // White border on focus
                      ),
                    ),
                    style: TextStyle(color: Colors.white), // Input text color
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Create Account",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                8.0), // Adjust the value as needed
                          ),
                          fixedSize: Size(254, 44),
                          backgroundColor: Color(0xff0F55E8))),
                ],
              ),
            )),
            SizedBox(
              height: 15,
            ),
            Text(
              "Alerady have an account?",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 5,
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              child: Text("LOGIN", style: TextStyle(color: Colors.white)),
            )
          ],
        ),
      ),
    );
  }
}
