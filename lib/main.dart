import 'package:flutter/material.dart';
import 'pages/main_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigation Demo',
      theme: ThemeData(
        primaryColor: const Color(0xFF6200EE),
        scaffoldBackgroundColor: Colors.grey[100],
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF6200EE),
          secondary: const Color(0xFF03DAC6),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF6200EE),
          elevation: 0,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF6200EE),
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          ),
        ),
      ),
      home: const MainLayout(),
    );
  }
}

