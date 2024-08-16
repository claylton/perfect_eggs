import 'package:flutter/material.dart';
import 'package:perfect_eggs/pages/splash_page.dart';
import 'package:perfect_eggs/themes/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Perfect Eggs',
      theme: appTheme(),
      debugShowCheckedModeBanner: false,
      home: const SplashPage(),
    );
  }
}
