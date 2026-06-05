import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData light() => FlexThemeData.light(
        scheme: FlexScheme.deepPurple,
        surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
        blendLevel: 7,
        useMaterial3: true,
        fontFamily: 'Roboto',
      );

  static ThemeData dark() => FlexThemeData.dark(
        scheme: FlexScheme.deepPurple,
        surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
        blendLevel: 13,
        useMaterial3: true,
        fontFamily: 'Roboto',
      );
}
