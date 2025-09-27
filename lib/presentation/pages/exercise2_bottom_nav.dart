// lib/presentation/pages/exercise2_bottom_nav.dart
import 'package:flutter/material.dart';

class Exercise2BottomNav extends StatefulWidget {
  const Exercise2BottomNav({super.key});

  @override
  State<Exercise2BottomNav> createState() => _Exercise2BottomNavState();
}

class _Exercise2BottomNavState extends State<Exercise2BottomNav> {
  int _selectedIndex = 0;
  static const List<String> _labels = ['Inicio', 'Configuración', 'Perfil'];

  void _onItemTapped(int index) => setState(() => _selectedIndex = index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ejercicio 2 - BottomNavigationBar')),
      body: Center(
        child: Text(
          _labels[_selectedIndex],
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Configuración'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
        ],
      ),
    );
  }
}
