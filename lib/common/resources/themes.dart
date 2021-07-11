import 'package:flutter/material.dart';

/// Extension to apply customs text themes
extension CustomTextStyles on TextTheme {
  /// Moony message text style
  TextStyle get moonyMessage {
    return const TextStyle(
      fontSize: 20.0,
      color: Colors.white,
    );
  }
}

/// This class is used to provide all theming elements in a statical way
class AppTheme {
  /// Palette of `Primary` color's
  static const Color primary = Color(0xffa5224b);
  // ignore: public_member_api_docs
  static const Color primaryDark = Color(0x773b234a);
  // ignore: public_member_api_docs
  static const Color primaryLight = Color(0xFFdda7b7);

  /// Palette of `Secondary` color's
  static const Color secondary = Color(0xFF3b234a);
  // ignore: public_member_api_docs
  static const Color secondaryDark = Color(0x773b234a);
  // ignore: public_member_api_docs
  static const Color secondaryLight = Color(0xFFb0a7b7);

  /// Palette of `Tertiary` color's
  static const Color tertiary = Color(0xFF999999);
  // ignore: public_member_api_docs
  static const Color tertiaryDark = Color(0xFF000000);
  // ignore: public_member_api_docs
  static const Color tertiaryLight = Color(0xFFFFFFFF);

  /// Palette of `State` color's
  static const Color error = Color(0xFFFF3B3B);
  // ignore: public_member_api_docs
  static const Color success = Color(0xFF06C270);
  // ignore: public_member_api_docs
  static const Color warning = Color(0xffffcc00);
  // ignore: public_member_api_docs
  static const Color info = Color(0xFF0063F7);

  /// Other color's
  static const Color background = Color(0xFFF4F5F8);
  // ignore: public_member_api_docs
  static const Color backgroundDark = Color(0xFF1D1B1C);

  static const String _font = 'Airbnb';

  static AppBarTheme _appBarTheme({Color? color, Brightness? brightness}) {
    return AppBarTheme(
      actionsIconTheme: const IconThemeData(),
      brightness: brightness,
      color: color,
      shadowColor: color,
      iconTheme: const IconThemeData(),
      textTheme: const TextTheme(),
    );
  }

