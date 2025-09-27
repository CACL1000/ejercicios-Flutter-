// lib/app.dart
import 'package:flutter/material.dart';
import 'package:myapp/widgets/app_drawer.dart';
import 'core/theme/colors.dart';
import 'core/theme/text_styles.dart';
import 'presentation/pages/exercise1_home.dart';
import 'presentation/pages/exercise2_bottom_nav.dart';
import 'presentation/pages/exercise3_font_demo.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ejercicios Flutter',
      theme: ThemeData(
        primaryColor: AppColors.primary,
        scaffoldBackgroundColor: AppColors.background,
        textTheme: AppTextStyles.textTheme,
        useMaterial3: true,
      ),
      home: const MainMenuPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainMenuPage extends StatelessWidget {
  const MainMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Menú de Ejercicios')),
      drawer: const AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const Exercise1Home())),
              child: const Text('Ej.1 - Navegación (2 pantallas)'),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const Exercise2BottomNav())),
              child: const Text('Ej.2 - BottomNavigationBar'),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const Exercise3FontDemo())),
              child: const Text('Ej.3 - Fuente Lobster (Google Fonts)'),
            ),
          ],
        ),
      ),
    );
  }
}
