import 'package:flutter/material.dart';

class AppTheme {
  // Light Theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Color(0xFFE8E8E8), // Grey background
    appBarTheme: AppBarTheme(
      backgroundColor: Color(0xFFE8E8E8),
      elevation: 0,
      titleTextStyle: TextStyle(
        color: Colors.black87,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    ),
    colorScheme: ColorScheme.light(
      primary: Colors.blue,
      secondary: Colors.blueAccent,
      surface: Color(0xFFE8E8E8),
      background: Color(0xFFE8E8E8),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white, // White buttons
        foregroundColor: Colors.black87,
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        textStyle: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.black87,
        side: BorderSide(color: Colors.grey.shade400),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      ),
    ),
    textTheme: TextTheme(
      displayLarge: TextStyle(color: Colors.black87, fontSize: 32),
      displayMedium: TextStyle(color: Colors.black87, fontSize: 28),
      bodyLarge: TextStyle(color: Colors.black87, fontSize: 16),
      bodyMedium: TextStyle(color: Colors.black87, fontSize: 14),
    ),
  );

  // Dark Theme (Eye Protective)
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: Color(0xFF1A73E8),
    scaffoldBackgroundColor: Color(0xFF121212), // Soft dark background
    appBarTheme: AppBarTheme(
      backgroundColor: Color(0xFF1E1E1E),
      elevation: 0,
      titleTextStyle: TextStyle(
        color: Colors.white70,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    ),
    colorScheme: ColorScheme.dark(
      primary: Color(0xFF1A73E8),
      secondary: Color(0xFF4FA3FF),
      surface: Color(0xFF1E1E1E),
      background: Color(0xFF121212),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFF2D2D2D), // Dark grey buttons
        foregroundColor: Colors.white70,
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        textStyle: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.white70,
        side: BorderSide(color: Color(0xFF404040)),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      ),
    ),
    textTheme: TextTheme(
      displayLarge: TextStyle(color: Colors.white70, fontSize: 32),
      displayMedium: TextStyle(color: Colors.white70, fontSize: 28),
      bodyLarge: TextStyle(color: Colors.white70, fontSize: 16),
      bodyMedium: TextStyle(color: Colors.white70, fontSize: 14),
    ),
  );

  // Additional color constants for calculator buttons
  static const Color lightNumberButton = Colors.white;
  static const Color lightOperationButton = Colors.blue;
  static const Color lightEqualButton = Colors.green;
  
  static const Color darkNumberButton = Color(0xFF2D2D2D);
  static const Color darkOperationButton = Color(0xFF1A73E8);
  static const Color darkEqualButton = Color(0xFF1B5E20);
}
