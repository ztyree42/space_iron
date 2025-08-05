import 'package:flutter/material.dart';
import 'navigation.dart';

void main() {
  runApp(const SpaceIronApp());
}

class SpaceIronApp extends StatelessWidget {
  const SpaceIronApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Space Iron',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MainMenuScreen(),
        '/game': (context) => const GameScreen(),
        '/settings': (context) => const SettingsScreen(),
        '/about': (context) => const AboutScreen(),
      },
    );
  }
}

// Old MyHomePage and _MyHomePageState removed; replaced by MainMenuScreen and navigation system.
