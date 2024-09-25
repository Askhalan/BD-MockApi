import 'package:bd_mock_api/core/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'widget_themes/appbar_theme.dart';
import 'widget_themes/bottom_sheet_theme.dart';
import 'widget_themes/elevated_button_theme.dart';
import 'widget_themes/outlined_button_theme.dart';
import 'widget_themes/text_theme.dart';

class JAppTheme {
  JAppTheme._();

// +++++++---------------------------- LIGHT THEME ----------------------------+++++++

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: JColor.grey,
    brightness: Brightness.light,
    primaryColor: JColor.primary,
    textTheme: JTextTheme.lightTextTheme,
    scaffoldBackgroundColor: JColor.white,
    appBarTheme: JAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: JBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: JElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: JOutlinedButtonTheme.lightOutlinedButtonTheme,
  );

// +++++++----------------------------- DARK THEME -----------------------------+++++++

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: JColor.grey,
    brightness: Brightness.dark,
    primaryColor: JColor.primary,
    textTheme: JTextTheme.darkTextTheme,
    scaffoldBackgroundColor: JColor.black,
    appBarTheme: JAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: JBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: JElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: JOutlinedButtonTheme.darkOutlinedButtonTheme,
  );
}
