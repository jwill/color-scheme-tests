import 'package:flutter/material.dart';
import 'package:material_color_utilities/material_color_utilities.dart';

import 'material_palettes.dart';
import 'material_scheme.dart';

class ExtendedColor {
  final String label;
  final String? description;
  final bool harmonized;
  final Color color;

  const ExtendedColor({
    required this.label,
    required this.color,
    this.description,
    this.harmonized = false,
  });

  ExtendedColor copyWith({
    String? label,
    String? description,
    bool? harmonized,
    Color? color,
  }) {
    return ExtendedColor(
      label: label ?? this.label,
      description: description == '' ? null : description ?? this.description,
      harmonized: harmonized ?? this.harmonized,
      color: color ?? this.color,
    );
  }

  Color value(Color source) {
    Color seed = color;
    if (harmonized) {
      seed = Color(Blend.harmonize(seed.value, source.value));
    }
    return seed;
  }

  MaterialPalettes palettes(Color source) {
    return MaterialPalettes.fromColors(primary: value(source));
  }

  MaterialScheme scheme(
    Brightness brightness,
    bool colorMatch,
    Color source, {
    double contrastLevel = 0,
  }) {
    return MaterialScheme.fromColors(
      brightness,
      primary: value(source),
      colorMatch: colorMatch,
    );
  }

  MaterialScheme lightScheme(
    Color source,
    bool colorMatch,
  ) =>
      scheme(Brightness.light, colorMatch, source);

  MaterialScheme lightSchemeHighContrast(
    Color source,
    bool colorMatch,
  ) =>
      scheme(Brightness.light, colorMatch, source, contrastLevel: 1);

  MaterialScheme lightSchemeMediumContrast(
    Color source,
    bool colorMatch,
  ) =>
      scheme(Brightness.light, colorMatch, source, contrastLevel: 0.5);

  MaterialScheme lightSchemeLowContrast(
    Color source,
    bool colorMatch,
  ) =>
      scheme(Brightness.light, colorMatch, source, contrastLevel: -1);

  MaterialScheme darkScheme(
    Color source,
    bool colorMatch,
  ) =>
      scheme(Brightness.dark, colorMatch, source);

  MaterialScheme darkSchemeHighContrast(
    Color source,
    bool colorMatch,
  ) =>
      scheme(Brightness.dark, colorMatch, source, contrastLevel: 1);

  MaterialScheme darkSchemeMediumContrast(
    Color source,
    bool colorMatch,
  ) =>
      scheme(Brightness.dark, colorMatch, source, contrastLevel: 0.5);

  MaterialScheme darkSchemeLowContrast(
    Color source,
    bool colorMatch,
  ) =>
      scheme(Brightness.dark, colorMatch, source, contrastLevel: -1);
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
