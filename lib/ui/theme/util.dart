import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextTheme createTextTheme(String bodyFontString, String displayFontString) {
  TextTheme bodyTextTheme =
      GoogleFonts.getTextTheme(bodyFontString);
  TextTheme displayTextTheme =
      GoogleFonts.getTextTheme(displayFontString);
  TextTheme textTheme = displayTextTheme.copyWith(
    displayLarge: displayTextTheme.displayLarge,
    displayMedium: displayTextTheme.displayMedium,
    displaySmall: displayTextTheme.displaySmall,
    headlineLarge: displayTextTheme.headlineLarge,
    headlineMedium: displayTextTheme.headlineMedium,
    headlineSmall: displayTextTheme.headlineSmall,
    titleLarge: displayTextTheme.titleLarge,
    titleMedium: displayTextTheme.titleMedium,
    titleSmall: displayTextTheme.titleSmall,
    bodyLarge: bodyTextTheme.bodyLarge,
    bodyMedium: bodyTextTheme.bodyMedium,
    bodySmall: bodyTextTheme.bodySmall,
    labelLarge: bodyTextTheme.labelLarge,
    labelMedium: bodyTextTheme.labelMedium,
    labelSmall: bodyTextTheme.labelSmall,
  );
  return textTheme;
}
