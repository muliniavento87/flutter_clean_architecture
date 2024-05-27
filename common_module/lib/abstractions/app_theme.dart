import 'package:common_module/utilities/material_color_generator.dart';
import 'package:flutter/material.dart';

/// Template
abstract class AppTheme {
  final Color colorScaffold = MaterialColorGenerator.from(const Color(0xFFF4F4F4));
  final Color secondaryColor = const Color(0xFF2A2E6A);
  final ThemeData themeData = ThemeData();
  final ThemeData darkThemeData = ThemeData();
}