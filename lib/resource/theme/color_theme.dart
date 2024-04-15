import 'package:flutter/material.dart';

class ColorTheme {
  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff000000),
      surfaceTint: Color(0xff5e5e5e),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff262626),
      onPrimaryContainer: Color(0xffb1b1b1),
      secondary: Color(0xff494949),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff6d6d6d),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff000000),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff262626),
      onTertiaryContainer: Color(0xffb1b1b1),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      background: Color(0xfff9f9f9),
      onBackground: Color(0xff1b1b1b),
      surface: Color(0xfff9f9f9),
      onSurface: Color(0xff1b1b1b),
      surfaceVariant: Color(0xffebe0e1),
      onSurfaceVariant: Color(0xff4c4546),
      outline: Color(0xff7e7576),
      outlineVariant: Color(0xffcfc4c5),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff303030),
      inversePrimary: Color(0xffc6c6c6),
    );
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffc6c6c6),
      surfaceTint: Color(0xc6c6c6c6),
      surface: Color(0xff131313),
      onSurface: Color(0xffe2e2e2),
      onPrimary: Color(0xff303030),
      secondary: Color(0xffc7c6c6),
      onSecondary: Color(0xff303030),
      background: Color(0xff131313),
      onBackground: Color(0xffe2e2e2),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      primaryContainer: Color(0xff000000),
      onPrimaryContainer: Color(0xff969696),
      secondaryContainer: Color(0xff545454),
      onSecondaryContainer: Color(0xfff9f7f6),
      tertiary: Color(0xffc6c6c6),
      onTertiary: Color(0xff303030),
      tertiaryContainer: Color(0xff000000),
      onTertiaryContainer: Color(0xff969696),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surfaceVariant: Color(0xff4c4546),
      onSurfaceVariant: Color(0xffcfc4c5),
      outline: Color(0xff988e90),
      outlineVariant: Color(0xff4c4546),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe2e2e2),
      inversePrimary: Color(0xff5e5e5e),
    );
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        scaffoldBackgroundColor: colorScheme.background,
        canvasColor: colorScheme.surface,
      );
}
