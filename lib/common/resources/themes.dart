import 'package:flutter/material.dart';

/// This class is used to provide all theming elements in a statical way
class AppTheme {
  /// Palette of `Primary` color's
  static const Color _primary = Color(0xFF1365FE);
  static const Color _primaryDark = Color(0xFF0D2ADF);
  static const Color _primaryLight = Color(0xFF4CD1FF);

  /// Palette of `Secondary` color's
  static const Color _secondary = Color(0xFF00AFF1);
  static const Color _secondaryDark = Color(0xFF00AFF1);
  static const Color _secondaryLight = Color(0xFF00AFF1);

  /// Palette of `State` color's
  static const Color _error = Color(0xFFFF3B3B);
  static const Color _success = Color(0xFF06C270);
  static const Color _warning = Color(0xffffcc00);
  static const Color _info = Color(0xFF0063F7);

  /// Other color's
  static const Color _background = Color(0xFFF4F5F8);
  static const Color _backgroundDark = Color(0xFF1D1B1C);

  static const String _font = 'Airbnb';

  /// Init `theme light data` from application
  static final ThemeData light = ThemeData(
    appBarTheme: const AppBarTheme(
      actionsIconTheme: IconThemeData(),
      brightness: Brightness.light,
      iconTheme: IconThemeData(),
      textTheme: TextTheme(),
    ),
    primaryColor: _primary,
    brightness: Brightness.light,
    primaryColorDark: _primaryDark,
    primaryColorLight: _primaryLight,
    accentColorBrightness: Brightness.light,
    // backgroundColor: background,
    buttonColor: _primary,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: _primary,
      elevation: 0,
      focusElevation: 1,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      foregroundColor: Colors.white,
    ),
    accentColor: _secondary,
    splashColor: _primary,
    // scaffoldBackgroundColor: background,
    cardColor: Colors.white,
    cardTheme: const CardTheme(
      color: Colors.white,
    ),
    iconTheme: const IconThemeData(),
    textTheme: const TextTheme(
      headline1: TextStyle(
        fontFamily: _font,
        fontSize: 96,
        fontWeight: FontWeight.w300,
        letterSpacing: -1.5,
        decoration: TextDecoration.none,
      ),
      headline2: TextStyle(
        fontFamily: _font,
        fontSize: 60,
        fontWeight: FontWeight.w300,
        letterSpacing: -0.5,
        decoration: TextDecoration.none,
      ),
      headline3: TextStyle(
        fontFamily: _font,
        fontSize: 48,
        fontWeight: FontWeight.w500,
        letterSpacing: 0,
        decoration: TextDecoration.none,
      ),
      headline4: TextStyle(
        fontFamily: _font,
        fontSize: 34,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.25,
        decoration: TextDecoration.none,
      ),
      headline5: TextStyle(
        fontFamily: _font,
        fontSize: 24,
        fontWeight: FontWeight.w500,
        letterSpacing: 0,
        decoration: TextDecoration.none,
      ),
      headline6: TextStyle(
        fontFamily: _font,
        fontSize: 20,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.15,
        decoration: TextDecoration.none,
      ),
      subtitle1: TextStyle(
        fontFamily: _font,
        fontSize: 16,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.15,
        decoration: TextDecoration.none,
      ),
      subtitle2: TextStyle(
        fontFamily: _font,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.1,
        decoration: TextDecoration.none,
      ),
      bodyText1: TextStyle(
        fontFamily: _font,
        fontSize: 16,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.5,
        decoration: TextDecoration.none,
      ),
      bodyText2: TextStyle(
        fontFamily: _font,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.25,
        decoration: TextDecoration.none,
      ),
      button: TextStyle(
        fontFamily: _font,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 1.25,
        decoration: TextDecoration.none,
      ),
      caption: TextStyle(
        fontFamily: _font,
        fontSize: 12,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.4,
        decoration: TextDecoration.none,
      ),
      overline: TextStyle(
        fontFamily: _font,
        fontSize: 10,
        fontWeight: FontWeight.w500,
        letterSpacing: 1.5,
        decoration: TextDecoration.none,
      ),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: _background,
      elevation: 0,
    ),
    buttonTheme: const ButtonThemeData(),
  );

  /// Init `theme dark data` from application
  static final ThemeData dark = ThemeData(
    appBarTheme: const AppBarTheme(
      actionsIconTheme: IconThemeData(),
      brightness: Brightness.dark,
      color: _primary,
      iconTheme: IconThemeData(),
      textTheme: TextTheme(),
    ),
    primaryColor: _primary,
    primaryColorDark: _primaryDark,
    primaryColorLight: _primaryLight,
    accentColorBrightness: Brightness.dark,
    backgroundColor: _backgroundDark,
    buttonColor: _primary,
    dividerColor: Colors.white30,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: _primary,
      elevation: 0,
      focusElevation: 1,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      foregroundColor: Colors.white,
    ),
    accentColor: _secondary,
    splashColor: _primary,
    scaffoldBackgroundColor: _backgroundDark,
    cardColor: Colors.grey.shade900,
    cardTheme: CardTheme(
      color: Colors.grey.shade900,
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: _backgroundDark,
      elevation: 0,
    ),
    iconTheme: const IconThemeData(),
    textTheme: const TextTheme(
      headline1: TextStyle(
        fontFamily: _font,
        fontSize: 96,
        fontWeight: FontWeight.w300,
        letterSpacing: -1.5,
        color: Colors.white12,
        decoration: TextDecoration.none,
      ),
      headline2: TextStyle(
        fontFamily: _font,
        fontSize: 60,
        fontWeight: FontWeight.w300,
        letterSpacing: -0.5,
        color: Colors.white24,
        decoration: TextDecoration.none,
      ),
      headline3: TextStyle(
        fontFamily: _font,
        fontSize: 48,
        fontWeight: FontWeight.w500,
        letterSpacing: 0,
        color: Colors.white30,
        decoration: TextDecoration.none,
      ),
      headline4: TextStyle(
        fontFamily: _font,
        fontSize: 34,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.25,
        color: Colors.white24,
        decoration: TextDecoration.none,
      ),
      headline5: TextStyle(
        fontFamily: _font,
        fontSize: 24,
        fontWeight: FontWeight.w500,
        letterSpacing: 0,
        color: Colors.white70,
        decoration: TextDecoration.none,
      ),
      headline6: TextStyle(
        fontFamily: _font,
        fontSize: 20,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.15,
        color: Colors.white,
        decoration: TextDecoration.none,
      ),
      subtitle1: TextStyle(
        fontFamily: _font,
        fontSize: 16,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.15,
        color: Colors.white,
        decoration: TextDecoration.none,
      ),
      subtitle2: TextStyle(
        fontFamily: _font,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.1,
        color: Colors.white,
        decoration: TextDecoration.none,
      ),
      bodyText1: TextStyle(
        fontFamily: _font,
        fontSize: 16,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.5,
        color: Colors.white,
        decoration: TextDecoration.none,
      ),
      bodyText2: TextStyle(
        fontFamily: _font,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.25,
        color: Colors.white,
        decoration: TextDecoration.none,
      ),
      button: TextStyle(
        fontFamily: _font,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 1.25,
        color: Colors.white,
        decoration: TextDecoration.none,
      ),
      caption: TextStyle(
        fontFamily: _font,
        fontSize: 12,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.4,
        color: Colors.white30,
        decoration: TextDecoration.none,
      ),
      overline: TextStyle(
        fontFamily: _font,
        fontSize: 10,
        fontWeight: FontWeight.w500,
        letterSpacing: 1.5,
        color: Colors.white24,
        decoration: TextDecoration.none,
      ),
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: _primary,
    ),
  );
}
