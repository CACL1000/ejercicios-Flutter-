// lib/presentation/pages/exercise1_home.dart
import 'package:flutter/material.dart';
import 'exercise1_second.dart';

class Exercise1Home extends StatelessWidget {
  const Exercise1Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ejercicio 1 - Primera Pantalla')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navegación: push a la segunda pantalla
            Navigator.push(context, MaterialPageRoute(builder: (_) => const Exercise1Second()));
          },
          child: const Text('Ir a la segunda pantalla'),
        ),
      ),
    );
  }
}
