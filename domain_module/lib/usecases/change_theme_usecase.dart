import 'package:flutter/material.dart';
import 'package:common_module/flavors.dart';


///
class ChangeThemeUsecase {

  static ThemeData _theme = F.theme.themeData;
  static ThemeData get theme => _theme;

  /// Switch tema da light a dark e viceversa e restituisce il nuovo tema
  ThemeData call() {
    _theme = (theme == F.theme.themeData) ? F.theme.darkThemeData : F.theme.themeData;
    return _theme;
  }

}