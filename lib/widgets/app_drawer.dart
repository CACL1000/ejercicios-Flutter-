// lib/widgets/app_drawer.dart
import 'package:flutter/material.dart';
import 'package:myapp/presentation/pages/exercise1_home.dart';
import 'package:myapp/presentation/pages/exercise2_bottom_nav.dart';
import 'package:myapp/presentation/pages/exercise3_font_demo.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(child: Text('Navegación')),
          ListTile(
            title: const Text('Ej.1'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => const Exercise1Home()));
            },
          ),
          ListTile(
            title: const Text('Ej.2'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => const Exercise2BottomNav()));
            },
          ),
          ListTile(
            title: const Text('Ej.3'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => const Exercise3FontDemo()));
            },
          ),
        ],
      ),
    );
  }
}
