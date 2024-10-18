import 'package:flutter/material.dart';

LogoWidget() {
  return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/Frame 6.png"),
            Text("Saim's Food",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white))
          ],
        );
}
