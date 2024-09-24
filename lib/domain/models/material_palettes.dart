import 'package:flutter/material.dart';
import 'package:material_color_utilities/material_color_utilities.dart';

class MaterialPalettes {
  final TonalPalette primary;
  TonalPalette secondary;
  TonalPalette tertiary;
  TonalPalette error;
  TonalPalette neutral;
  TonalPalette neutralVariant;

  MaterialPalettes({
    required this.primary,
    required this.secondary,
    required this.tertiary,
    required this.error,
    required this.neutral,
    required this.neutralVariant,
  });

  static const tones = [
    100,
    99,
    98,
    95,
    90,
    80,
    70,
    60,
    50,
    40,
    35,
    30,
    25,
    20,
    15,
    10,
    5,
    0,
  ];

  factory MaterialPalettes.fromColors({
    required Color primary,
    Color? secondary,
    Color? tertiary,
    Color? error,
    Color? neutral,
    Color? neutralVariant,
    bool content = true,
  }) {
    final palettes =
        MaterialPalettes.fromCorePalette(corePalette(primary, content));
    if (secondary != null) {
      palettes.secondary = corePalette(secondary, content).primary;
    }
    if (tertiary != null) {
      palettes.tertiary = corePalette(tertiary, content).primary;
    }
    if (error != null) {
      palettes.error = corePalette(error, content).primary;
    }
    if (neutral != null) {
      palettes.neutral = corePalette(neutral, content).neutral;
    }
    if (neutralVariant != null) {
      palettes.neutralVariant =
          corePalette(neutralVariant, content).neutralVariant;
    }
    return palettes;
  }

  factory MaterialPalettes.fromCorePalette(CorePalette palette) {
    return MaterialPalettes(
      primary: palette.primary,
      secondary: palette.secondary,
      tertiary: palette.tertiary,
      error: palette.error,
      neutral: palette.neutral,
      neutralVariant: palette.neutralVariant,
    );
  }
}

CorePalette corePalette(Color color, bool content) {
  return content
      ? CorePalette.of(color.value)
      : CorePalette.contentOf(color.value);
}
