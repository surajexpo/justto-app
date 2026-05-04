import 'package:flutter/material.dart';
import 'package:sixam_mart/util/app_constants.dart';

// Updated Justto brand colors (according to logo)
const Color justtoBlack = Color(0xFF111111); // Logo text black
const Color justtoBlue = Color(0xFF0077C8); // Accent blue
const Color justtoGreen = Color(0xFF48C774); // Secondary green

ThemeData light({Color color = justtoBlack}) => ThemeData(
      fontFamily: AppConstants.fontFamily,

      // Primary brand color (Logo black)
      primaryColor: justtoBlack,

      // Secondary brand color (Accent blue)
      secondaryHeaderColor: justtoBlue,

      disabledColor: const Color(0xFF9F9F9F),
      brightness: Brightness.light,
      hintColor: const Color(0xFF9F9F9F),
      cardColor: Colors.white,

      shadowColor: Colors.black.withOpacity(0.03),

      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: justtoGreen,
        ),
      ),

      colorScheme: const ColorScheme.light(
        primary: justtoBlack,
        secondary: justtoBlue,
        surface: Color(0xFFFCFCFC),
        error: Color(0xFFE84D4F),
      ),

      popupMenuTheme: const PopupMenuThemeData(
        color: Colors.white,
        surfaceTintColor: Colors.white,
      ),

      dialogTheme: const DialogThemeData(
        surfaceTintColor: Colors.white,
      ),

      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: justtoBlue,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(500),
        ),
      ),

      bottomAppBarTheme: const BottomAppBarThemeData(
        surfaceTintColor: Colors.white,
        height: 60,
        padding: EdgeInsets.symmetric(vertical: 5),
        color: Color(0xFFFFFFFF),
      ),

      dividerTheme: const DividerThemeData(
        thickness: 0.2,
        color: Color(0xFFA0A4A8),
      ),

      tabBarTheme: const TabBarThemeData(
        dividerColor: Colors.transparent,
        labelColor: justtoBlack, // Logo black tabs
        indicatorColor: justtoBlue, // Blue underline
      ),
    );
