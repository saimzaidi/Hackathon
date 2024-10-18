import 'package:flutter/material.dart';

CategoryBox(url) {
  return Container(
    width: 80,
    height: 80,
    child: Center(child: Image.asset("assets/images/$url")),
    decoration: BoxDecoration(
      color: Color.fromRGBO(0, 0, 0, 0.5),
      borderRadius: BorderRadius.circular(15),
      border: Border.all(color: Color.fromRGBO(0, 0, 0, 0.5),width: 1)
    ),
  );
}
