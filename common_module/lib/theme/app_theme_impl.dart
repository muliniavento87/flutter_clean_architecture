import 'package:flutter/material.dart';
import '../abstractions/app_theme.dart';


class AppThemeImpl extends AppTheme {

  @override
  Color get colorScaffold => const Color(0xFFAAAAAA);

  @override
  Color get secondaryColor => const Color(0xFF2A2E6A);

  @override
  ThemeData get themeData => ThemeData.light().copyWith(
    scaffoldBackgroundColor: colorScaffold,
    iconTheme: IconThemeData(color: secondaryColor),
    textTheme: TextTheme(headlineSmall: TextStyle(fontWeight: FontWeight.bold, color: secondaryColor), titleLarge: TextStyle(fontWeight: FontWeight.bold, color: secondaryColor)),
    inputDecorationTheme: const InputDecorationTheme(
      isDense: true,
      border: OutlineInputBorder(
          borderSide: BorderSide(
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.all(Radius.circular(32))),
    ),
  );

  @override
  ThemeData get darkThemeData => ThemeData.dark().copyWith(
    scaffoldBackgroundColor: colorScaffold,
    iconTheme: IconThemeData(color: secondaryColor),
    textTheme: TextTheme(headlineSmall: TextStyle(fontWeight: FontWeight.bold, color: secondaryColor), titleLarge: TextStyle(fontWeight: FontWeight.bold, color: secondaryColor)),
    inputDecorationTheme: const InputDecorationTheme(
      isDense: true,
      border: OutlineInputBorder(
          borderSide: BorderSide(
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.all(Radius.circular(32))),
    ),
  );
}
