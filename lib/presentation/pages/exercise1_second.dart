// lib/presentation/pages/exercise1_second.dart
import 'package:flutter/material.dart';

class Exercise1Second extends StatelessWidget {
  const Exercise1Second({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ejercicio 1 - Segunda Pantalla')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Volver a la pantalla anterior
            Navigator.pop(context);
          },
          child: const Text('Volver'),
        ),
      ),
    );
  }
}
