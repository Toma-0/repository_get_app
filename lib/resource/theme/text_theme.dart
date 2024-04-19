import 'package:flutter/material.dart';

class TextScheme {
  static TextTheme textTheme() {
    return const TextTheme(
      displayLarge: TextStyle(
        fontFamily: 'Roboto',
        fontSize: 57,
        fontWeight: FontWeight.w400,
        letterSpacing: -0.25,
      ),
      displayMedium: TextStyle(
        fontFamily: 'Roboto',
        fontSize: 45,
        fontWeight: FontWeight.w400,
        letterSpacing: 0,
      ),
      displaySmall: TextStyle(
        fontFamily: 'Roboto',
        fontSize: 36,
        fontWeight: FontWeight.w400,
        letterSpacing: 0,
      ),
      headlineLarge: TextStyle(
        fontFamily: 'Roboto',
        fontSize: 32,
        fontWeight: FontWeight.w400,
        letterSpacing: 0,
      ),
      headlineMedium: TextStyle(
        fontFamily: 'Roboto',
        fontSize: 28,
        fontWeight: FontWeight.w400,
        letterSpacing: 0,
      ),
      headlineSmall: TextStyle(
        fontFamily: 'Roboto',
        fontSize: 24,
        fontWeight: FontWeight.w400,
        letterSpacing: 0,
      ),
      titleLarge: TextStyle(
        fontFamily: 'Roboto',
        fontSize: 22,
        fontWeight: FontWeight.w400,
        letterSpacing: 0,
      ),
      titleMedium: TextStyle(
        fontFamily: 'Roboto',
        fontSize: 16,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.15,
      ),
      titleSmall: TextStyle(
        fontFamily: 'Roboto',
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.1,
      ),
      bodyLarge: TextStyle(
        fontFamily: 'Roboto',
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.5,
      ),
      bodyMedium: TextStyle(
        fontFamily: 'Roboto',
        fontSize: 14,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
      ),
      bodySmall: TextStyle(
        fontFamily: 'Roboto',
        fontSize: 12,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.4,
      ),
      labelLarge: TextStyle(
        fontFamily: 'Roboto',
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.1,
      ),
      labelMedium: TextStyle(
        fontFamily: 'Roboto',
        fontSize: 12,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.5,
      ),
      labelSmall: TextStyle(
        fontFamily: 'Roboto',
        fontSize: 11,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.5,
      ),
    );
  }

  ThemeData theme(TextTheme textScheme) => ThemeData(
        useMaterial3: true,
        primaryTextTheme: textTheme(),
        textTheme: textTheme(),
      );
}