  static OutlinedButtonThemeData _outlinedButtonThemeData({
    Color? primaryColor,
    Color? overlayColor,
  }) {
    return OutlinedButtonThemeData(
        style: ButtonStyle(
      // OutlinedButton.styleFrom(
      // primary: color,
      shape: ButtonStyleButton.allOrNull<OutlinedBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(60))),
      side:
          ButtonStyleButton.allOrNull<BorderSide>(const BorderSide(width: 2.0)),
      textStyle:
          ButtonStyleButton.allOrNull<TextStyle>(const TextStyle(fontSize: 20)),
      padding: ButtonStyleButton.allOrNull<EdgeInsetsGeometry>(
          const EdgeInsets.symmetric(vertical: 8, horizontal: 8)),
      foregroundColor: ButtonStyleButton.allOrNull<Color>(primaryColor),
      overlayColor: ButtonStyleButton.allOrNull<Color>(overlayColor),
    ));
  }

  static const FloatingActionButtonThemeData _floatingActionButtonThemeData =
      FloatingActionButtonThemeData(
    backgroundColor: primary,
    elevation: 0,
    focusElevation: 1,
    focusColor: Colors.transparent,
    hoverColor: Colors.transparent,
    splashColor: Colors.transparent,
    foregroundColor: Colors.white,
  );

  static IconThemeData _iconTheme({Color? color}) {
    return IconThemeData(color: color, size: 40);
  }

  static TextTheme _textTheme(
      {Color? color,
      Color? headlineColor,
      Color? captionColor,
      Color? overlineColor}) {
    return TextTheme(
      headline1: TextStyle(
        fontFamily: _font,
        fontSize: 96,
        fontWeight: FontWeight.w300,
        letterSpacing: -1.5,
        color: headlineColor,
        decoration: TextDecoration.none,
      ),
      headline2: TextStyle(
        fontFamily: _font,
        fontSize: 60,
        fontWeight: FontWeight.w300,
        letterSpacing: -0.5,
        color: headlineColor,
        decoration: TextDecoration.none,
      ),
      headline3: TextStyle(
        fontFamily: _font,
        fontSize: 48,
        fontWeight: FontWeight.w500,
        letterSpacing: 0,
        color: headlineColor,
        decoration: TextDecoration.none,
      ),
      headline4: TextStyle(
        fontFamily: _font,
        fontSize: 34,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.25,
        color: headlineColor,
        decoration: TextDecoration.none,
      ),
      headline5: TextStyle(
        fontFamily: _font,
        fontSize: 24,
        fontWeight: FontWeight.w500,
        letterSpacing: 0,
        color: headlineColor,
        decoration: TextDecoration.none,
      ),
      headline6: TextStyle(
        fontFamily: _font,
        fontSize: 20,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.15,
        color: headlineColor,
        decoration: TextDecoration.none,
      ),
      subtitle1: TextStyle(
        fontFamily: _font,
        fontSize: 16,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.15,
        color: color,
        decoration: TextDecoration.none,
      ),
      subtitle2: TextStyle(
        fontFamily: _font,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.1,
        color: color,
        decoration: TextDecoration.none,
      ),
      bodyText1: TextStyle(
        fontFamily: _font,
        fontSize: 16,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.5,
        color: color,
        decoration: TextDecoration.none,
      ),
      bodyText2: TextStyle(
        fontFamily: _font,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.25,
        color: color,
        decoration: TextDecoration.none,
      ),
      button: TextStyle(
        fontFamily: _font,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 1.25,
        color: color,
        decoration: TextDecoration.none,
      ),
      caption: TextStyle(
        fontFamily: _font,
        fontSize: 12,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.4,
        color: captionColor,
        decoration: TextDecoration.none,
      ),
      overline: TextStyle(
        fontFamily: _font,
        fontSize: 10,
        fontWeight: FontWeight.w500,
        letterSpacing: 1.5,
        color: overlineColor,
        decoration: TextDecoration.none,
      ),
    );
  }

  /// Init `theme light data` from application
  static final ThemeData light = ThemeData(
    appBarTheme:
        _appBarTheme(color: Colors.transparent, brightness: Brightness.light),
    outlinedButtonTheme: _outlinedButtonThemeData(
        primaryColor: Colors.black, overlayColor: primaryLight),
    primaryColor: primary,
    brightness: Brightness.light,
    primaryColorDark: primaryDark,
    primaryColorLight: primaryLight,
    floatingActionButtonTheme: _floatingActionButtonThemeData,
    splashColor: primary,
    // scaffoldBackgroundColor: background,
    cardColor: Colors.white,
    cardTheme: const CardTheme(
      color: Colors.white,
    ),
    iconTheme: _iconTheme(color: Colors.black),
    textTheme: _textTheme(),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: background,
      elevation: 0,
    ),
    buttonTheme: const ButtonThemeData(
        splashColor: Colors.red, highlightColor: Colors.red),
  );

  /// Init `theme dark data` from application
  static final ThemeData dark = ThemeData(
    appBarTheme:
        _appBarTheme(color: Colors.transparent, brightness: Brightness.dark),
    primaryColor: primary,
    primaryColorDark: primaryDark,
    primaryColorLight: primaryLight,
    backgroundColor: backgroundDark,
    dividerColor: Colors.white30,
    outlinedButtonTheme: _outlinedButtonThemeData(
        primaryColor: Colors.white24, overlayColor: primaryDark),
    floatingActionButtonTheme: _floatingActionButtonThemeData,
    splashColor: primary,
    scaffoldBackgroundColor: backgroundDark,
    cardColor: Colors.grey.shade900,
    cardTheme: CardTheme(
      color: Colors.grey.shade900,
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: backgroundDark,
      elevation: 0,
    ),
    iconTheme: _iconTheme(color: Colors.black),
    textTheme: _textTheme(
        color: Colors.white,
        headlineColor: Colors.white24,
        captionColor: Colors.white30,
        overlineColor: Colors.white24),
    buttonTheme: const ButtonThemeData(
      buttonColor: primary,
    ),
  );
}
