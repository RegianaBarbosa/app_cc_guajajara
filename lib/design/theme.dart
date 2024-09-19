import 'package:flutter/material.dart';

class AppColors {
  static const Color verdeEscuro = Color(0xFF4A7C59);
  static const Color marromClaro = Color(0xFFA67C52);
  static const Color begeClaro = Color(0xFFE6D3B1);
  static const Color begeEscuro = Color(0xFFC19A6B);
  static const Color cinzaClaro = Color(0xFFF9F9F9);
}

class AppTheme {
  static ThemeData get theme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.verdeEscuro,
        primary: AppColors.verdeEscuro,
        secondary: AppColors.marromClaro,
        surface: AppColors.cinzaClaro,
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        onSurface: AppColors.verdeEscuro,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.verdeEscuro,
        titleTextStyle: TextStyle(
          fontFamily: 'Poppins',
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      textTheme: const TextTheme(
        headlineMedium: TextStyle(
            fontFamily: 'Poppins',
            color: AppColors.verdeEscuro,
            fontSize: 22,
            fontWeight: FontWeight.bold),
        bodyMedium: TextStyle(color: AppColors.marromClaro),
      ),
      buttonTheme: const ButtonThemeData(
        buttonColor: AppColors.verdeEscuro,
        textTheme: ButtonTextTheme.primary,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.verdeEscuro,
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppColors.marromClaro,
        ),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        fillColor: AppColors.begeClaro,
        filled: true,
        hintStyle: TextStyle(color: AppColors.verdeEscuro),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.begeEscuro),
        ),
      ),
      sliderTheme: SliderThemeData(
        activeTrackColor: AppColors.verdeEscuro,
        inactiveTrackColor: AppColors.cinzaClaro,
        thumbColor: AppColors.marromClaro,
        overlayColor: AppColors.begeEscuro.withOpacity(0.2),
      ),
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: AppColors.marromClaro,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: AppColors.verdeEscuro,
      ),
    );
  }
}
