import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

ThemeData lightTheme(BuildContext context) {
  return ThemeData(
    primaryColor: primaryColor,
    appBarTheme: AppBarTheme(backgroundColor: primaryColor),
    bottomNavigationBarTheme:
        BottomNavigationBarThemeData(backgroundColor: Color(0xFFEFF0F2)),
    accentColor: accentColor,
    colorScheme: ColorScheme.light(
      secondary: Color(0xFFE4ECEE),
      primary: Color(0xFFFFFFFF),
      primaryVariant: Color(0xFF9399A4),
      secondaryVariant: Color(0xFFE4ECEE),
      surface: Color(0xFFFFFFFF),
    ),
    fontFamily: 'Poppins',
    textTheme: TextTheme(
      bodyText1: TextStyle(color: accentColor),
      caption: TextStyle(color: accentColor),
      bodyText2: TextStyle(color: blueLight),
      headline1: TextStyle(
          color: accentColor, fontSize: 18, fontWeight: FontWeight.w600),
    ),
    textSelectionTheme: TextSelectionThemeData(
      selectionColor: primaryColor.withOpacity(.4),
      selectionHandleColor: accentColor,
    ),
    scaffoldBackgroundColor: Colors.white,
  );
}

ThemeData darkTheme(BuildContext context) {
  return ThemeData(
    primaryColor: primaryColor,
    appBarTheme: AppBarTheme(backgroundColor: Color(0xFF323235)),
    bottomNavigationBarTheme:
        BottomNavigationBarThemeData(backgroundColor: Color(0xFF323235)),
    accentColor: accentColor,
    colorScheme: ColorScheme.dark(
      secondary: accentColor,
      primary: Color(0xFF3E4145),
      primaryVariant: Color(0xFF939EA7),
      secondaryVariant: Color(0xFF141416),
      surface: bgDark,
    ),
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColorBrightness: Brightness.dark,
    textTheme: TextTheme(
      bodyText1: TextStyle(color: Colors.white),
      caption: TextStyle(color: accentColor),
      bodyText2: TextStyle(color: blueLight),
      headline1: TextStyle(
          color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
    ),
    textSelectionTheme: TextSelectionThemeData(
      selectionColor: primaryColor.withOpacity(.4),
      selectionHandleColor: Colors.white,
    ),
    scaffoldBackgroundColor: bgDark,
  );
}
