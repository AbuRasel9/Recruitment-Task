import 'package:flutter/material.dart';
import 'package:recruitment_task/presentation/views/hadisBook/all_hadis_book_view.dart';
import 'package:recruitment_task/utils/theme/app_theme_data.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: AppThemeData.lightThemeData,
      darkTheme: AppThemeData.darkThemeData,
      home: const AllHadisBookView(),
    );
  }
}
