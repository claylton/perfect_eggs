import 'package:flutter/material.dart';

const brightness = Brightness.dark;
const primaryColor = Color(0xFFFDBF00);
const accentColor = Color(0xFFFFFFFF);

ThemeData appTheme() {
  return ThemeData(
    primaryColor: primaryColor,
    colorScheme: ColorScheme.fromSeed(
      brightness: brightness,
      seedColor: primaryColor,
      secondary: accentColor,
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(fontFamily: "Montserrat"),
      bodyMedium: TextStyle(fontFamily: "Montserrat"),
      bodySmall: TextStyle(fontFamily: "Montserrat"),
      displayLarge: TextStyle(fontFamily: "Montserrat"),
      displayMedium: TextStyle(fontFamily: "Montserrat"),
      displaySmall: TextStyle(fontFamily: "Montserrat"),
      headlineLarge: TextStyle(fontFamily: "Montserrat"),
      headlineMedium: TextStyle(fontFamily: "Montserrat"),
      headlineSmall: TextStyle(fontFamily: "Montserrat"),
      labelLarge: TextStyle(fontFamily: "Montserrat"),
      labelMedium: TextStyle(fontFamily: "Montserrat"),
      labelSmall: TextStyle(fontFamily: "Montserrat"),
      titleLarge: TextStyle(fontFamily: "Montserrat"),
      titleMedium: TextStyle(fontFamily: "Montserrat"),
      titleSmall: TextStyle(fontFamily: "Montserrat"),
    ),
  );
}
