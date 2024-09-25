import 'package:bd_mock_api/core/utils/constants/colors.dart';
import 'package:bd_mock_api/core/utils/constants/sizes.dart';
import 'package:flutter/material.dart';



class JAppBarTheme{
  JAppBarTheme._();

// +++++++---------------------------- LIGHT THEME ----------------------------+++++++

  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: JColor.black, size: JSize.iconMd),
    actionsIconTheme: IconThemeData(color: JColor.black, size: JSize.iconMd),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: JColor.black),
  );

  // +++++++---------------------------- DARK THEME ----------------------------+++++++

  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: JColor.black, size: JSize.iconMd),
    actionsIconTheme: IconThemeData(color: JColor.white, size: JSize.iconMd),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: JColor.white),
  );
}