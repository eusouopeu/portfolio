import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final typography = TextTheme(
  displayLarge: GoogleFonts.merriweather(
    textStyle: const TextStyle(
      fontFamily: 'Merriweather',
      fontSize: 44.0,
      fontWeight: FontWeight.bold,
    ),
  ),
  displayMedium: GoogleFonts.ptSansCaption(
    textStyle: const TextStyle(
      fontFamily: 'Merriweather',
      fontSize: 34.0,
      fontWeight: FontWeight.bold,
    ),
  ),
  displaySmall: GoogleFonts.merriweather(
    textStyle: const TextStyle(
      fontFamily: 'Merriweather',
      fontSize: 24.0,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.italic,
    ),
  ),
  bodyLarge: GoogleFonts.quicksand(
    textStyle: const TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      color: Colors.blueGrey,
    ),
  ),
  bodyMedium: GoogleFonts.quicksand(
    textStyle: const TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
    ),
  ),
  labelLarge: GoogleFonts.quicksand(
    textStyle: const TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w800,
      fontStyle: FontStyle.italic,
      height: 0,
    ),
  ),
  labelMedium: GoogleFonts.quicksand(
    textStyle: const TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.bold,
    ),
  ),
);
