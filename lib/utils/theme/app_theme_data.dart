import 'package:flutter/material.dart';
import 'package:recruitment_task/utils/theme/app_color_schemes.dart';
import 'package:recruitment_task/utils/theme/app_text_themes.dart';

class AppThemeData{
  //------------>light theme data<--------------------//
  static final lightThemeData=ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor:const Color(0xFFf4f4f4),
    //------------>card color<--------------------//

    cardTheme: CardTheme(
      shape: RoundedRectangleBorder(

        borderRadius: BorderRadius.circular(8),

      ),
      shadowColor: Colors.transparent,
      color: AppColorSchemes.lightColorScheme.surface,
      surfaceTintColor: Colors.transparent,
      margin: const EdgeInsets.all(8),
    ),
    //------------>color scheme<--------------------//
    colorScheme: AppColorSchemes.lightColorScheme,
    //------------>text theme<--------------------//

    textTheme: AppTextThemes.lightTextThme,
    //------------>appbar theme<--------------------//
    appBarTheme: AppBarTheme(
      backgroundColor: AppColorSchemes.lightColorScheme.primary,
      centerTitle: false,
      elevation: 0,
      surfaceTintColor: Colors.transparent,
      titleTextStyle: AppTextThemes.lightTextThme.titleLarge,
      iconTheme: const IconThemeData(color: Colors.white),
    ),





  );
  //------------>light theme data<--------------------//
  static final darkThemeData=ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor:const Color(0xff0d1015),
    //------------>card color<--------------------//

    cardTheme: CardTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),

      ),
      color: const Color(0xFF151c24),
      surfaceTintColor: Colors.transparent,
      margin: const EdgeInsets.all(8),
    ),
    //------------>color scheme<--------------------//
    colorScheme: AppColorSchemes.darkColorScheme,
    //------------>text theme<--------------------//

    textTheme: AppTextThemes.darkTextThme,
    //------------>appbar theme<--------------------//
    appBarTheme: AppBarTheme(
      backgroundColor: AppColorSchemes.darkColorScheme.primary,
      centerTitle: false,
      elevation: 0,
      surfaceTintColor: Colors.transparent,
      titleTextStyle: AppTextThemes.darkTextThme.titleLarge,
      iconTheme: const IconThemeData(color: Colors.white),
    ),





  );

}