// lib/presentation/pages/exercise3_font_demo.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Exercise3FontDemo extends StatelessWidget {
  const Exercise3FontDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ejercicio 3 - Google Fonts Lobster')),
      body: Center(
        child: Text(
          'Hola, Lobster!',
          style: GoogleFonts.lobster(fontSize: 48),
        ),
      ),
    );
  }
}
