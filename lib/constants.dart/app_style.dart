import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyle {
  // Colors
  //
  static const Color backgroundColor = Color(0xFFe2e2fe);
  static const Color mainColor = Color(0xFF000633);
  static const Color accentColor = Color(0xFF0065FF);
  //
  static List<Color> cardsColor = [
    Colors.white, //1
    Colors.red.shade100, //2
    Colors.pink.shade100, //3
    Colors.orange.shade100, //4
    Colors.yellow.shade100, //5
    Colors.green.shade100, //6
    Colors.blue.shade100, //7
    Colors.blueGrey.shade100, //8
  ];

  //
  // Text Style
  static TextStyle mainTitle = GoogleFonts.roboto(
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
  );
  static TextStyle mainContent = GoogleFonts.nunito(
    fontSize: 14.0,
    fontWeight: FontWeight.normal,
  );
  static TextStyle dateTitle = GoogleFonts.nunito(
    fontSize: 13.0,
    fontWeight: FontWeight.w500,
  );
}
