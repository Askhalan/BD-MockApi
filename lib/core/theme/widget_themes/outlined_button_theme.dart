
import 'package:bd_mock_api/core/utils/constants/colors.dart';
import 'package:bd_mock_api/core/utils/constants/sizes.dart';
import 'package:flutter/material.dart';



/* -- Light & Dark Outlined Button Themes -- */
class JOutlinedButtonTheme {
  JOutlinedButtonTheme._(); //To avoid creating instances


  /* -- Light Theme -- */
  static final lightOutlinedButtonTheme  = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
     elevation: 0,
    // foregroundColor: JColor.light,
    disabledForegroundColor: JColor.darkGrey,

    side: const BorderSide(color: JColor.primary),
    padding: const EdgeInsets.symmetric(vertical: JSize.buttonHeight),
    textStyle: const TextStyle(fontSize: 16, color: JColor.primary, fontWeight: FontWeight.w600),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(JSize.buttonRadius)),
    minimumSize: const Size.fromHeight(50), // Ensure the button has a minimum height
    maximumSize: const Size(double.infinity, 50), // Ensure the button can expand to fill the width
  ).copyWith(
    fixedSize: WidgetStateProperty.all<Size>(const Size(double.infinity, 50)),
  ),
  );

  /* -- Dark Theme -- */
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
     elevation: 0,
    // foregroundColor: JColor.light,
    disabledForegroundColor: JColor.darkGrey,
    side: const BorderSide(color: JColor.primary),
    padding: const EdgeInsets.symmetric(vertical: JSize.buttonHeight),
    // textStyle: const TextStyle(fontSize: 16, color: JColor.primary, fontWeight: FontWeight.w600),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(JSize.buttonRadius)),
    minimumSize: const Size.fromHeight(50), // Ensure the button has a minimum height
    maximumSize: const Size(double.infinity, 50), // Ensure the button can expand to fill the width
  ).copyWith(
    fixedSize: WidgetStateProperty.all<Size>(const Size(double.infinity, 50)),
  ),
  );
}