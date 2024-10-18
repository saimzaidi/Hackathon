import 'dart:async';
import 'package:flutter/material.dart';
import 'package:saim/screens/login.dart';
import 'package:saim/widgets/logo.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 1), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size; // Get screen dimensions
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return Scaffold(
      body: Container(
        width: screenWidth, // Full width of screen
        height: screenHeight, // Full height of screen
        decoration: BoxDecoration(
          // border: Border.all(color: Colors.red, width: 1),
          borderRadius: BorderRadius.circular(25),
          color: Color.fromRGBO(11, 18, 37, 1)
          // image: DecorationImage(
          //   image: AssetImage("assets/images/Background.png"), 
          //   fit: BoxFit.cover, // Cover entire container with the image
          // ),
        ),
        child: Center(child: LogoWidget()), // Center the logo
      ),
    );
  }
}
