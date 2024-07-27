import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryColor = Color(0xFF1d8763) ;
  static const Color secondaryColor = Color(0xFF4dbb96);
  static const Color tertiaryColor = Color(0xFF70bb66);
  // static const Color outLineColor = Color(0xFF1d8763);
}

class AppColorSchemes {
  //------------> Light Color Scheme<--------------------//
  static const ColorScheme lightColorScheme = ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.primaryColor,
      onPrimary: Colors.white,
      secondary: AppColors.secondaryColor,
      onSecondary: Colors.white,
      error: Colors.red,
      onError: Colors.white,
      // outline: AppColors.outLineColor,
      surface: Colors.white,
      onSurface: Colors.black,
      tertiary: AppColors.tertiaryColor
  );
  //------------> dark Color Scheme<--------------------//
  static const ColorScheme darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: AppColors.primaryColor,
    onPrimary: Colors.white,
    secondary: AppColors.secondaryColor,
    onSecondary: Colors.white,
    error: Colors.red,
    onError: Colors.white,
    // outline: AppColors.outLineColor,
    surface: Colors.black45,
    onSurface: Colors.white,
    tertiary: AppColors.tertiaryColor,
  );
}
