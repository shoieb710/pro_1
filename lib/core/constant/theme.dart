import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.background,
    primaryColor: AppColors.primary,

    colorScheme: const ColorScheme.light(
      primary: AppColors.primary,
      secondary: AppColors.secondary,
      error: AppColors.error,
    ),

    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.primary,
      foregroundColor: Colors.white,
      elevation: 0,
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    ),

    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        color: AppColors.darkText,
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: TextStyle(
        color: AppColors.darkText,
      ),
      bodyMedium: TextStyle(
        color: AppColors.grayText,
      ),
    ),

    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: AppColors.primary,
      unselectedItemColor: AppColors.grayText,
    ),

    cardTheme: CardThemeData(
      color: Colors.white,
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
    ),
  );
  static ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: AppColors.darkBackground,
  brightness: Brightness.dark,

  colorScheme: const ColorScheme.dark(
    primary: AppColors.primary,
    secondary: AppColors.secondary,
    error: AppColors.error,
  ),

  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.darkSurface,
    foregroundColor: Colors.white,
  ),

  cardTheme: CardThemeData(
    color: AppColors.darkCard,
    elevation: 2,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
  ),

  textTheme: const TextTheme(
    headlineLarge: TextStyle(
      color: AppColors.darkTextPrimary,
      fontWeight: FontWeight.bold,
    ),
    bodyLarge: TextStyle(
      color: AppColors.darkTextPrimary,
    ),
    bodyMedium: TextStyle(
      color: AppColors.darkTextSecondary,
    ),
  ),
);
}




enum ThemeType { light, dark }

class ThemeCubit extends Cubit<ThemeData> {
  ThemeCubit() : super(AppTheme.lightTheme) {
    loadTheme(); // تحميل الtheme من البداية
  }

  void toggleTheme() {
    if (state == AppTheme.lightTheme) {
      emit(AppTheme.darkTheme);
      saveTheme(ThemeType.dark);
    } else {
      emit(AppTheme.lightTheme);
      saveTheme(ThemeType.light);
    }
  }

  Future<void> loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    final themeIndex = prefs.getInt('theme') ?? 0;
    if (themeIndex == 1) {
      emit(AppTheme.darkTheme);
    } else {
      emit(AppTheme.lightTheme);
    }
  }

  Future<void> saveTheme(ThemeType type) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('theme', type == ThemeType.light ? 0 : 1);
  }
}