import 'package:flutter/material.dart';
import 'package:recruitment_task/utils/enums/font_options.dart';

class AppTextThemes {
  //------------>light text theme<--------------------//
  static TextTheme lightTextThme = TextTheme(
    displayLarge: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w400,
      fontSize: 28,
      fontFamily: FontOptions.kalpurushBengali.key,
    ),
    displayMedium: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w400,
      fontSize: 24,
      fontFamily: FontOptions.kalpurushBengali.key,
    ),
    displaySmall: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w400,
      fontSize: 22,
      fontFamily: FontOptions.kalpurushBengali.key,
    ),
    headlineLarge: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w700,
      fontSize: 18,
      fontFamily: FontOptions.kalpurushBengali.key,
    ),
    headlineMedium: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w700,
      fontSize: 16,
      fontFamily: FontOptions.kalpurushBengali.key,
    ),
    headlineSmall: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w400,
      fontSize: 16,
      fontFamily: FontOptions.kalpurushBengali.key,
    ),
    titleLarge: TextStyle(

      color: Colors.black.withOpacity(.7),
      fontWeight: FontWeight.w700,
      fontSize: 15,
      fontFamily: FontOptions.kalpurushBengali.key,
    ),
    titleMedium: TextStyle(

      color: Colors.black.withOpacity(.6),
      fontWeight: FontWeight.w400,
      fontSize: 14,
      fontFamily: FontOptions.kalpurushBengali.key,
    ),
    titleSmall: TextStyle(

      color: Colors.black,
      fontWeight: FontWeight.w500,
      fontSize: 12,
      fontFamily: FontOptions.kalpurushBengali.key,
    ),
    bodyLarge: TextStyle(
      wordSpacing: 2,
      color: Colors.black,
      fontWeight: FontWeight.w400,
      fontSize: 18,
      fontFamily: FontOptions.arabic.key,
    ),
    bodyMedium: TextStyle(
      wordSpacing: 2,

      color: Colors.black,
      fontWeight: FontWeight.w700,
      fontSize: 15,
      fontFamily: FontOptions.arabic.key,
    ),
    bodySmall: TextStyle(
      wordSpacing: 2,

      color: Colors.black,
      fontWeight: FontWeight.w500,
      fontSize: 12,
      fontFamily: FontOptions.arabic.key,
    ),
  );  //------------>light text theme<--------------------//
  static TextTheme darkTextThme = TextTheme(
    displayLarge: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w400,
      fontSize: 28,
      fontFamily: FontOptions.kalpurushBengali.key,
    ),
    displayMedium: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w400,
      fontSize: 24,
      fontFamily: FontOptions.kalpurushBengali.key,
    ),
    displaySmall: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w400,
      fontSize: 22,
      fontFamily: FontOptions.kalpurushBengali.key,
    ),
    headlineLarge: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w700,
      fontSize: 16,
      fontFamily: FontOptions.kalpurushBengali.key,
    ),
    headlineMedium: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w700,
      fontSize: 16,
      fontFamily: FontOptions.kalpurushBengali.key,
    ),
    headlineSmall: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w700,
      fontSize: 16,
      fontFamily: FontOptions.kalpurushBengali.key,
    ),
    titleLarge: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w700,
      fontSize: 14,
      fontFamily: FontOptions.kalpurushBengali.key,
    ),
    titleMedium: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w400,
      fontSize: 13,
      fontFamily: FontOptions.kalpurushBengali.key,
    ),
    titleSmall: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w500,
      fontSize: 12,
      fontFamily: FontOptions.kalpurushBengali.key,
    ),
    bodyLarge: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w600,
      fontSize: 16,
      fontFamily: FontOptions.arabic.key,
    ),
    bodyMedium: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w700,
      fontSize: 14,
      fontFamily: FontOptions.arabic.key,
    ),
    bodySmall: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w500,
      fontSize: 12,
      fontFamily: FontOptions.arabic.key,
    ),
  );
}
