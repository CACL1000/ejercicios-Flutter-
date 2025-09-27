// lib/core/theme/text_styles.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static final TextTheme textTheme = TextTheme(
    bodyMedium: GoogleFonts.roboto(fontSize: 14),
    titleLarge: GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.bold),
    headlineMedium: GoogleFonts.roboto(fontSize: 26, fontWeight: FontWeight.w600),
  );

  // helper para usar Lobster donde quieras
  static TextStyle lobsterLarge(double size) => GoogleFonts.lobster(fontSize: size);
}

