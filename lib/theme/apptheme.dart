import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xFF673AB7); // Deep Purple
  static const Color secondary = Color(0xFFFF6F61); // Coral
  static const Color accent = Color(0xFF009688); // Teal
  static const Color background = Color(0xFFF3E5F5); // Lavender
  static const Color textColor = Colors.black87;
}

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.light(
      primary: AppColors.primary,
      secondary: AppColors.secondary,
      background: AppColors.background,
    ),
    scaffoldBackgroundColor: AppColors.background,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.primary,
      foregroundColor: Colors.white,
      elevation: 2,
    ),
    textTheme: TextTheme(
      headlineLarge: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: AppColors.textColor,
      ),
      bodyMedium: TextStyle(
        fontSize: 16,
        color: AppColors.textColor,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.secondary,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    ),
    fontFamily: 'Poppins',
  );
}
