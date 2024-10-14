import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff566500),
      surfaceTint: Color(0xff566500),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffe7ff75),
      onPrimaryContainer: Color(0xff4a5700),
      secondary: Color(0xff576416),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffdfef91),
      onSecondaryContainer: Color(0xff445000),
      tertiary: Color(0xff46680e),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffddffaa),
      onTertiaryContainer: Color(0xff3a5b00),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      surface: Color(0xfffafbe7),
      onSurface: Color(0xff1b1d11),
      onSurfaceVariant: Color(0xff454934),
      outline: Color(0xff767962),
      outlineVariant: Color(0xffc6c9ae),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff303125),
      inversePrimary: Color(0xffb6d300),
      primaryFixed: Color(0xffd2f031),
      onPrimaryFixed: Color(0xff181e00),
      primaryFixedDim: Color(0xffb6d300),
      onPrimaryFixedVariant: Color(0xff404c00),
      secondaryFixed: Color(0xffdbeb8d),
      onSecondaryFixed: Color(0xff181e00),
      secondaryFixedDim: Color(0xffbfce74),
      onSecondaryFixedVariant: Color(0xff404c00),
      tertiaryFixed: Color(0xffc6f088),
      onTertiaryFixed: Color(0xff111f00),
      tertiaryFixedDim: Color(0xffabd46f),
      onTertiaryFixedVariant: Color(0xff324f00),
      surfaceDim: Color(0xffdbdbc8),
      surfaceBright: Color(0xfffafbe7),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff5f5e1),
      surfaceContainer: Color(0xffefefdc),
      surfaceContainerHigh: Color(0xffe9e9d6),
      surfaceContainerHighest: Color(0xffe3e4d1),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff3d4800),
      surfaceTint: Color(0xff566500),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff6b7c00),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff3d4800),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff6d7b2b),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff2f4a00),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff5b7f25),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffafbe7),
      onSurface: Color(0xff1b1d11),
      onSurfaceVariant: Color(0xff414530),
      outline: Color(0xff5e614b),
      outlineVariant: Color(0xff7a7d65),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff303125),
      inversePrimary: Color(0xffb6d300),
      primaryFixed: Color(0xff6b7c00),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff546200),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff6d7b2b),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff556213),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff5b7f25),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff44660b),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffdbdbc8),
      surfaceBright: Color(0xfffafbe7),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff5f5e1),
      surfaceContainer: Color(0xffefefdc),
      surfaceContainerHigh: Color(0xffe9e9d6),
      surfaceContainerHighest: Color(0xffe3e4d1),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff1f2500),
      surfaceTint: Color(0xff566500),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff3d4800),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff1f2500),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff3d4800),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff162700),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff2f4a00),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffafbe7),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff222513),
      outline: Color(0xff414530),
      outlineVariant: Color(0xff414530),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff303125),
      inversePrimary: Color(0xffdbfa3c),
      primaryFixed: Color(0xff3d4800),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff283000),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff3d4800),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff283000),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff2f4a00),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff1e3200),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffdbdbc8),
      surfaceBright: Color(0xfffafbe7),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff5f5e1),
      surfaceContainer: Color(0xffefefdc),
      surfaceContainerHigh: Color(0xffe9e9d6),
      surfaceContainerHighest: Color(0xffe3e4d1),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffffff),
      surfaceTint: Color(0xffb6d300),
      onPrimary: Color(0xff2c3400),
      primaryContainer: Color(0xffc4e21f),
      onPrimaryContainer: Color(0xff394400),
      secondary: Color(0xffbfce74),
      onSecondary: Color(0xff2c3400),
      secondaryContainer: Color(0xff3b4600),
      onSecondaryContainer: Color(0xffd0e084),
      tertiary: Color(0xffffffff),
      onTertiary: Color(0xff213600),
      tertiaryContainer: Color(0xffb8e27c),
      onTertiaryContainer: Color(0xff2c4700),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff121409),
      onSurface: Color(0xffe3e4d1),
      onSurfaceVariant: Color(0xffc6c9ae),
      outline: Color(0xff90937a),
      outlineVariant: Color(0xff454934),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe3e4d1),
      inversePrimary: Color(0xff566500),
      primaryFixed: Color(0xffd2f031),
      onPrimaryFixed: Color(0xff181e00),
      primaryFixedDim: Color(0xffb6d300),
      onPrimaryFixedVariant: Color(0xff404c00),
      secondaryFixed: Color(0xffdbeb8d),
      onSecondaryFixed: Color(0xff181e00),
      secondaryFixedDim: Color(0xffbfce74),
      onSecondaryFixedVariant: Color(0xff404c00),
      tertiaryFixed: Color(0xffc6f088),
      onTertiaryFixed: Color(0xff111f00),
      tertiaryFixedDim: Color(0xffabd46f),
      onTertiaryFixedVariant: Color(0xff324f00),
      surfaceDim: Color(0xff121409),
      surfaceBright: Color(0xff383a2d),
      surfaceContainerLowest: Color(0xff0d0f05),
      surfaceContainerLow: Color(0xff1b1d11),
      surfaceContainer: Color(0xff1f2115),
      surfaceContainerHigh: Color(0xff292b1f),
      surfaceContainerHighest: Color(0xff343629),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffffff),
      surfaceTint: Color(0xffb6d300),
      onPrimary: Color(0xff2c3400),
      primaryContainer: Color(0xffc4e21f),
      onPrimaryContainer: Color(0xff1c2200),
      secondary: Color(0xffc3d378),
      onSecondary: Color(0xff131800),
      secondaryContainer: Color(0xff899845),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffffffff),
      onTertiary: Color(0xff213600),
      tertiaryContainer: Color(0xffb8e27c),
      onTertiaryContainer: Color(0xff142400),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff121409),
      onSurface: Color(0xfffcfce8),
      onSurfaceVariant: Color(0xffcacdb2),
      outline: Color(0xffa2a58b),
      outlineVariant: Color(0xff82856d),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe3e4d1),
      inversePrimary: Color(0xff414d00),
      primaryFixed: Color(0xffd2f031),
      onPrimaryFixed: Color(0xff0f1300),
      primaryFixedDim: Color(0xffb6d300),
      onPrimaryFixedVariant: Color(0xff313a00),
      secondaryFixed: Color(0xffdbeb8d),
      onSecondaryFixed: Color(0xff0f1300),
      secondaryFixedDim: Color(0xffbfce74),
      onSecondaryFixedVariant: Color(0xff313a00),
      tertiaryFixed: Color(0xffc6f088),
      onTertiaryFixed: Color(0xff091400),
      tertiaryFixedDim: Color(0xffabd46f),
      onTertiaryFixedVariant: Color(0xff253d00),
      surfaceDim: Color(0xff121409),
      surfaceBright: Color(0xff383a2d),
      surfaceContainerLowest: Color(0xff0d0f05),
      surfaceContainerLow: Color(0xff1b1d11),
      surfaceContainer: Color(0xff1f2115),
      surfaceContainerHigh: Color(0xff292b1f),
      surfaceContainerHighest: Color(0xff343629),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffffff),
      surfaceTint: Color(0xffb6d300),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffc4e21f),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfff9ffcf),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffc3d378),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffffffff),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffb8e27c),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff121409),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xfffbfde0),
      outline: Color(0xffcacdb2),
      outlineVariant: Color(0xffcacdb2),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe3e4d1),
      inversePrimary: Color(0xff262d00),
      primaryFixed: Color(0xffd6f536),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffbad80b),
      onPrimaryFixedVariant: Color(0xff131800),
      secondaryFixed: Color(0xffdfef91),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffc3d378),
      onSecondaryFixedVariant: Color(0xff131800),
      tertiaryFixed: Color(0xffcaf58c),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffafd873),
      onTertiaryFixedVariant: Color(0xff0d1a00),
      surfaceDim: Color(0xff121409),
      surfaceBright: Color(0xff383a2d),
      surfaceContainerLowest: Color(0xff0d0f05),
      surfaceContainerLow: Color(0xff1b1d11),
      surfaceContainer: Color(0xff1f2115),
      surfaceContainerHigh: Color(0xff292b1f),
      surfaceContainerHighest: Color(0xff343629),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.surface,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
