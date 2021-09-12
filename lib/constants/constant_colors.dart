import 'package:flutter/material.dart';

class ConstantColors {

  static const Color white = Color(0xFFFFFFFF);
  static const Color yellow = Color(0xFFF2994A);
  static const Color blue = Color(0xFF56CCF2);
  static const Color black = Color(0xFF000000);
  static const Color green = Color(0xFF27AE60);
  static const Color grey = Color(0xFFF2F2F2);
  static const Color blueButton = Color(0xFF1F85FD);

  static const LinearGradient card = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: <Color>[
      Color(0xFF1FF7FD),
      Color(0xFFB33BF6),
      Color(0xFFFF844C),
      Color(0xFFFF844B),
    ],
  );

}
