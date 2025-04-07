import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme() {
    return ThemeData(
      fontFamily: GoogleFonts.outfit().fontFamily,
      appBarTheme: AppBarTheme(color: Colors.white, 
      titleTextStyle: GoogleFonts.outfit(
        fontSize: 30,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
      iconTheme: IconThemeData(color: Colors.black),
    ),
    );
  }

  static ThemeData darkTheme() {
    return ThemeData(
      fontFamily: GoogleFonts.outfit().fontFamily,
      brightness: Brightness.dark,
      appBarTheme: AppBarTheme(
        color: Colors.black,
        titleTextStyle: GoogleFonts.outfit(
          fontSize: 30,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
      ),
    );
  }
}
