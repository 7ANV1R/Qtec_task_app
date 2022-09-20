import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomAppTheme {
  // Light Theme

  static Color lightPrimaryColor = const Color(0xffDA2079);
  static Color lightSecondaryColor = const Color(0xff6210E1);
  static MaterialStateProperty<Color?>? lightBackgroundColor =
      MaterialStateProperty.all(const Color(0xffF7F2FF));
  static Color lightScaffoldBackgroundColor = const Color(0xffF7F2FF);
  static Color lightBlackPrimary = const Color(0xff323232);
  static Color inputHintTextColor = const Color(0xff989898);
  static Color inputBGColor = const Color(0xffFFFFFF);

  static Color lightGrayBorderSideColor = const Color(0xffDFDFDF);
  static ColorScheme lightColorScheme = const ColorScheme.light().copyWith(
    primary: const Color(0xffDA2079),
  );

  static final lightTheme = ThemeData(
    fontFamily: 'BalooDa2',
    brightness: Brightness.light,
    primaryColor: lightPrimaryColor,
    scaffoldBackgroundColor: lightScaffoldBackgroundColor,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    colorScheme: lightColorScheme,
    primaryColorLight: lightBlackPrimary,
    appBarTheme: AppBarTheme(
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      color: lightScaffoldBackgroundColor,
      elevation: 0,
      shadowColor: Colors.transparent,
      foregroundColor: lightBlackPrimary,
    ),
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w800,
        color: lightBlackPrimary,
      ),
      headline2: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w800,
        color: lightBlackPrimary,
      ),
      bodyText1: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w800,
        color: lightBlackPrimary,
      ),
      bodyText2: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w800,
        color: lightBlackPrimary,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      hintStyle: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: inputHintTextColor,
      ),
      filled: true,
      fillColor: inputBGColor,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide.none,
      ),
    ),
  );
}
