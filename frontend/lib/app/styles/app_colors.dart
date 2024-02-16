import 'package:flutter/material.dart';

const Color kWhite = Color(0xffffffff);
const Color kBlack = Color(0xff000000);
const Color borderColor = Color.fromARGB(255, 161, 161, 161);

const Color primarycolors = Color(0xff292F3D);
const Color secondarycolors = Color.fromARGB(255, 68, 75, 90);
const Color inputcolor = Color.fromARGB(255, 210, 205, 224);
const Color logoColor = Colors.orange;
const Color btnColors = Colors.orange;

const Color textColor = Colors.white;

const headingText =
    TextStyle(color: logoColor, fontSize: 25, fontFamily: "Rubikbubble");
const secondText = TextStyle(
    color: Colors.white,
    // fontSize: 0.2.toResponsive(context),
    fontFamily: "Poppinsmedium");
const signuplin =
    TextStyle(color: Colors.orange, fontSize: 14, fontFamily: "Poppinsmedium");

TextStyle myTextStyle(Color color, double fontSize, String fontFamily) {
  return TextStyle(
    color: color,
    fontSize: fontSize,
    fontFamily: fontFamily,
  );
}
