import 'package:building_layout2/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(primaryColor: const Color(0xFF0e7cff)),
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
