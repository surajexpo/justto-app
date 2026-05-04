import 'package:flutter/material.dart';
import 'package:sixam_mart/util/app_constants.dart';

// Logo-based dark colors
const Color justtoBlack = Color(0xFF111111); // Logo black
const Color justtoBlue = Color(0xFF0077C8); // Accent blue
const Color justtoGreen = Color(0xFF48C774); // Secondary accent

ThemeData dark({Color color = justtoBlack}) => ThemeData(
      fontFamily: AppConstants.fontFamily,

      // Primary brand color (LOGO BLACK)
      primaryColor: justtoBlack,

      // Secondary accent (Blue from your brand palette)
      secondaryHeaderColor: justtoBlue,

      disabledColor: const Color(0xffa2a7ad),
      brightness: Brightness.dark,
      hintColor: const Color(0xFFbebebe),

      cardColor: const Color(0xFF1E1E22),

      shadowColor: Colors.white24,

      textTheme: const TextTheme(
        bodyMedium: TextStyle(color: Colors.white70),
      ),

      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: justtoGreen,
        ),
      ),

      colorScheme: const ColorScheme.dark(
        primary: justtoBlack,
        secondary: justtoBlue,
        surface: Color(0xFF191A26),
        error: Color(0xFFdd3135),
      ),

      popupMenuTheme: const PopupMenuThemeData(
        color: Color(0xFF29292D),
        surfaceTintColor: Color(0xFF29292D),
      ),

      dialogTheme: const DialogThemeData(
        surfaceTintColor: Colors.white10,
      ),

      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: justtoBlue,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(500),
        ),
      ),

      bottomAppBarTheme: const BottomAppBarThemeData(
        color: Color(0xFF121212),
        surfaceTintColor: Colors.black,
        height: 60,
        padding: EdgeInsets.symmetric(vertical: 5),
      ),

      dividerTheme: const DividerThemeData(
        thickness: 0.5,
        color: Color(0xFF444444),
      ),

      tabBarTheme: const TabBarThemeData(
        dividerColor: Colors.transparent,
        labelColor: justtoBlack, // Logo black look
        indicatorColor: justtoBlue, // Blue underline
      ),
    );
