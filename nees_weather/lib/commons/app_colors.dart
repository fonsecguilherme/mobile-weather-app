import 'package:flutter/material.dart';

class AppColors {
  static const backgroundBlue = Color(0xFF47BBE1);
  static const backgroundGradient = LinearGradient(
    begin: Alignment.bottomRight,
    end: Alignment.topLeft,
    colors: [
      Color(0xFF0B42AB),
      Color(0xFF134CB5),
      Color(0xFF08244F),
    ],
  );
  static const backgroundDarkBlue = Color(0xFF134CB5);
  static const white = Colors.white;
  static const black = Colors.black;
  static const dropdownButtonLight = Color.fromARGB(255, 57, 151, 182);
  static const dropdownButtonDark = Color(0xFF08244F);
  static const appBarTransparent = Colors.transparent;
}
