import 'package:flutter/material.dart';
import 'package:material_color_utilities/material_color_utilities.dart';

typedef MDC = MaterialDynamicColors;

DynamicScheme getScheme(int seed,
    {DynamicSchemeVariant variant = DynamicSchemeVariant.tonalSpot,
    double contrastLevel = 0.0,
    bool isDark = false}) {
  switch (variant) {
    case DynamicSchemeVariant.tonalSpot:
      return SchemeTonalSpot(
          sourceColorHct: Hct.fromInt(seed),
          contrastLevel: contrastLevel,
          isDark: isDark);
    case DynamicSchemeVariant.fidelity:
      return SchemeFidelity(
          sourceColorHct: Hct.fromInt(seed),
          contrastLevel: contrastLevel,
          isDark: isDark);
    case DynamicSchemeVariant.monochrome:
      return SchemeMonochrome(
          sourceColorHct: Hct.fromInt(seed),
          contrastLevel: contrastLevel,
          isDark: isDark);
    case DynamicSchemeVariant.neutral:
      return SchemeNeutral(
          sourceColorHct: Hct.fromInt(seed),
          contrastLevel: contrastLevel,
          isDark: isDark);
    case DynamicSchemeVariant.vibrant:
      return SchemeVibrant(
          sourceColorHct: Hct.fromInt(seed),
          contrastLevel: contrastLevel,
          isDark: isDark);
    case DynamicSchemeVariant.expressive:
      return SchemeExpressive(
          sourceColorHct: Hct.fromInt(seed),
          contrastLevel: contrastLevel,
          isDark: isDark);
    case DynamicSchemeVariant.content:
      return SchemeContent(
          sourceColorHct: Hct.fromInt(seed),
          contrastLevel: contrastLevel,
          isDark: isDark);
    case DynamicSchemeVariant.rainbow:
      return SchemeRainbow(
          sourceColorHct: Hct.fromInt(seed),
          contrastLevel: contrastLevel,
          isDark: isDark);
    case DynamicSchemeVariant.fruitSalad:
      return SchemeFruitSalad(
          sourceColorHct: Hct.fromInt(seed),
          contrastLevel: contrastLevel,
          isDark: isDark);
  }
}

ColorScheme fromColors({
  Brightness brightness = Brightness.light,
  required Color primary,
  Color? secondary,
  Color? tertiary,
  Color? error,
  Color? neutral,
  Color? neutralVariant,
  DynamicSchemeVariant dynamicSchemeVariant = DynamicSchemeVariant.tonalSpot,
  double contrastLevel = 0,
}) {
  DynamicScheme getScheme(int seed,
      {DynamicSchemeVariant variant = DynamicSchemeVariant.tonalSpot,
      double contrastLevel = 0.0,
      Brightness bright = Brightness.light}) {
    final bool isDark = bright == Brightness.dark;
    switch (variant) {
      case DynamicSchemeVariant.tonalSpot:
        return SchemeTonalSpot(
            sourceColorHct: Hct.fromInt(seed),
            contrastLevel: contrastLevel,
            isDark: isDark);
      case DynamicSchemeVariant.fidelity:
        return SchemeFidelity(
            sourceColorHct: Hct.fromInt(seed),
            contrastLevel: contrastLevel,
            isDark: isDark);
      case DynamicSchemeVariant.monochrome:
        return SchemeMonochrome(
            sourceColorHct: Hct.fromInt(seed),
            contrastLevel: contrastLevel,
            isDark: isDark);
      case DynamicSchemeVariant.neutral:
        return SchemeNeutral(
            sourceColorHct: Hct.fromInt(seed),
            contrastLevel: contrastLevel,
            isDark: isDark);
      case DynamicSchemeVariant.vibrant:
        return SchemeVibrant(
            sourceColorHct: Hct.fromInt(seed),
            contrastLevel: contrastLevel,
            isDark: isDark);
      case DynamicSchemeVariant.expressive:
        return SchemeExpressive(
            sourceColorHct: Hct.fromInt(seed),
            contrastLevel: contrastLevel,
            isDark: isDark);
      case DynamicSchemeVariant.content:
        return SchemeContent(
            sourceColorHct: Hct.fromInt(seed),
            contrastLevel: contrastLevel,
            isDark: isDark);
      case DynamicSchemeVariant.rainbow:
        return SchemeRainbow(
            sourceColorHct: Hct.fromInt(seed),
            contrastLevel: contrastLevel,
            isDark: isDark);
      case DynamicSchemeVariant.fruitSalad:
        return SchemeFruitSalad(
            sourceColorHct: Hct.fromInt(seed),
            contrastLevel: contrastLevel,
            isDark: isDark);
    }
  }

  late int _primary;
  late int _surfaceTint;
  late int _onPrimary;
  late int _primaryContainer;
  late int _onPrimaryContainer;
  late int _secondary;
  late int _onSecondary;
  late int _secondaryContainer;
  late int _onSecondaryContainer;
  late int _tertiary;
  late int _onTertiary;
  late int _tertiaryContainer;
  late int _onTertiaryContainer;
  late int _error;
  late int _onError;
  late int _errorContainer;
  late int _onErrorContainer;
  late int _background;
  late int _onBackground;
  late int _surface;
  late int _onSurface;
  late int _surfaceVariant;
  late int _onSurfaceVariant;
  late int _outline;
  late int _outlineVariant;
  late int _shadow;
  late int _scrim;
  late int _inverseSurface;
  late int _inverseOnSurface;
  late int _inversePrimary;
  late int _primaryFixed;
  late int _onPrimaryFixed;
  late int _primaryFixedDim;
  late int _onPrimaryFixedVariant;
  late int _secondaryFixed;
  late int _onSecondaryFixed;
  late int _secondaryFixedDim;
  late int _onSecondaryFixedVariant;
  late int _tertiaryFixed;
  late int _onTertiaryFixed;
  late int _tertiaryFixedDim;
  late int _onTertiaryFixedVariant;
  late int _surfaceDim;
  late int _surfaceBright;
  late int _surfaceContainerLowest;
  late int _surfaceContainerLow;
  late int _surfaceContainer;
  late int _surfaceContainerHigh;
  late int _surfaceContainerHighest;
  final ps = getScheme(primary.value);
  {
    // Primary
    _primary = MDC.primary.getArgb(ps);
    _onPrimary = MDC.onPrimary.getArgb(ps);
    _primaryContainer = MDC.primaryContainer.getArgb(ps);
    _onPrimaryContainer = MDC.onPrimaryContainer.getArgb(ps);
    _surfaceTint = MDC.surfaceTint.getArgb(ps);
    _primaryFixed = MDC.primaryFixed.getArgb(ps);
    _onPrimaryFixed = MDC.onPrimaryFixed.getArgb(ps);
    _primaryFixedDim = MDC.primaryFixedDim.getArgb(ps);
    _onPrimaryFixedVariant = MDC.onPrimaryFixedVariant.getArgb(ps);
    _inversePrimary = MDC.inversePrimary.getArgb(ps);
  }
  if (secondary != null) {
    // Secondary
    final s = getScheme(secondary.value);
    _secondary = MDC.primary.getArgb(s);
    _onSecondary = MDC.onPrimary.getArgb(s);
    _secondaryContainer = MDC.primaryContainer.getArgb(s);
    _onSecondaryContainer = MDC.onPrimaryContainer.getArgb(s);
    _secondaryFixed = MDC.primaryFixed.getArgb(s);
    _onSecondaryFixed = MDC.onPrimaryFixed.getArgb(s);
    _secondaryFixedDim = MDC.primaryFixedDim.getArgb(s);
    _onSecondaryFixedVariant = MDC.onPrimaryFixedVariant.getArgb(s);
  } else {
    _secondary = MDC.secondary.getArgb(ps);
    _onSecondary = MDC.onSecondary.getArgb(ps);
    _secondaryContainer = MDC.secondaryContainer.getArgb(ps);
    _onSecondaryContainer = MDC.onSecondaryContainer.getArgb(ps);
    _secondaryFixed = MDC.secondaryFixed.getArgb(ps);
    _onSecondaryFixed = MDC.onSecondaryFixed.getArgb(ps);
    _secondaryFixedDim = MDC.secondaryFixedDim.getArgb(ps);
    _onSecondaryFixedVariant = MDC.onSecondaryFixedVariant.getArgb(ps);
  }
  if (tertiary != null) {
    // Tertiary
    final s = getScheme(tertiary.value);
    _tertiary = MDC.primary.getArgb(s);
    _onTertiary = MDC.onPrimary.getArgb(s);
    _tertiaryContainer = MDC.primaryContainer.getArgb(s);
    _onTertiaryContainer = MDC.onPrimaryContainer.getArgb(s);
    _tertiaryFixed = MDC.primaryFixed.getArgb(s);
    _onTertiaryFixed = MDC.onPrimaryFixed.getArgb(s);
    _tertiaryFixedDim = MDC.primaryFixedDim.getArgb(s);
    _onTertiaryFixedVariant = MDC.onPrimaryFixedVariant.getArgb(s);
  } else {
    _tertiary = MDC.tertiary.getArgb(ps);
    _onTertiary = MDC.onTertiary.getArgb(ps);
    _tertiaryContainer = MDC.tertiaryContainer.getArgb(ps);
    _onTertiaryContainer = MDC.onTertiaryContainer.getArgb(ps);
    _tertiaryFixed = MDC.tertiaryFixed.getArgb(ps);
    _onTertiaryFixed = MDC.onTertiaryFixed.getArgb(ps);
    _tertiaryFixedDim = MDC.tertiaryFixedDim.getArgb(ps);
    _onTertiaryFixedVariant = MDC.onTertiaryFixedVariant.getArgb(ps);
  }
  if (error != null) {
    // Error
    final s = getScheme(error.value);
    _error = MDC.primary.getArgb(s);
    _onError = MDC.onPrimary.getArgb(s);
    _errorContainer = MDC.primaryContainer.getArgb(s);
    _onErrorContainer = MDC.onPrimaryContainer.getArgb(s);
  } else {
    _error = MDC.error.getArgb(ps);
    _onError = MDC.onError.getArgb(ps);
    _errorContainer = MDC.errorContainer.getArgb(ps);
    _onErrorContainer = MDC.onErrorContainer.getArgb(ps);
  }
  if (neutral != null) {
    // Neutral
    final s = getScheme(neutral.value);
    _background = MDC.background.getArgb(ps);
    _onBackground = MDC.onBackground.getArgb(ps);
    _surface = MDC.surface.getArgb(s);
    _onSurface = MDC.onSurface.getArgb(s);
    _shadow = MDC.shadow.getArgb(s);
    _scrim = MDC.scrim.getArgb(s);
    _inverseSurface = MDC.inverseSurface.getArgb(s);
    _inverseOnSurface = MDC.inverseOnSurface.getArgb(s);
    _surfaceDim = MDC.surfaceDim.getArgb(s);
    _surfaceBright = MDC.surfaceBright.getArgb(s);
    _surfaceContainerLowest = MDC.surfaceContainerLowest.getArgb(s);
    _surfaceContainerLow = MDC.surfaceContainerLow.getArgb(s);
    _surfaceContainer = MDC.surfaceContainer.getArgb(s);
    _surfaceContainerHigh = MDC.surfaceContainerHigh.getArgb(s);
    _surfaceContainerHighest = MDC.surfaceContainerHighest.getArgb(s);
  } else {
    _background = MDC.background.getArgb(ps);
    _onBackground = MDC.onBackground.getArgb(ps);
    _surface = MDC.surface.getArgb(ps);
    _onSurface = MDC.onSurface.getArgb(ps);
    //_surfaceVariant = MDC.surfaceVariant.getArgb(ps);
    //_onSurfaceVariant = MDC.onSurfaceVariant.getArgb(ps);
    //_outlineVariant = MDC.outlineVariant.getArgb(ps);
    _shadow = MDC.shadow.getArgb(ps);
    _scrim = MDC.scrim.getArgb(ps);
    _inverseSurface = MDC.inverseSurface.getArgb(ps);
    _inverseOnSurface = MDC.inverseOnSurface.getArgb(ps);
    _surfaceDim = MDC.surfaceDim.getArgb(ps);
    _surfaceBright = MDC.surfaceBright.getArgb(ps);
    _surfaceContainerLowest = MDC.surfaceContainerLowest.getArgb(ps);
    _surfaceContainerLow = MDC.surfaceContainerLow.getArgb(ps);
    _surfaceContainer = MDC.surfaceContainer.getArgb(ps);
    _surfaceContainerHigh = MDC.surfaceContainerHigh.getArgb(ps);
    _surfaceContainerHighest = MDC.surfaceContainerHighest.getArgb(ps);
  }
  if (neutralVariant != null) {
    // Neutral Variant
    final s = getScheme(neutralVariant.value);
    _surfaceVariant = MDC.surfaceVariant.getArgb(s);
    _onSurfaceVariant = MDC.onSurfaceVariant.getArgb(s);
    _outlineVariant = MDC.outlineVariant.getArgb(s);
    _outline = MDC.outline.getArgb(s);
    _outlineVariant = MDC.outlineVariant.getArgb(s);
  } else {
    _surfaceVariant = MDC.surfaceVariant.getArgb(ps);
    _onSurfaceVariant = MDC.onSurfaceVariant.getArgb(ps);
    _outlineVariant = MDC.outlineVariant.getArgb(ps);
    _outline = MDC.outline.getArgb(ps);
    _outlineVariant = MDC.outlineVariant.getArgb(ps);
  }
  return ColorScheme(
    brightness: brightness,
    primary: Color(_primary),
    onPrimary: Color(_onPrimary),
    primaryContainer: Color(_primaryContainer),
    onPrimaryContainer: Color(_onPrimaryContainer),
    primaryFixed: Color(_primaryFixed),
    primaryFixedDim: Color(_primaryFixedDim),
    onPrimaryFixed: Color(_onPrimaryFixed),
    onPrimaryFixedVariant: Color(_onPrimaryFixedVariant),
    secondary: Color(_secondary),
    onSecondary: Color(_onSecondary),
    secondaryContainer: Color(_secondaryContainer),
    onSecondaryContainer: Color(_onSecondaryContainer),
    secondaryFixed: Color(_secondaryFixed),
    secondaryFixedDim: Color(_secondaryFixedDim),
    onSecondaryFixed: Color(_onSecondaryFixed),
    onSecondaryFixedVariant: Color(_onSecondaryFixedVariant),
    tertiary: Color(_tertiary),
    onTertiary: Color(_onTertiary),
    tertiaryContainer: Color(_tertiaryContainer),
    onTertiaryContainer: Color(_onTertiaryContainer),
    tertiaryFixed: Color(_tertiaryFixed),
    tertiaryFixedDim: Color(_tertiaryFixedDim),
    onTertiaryFixed: Color(_onTertiaryFixed),
    onTertiaryFixedVariant: Color(_onTertiaryFixedVariant),
    error: Color(_error),
    onError: Color(_onError),
    errorContainer: Color(_errorContainer),
    onErrorContainer: Color(_onErrorContainer),
    surface: Color(_surface),
    onSurface: Color(_onSurface),
    surfaceDim: Color(_surfaceDim),
    surfaceBright: Color(_surfaceBright),
    surfaceContainerLowest: Color(_surfaceContainerLowest),
    surfaceContainerLow: Color(_surfaceContainerLow),
    surfaceContainer: Color(_surfaceContainer),
    surfaceContainerHigh: Color(_surfaceContainerHigh),
    surfaceContainerHighest: Color(_surfaceContainerHighest),
    onSurfaceVariant: Color(_onSurfaceVariant),
    outline: Color(_outline),
    outlineVariant: Color(_outlineVariant),
    shadow: Color(_shadow),
    scrim: Color(_scrim),
    inverseSurface: Color(_inverseSurface),
    onInverseSurface: Color(_inverseOnSurface),
    inversePrimary: Color(_inversePrimary),
  );
}

ColorScheme fromColors2({
  Brightness brightness = Brightness.light,
  required Color primarySeed,
  Color? secondarySeed,
  Color? tertiarySeed,
  Color? errorSeed,
  DynamicSchemeVariant dynamicSchemeVariant = DynamicSchemeVariant.tonalSpot,
  double contrastLevel = 0,
  bool useMonochromeSurfaces = false
}) {
  DynamicScheme getScheme(int seed,
      {DynamicSchemeVariant variant = DynamicSchemeVariant.tonalSpot,
        double contrastLevel = 0.0}) {
    final bool isDark = brightness == Brightness.dark;
    switch (variant) {
      case DynamicSchemeVariant.tonalSpot:
        return SchemeTonalSpot(
            sourceColorHct: Hct.fromInt(seed),
            contrastLevel: contrastLevel,
            isDark: isDark);
      case DynamicSchemeVariant.fidelity:
        return SchemeFidelity(
            sourceColorHct: Hct.fromInt(seed),
            contrastLevel: contrastLevel,
            isDark: isDark);
      case DynamicSchemeVariant.monochrome:
        return SchemeMonochrome(
            sourceColorHct: Hct.fromInt(seed),
            contrastLevel: contrastLevel,
            isDark: isDark);
      case DynamicSchemeVariant.neutral:
        return SchemeNeutral(
            sourceColorHct: Hct.fromInt(seed),
            contrastLevel: contrastLevel,
            isDark: isDark);
      case DynamicSchemeVariant.vibrant:
        return SchemeVibrant(
            sourceColorHct: Hct.fromInt(seed),
            contrastLevel: contrastLevel,
            isDark: isDark);
      case DynamicSchemeVariant.expressive:
        return SchemeExpressive(
            sourceColorHct: Hct.fromInt(seed),
            contrastLevel: contrastLevel,
            isDark: isDark);
      case DynamicSchemeVariant.content:
        return SchemeContent(
            sourceColorHct: Hct.fromInt(seed),
            contrastLevel: contrastLevel,
            isDark: isDark);
      case DynamicSchemeVariant.rainbow:
        return SchemeRainbow(
            sourceColorHct: Hct.fromInt(seed),
            contrastLevel: contrastLevel,
            isDark: isDark);
      case DynamicSchemeVariant.fruitSalad:
        return SchemeFruitSalad(
            sourceColorHct: Hct.fromInt(seed),
            contrastLevel: contrastLevel,
            isDark: isDark);
    }
  }

  late int _primary;
  late int _surfaceTint;
  late int _onPrimary;
  late int _primaryContainer;
  late int _onPrimaryContainer;
  late int _secondary;
  late int _onSecondary;
  late int _secondaryContainer;
  late int _onSecondaryContainer;
  late int _tertiary;
  late int _onTertiary;
  late int _tertiaryContainer;
  late int _onTertiaryContainer;
  late int _error;
  late int _onError;
  late int _errorContainer;
  late int _onErrorContainer;
  late int _background;
  late int _onBackground;
  late int _surface;
  late int _onSurface;
  late int _surfaceVariant;
  late int _onSurfaceVariant;
  late int _outline;
  late int _outlineVariant;
  late int _shadow;
  late int _scrim;
  late int _inverseSurface;
  late int _inverseOnSurface;
  late int _inversePrimary;
  late int _primaryFixed;
  late int _onPrimaryFixed;
  late int _primaryFixedDim;
  late int _onPrimaryFixedVariant;
  late int _secondaryFixed;
  late int _onSecondaryFixed;
  late int _secondaryFixedDim;
  late int _onSecondaryFixedVariant;
  late int _tertiaryFixed;
  late int _onTertiaryFixed;
  late int _tertiaryFixedDim;
  late int _onTertiaryFixedVariant;
  late int _surfaceDim;
  late int _surfaceBright;
  late int _surfaceContainerLowest;
  late int _surfaceContainerLow;
  late int _surfaceContainer;
  late int _surfaceContainerHigh;
  late int _surfaceContainerHighest;
  final ps = getScheme(primarySeed.value);
  {
    // Primary
    _primary = MDC.primary.getArgb(ps);
    _onPrimary = MDC.onPrimary.getArgb(ps);
    _primaryContainer = MDC.primaryContainer.getArgb(ps);
    _onPrimaryContainer = MDC.onPrimaryContainer.getArgb(ps);
    _surfaceTint = MDC.surfaceTint.getArgb(ps);
    _primaryFixed = MDC.primaryFixed.getArgb(ps);
    _onPrimaryFixed = MDC.onPrimaryFixed.getArgb(ps);
    _primaryFixedDim = MDC.primaryFixedDim.getArgb(ps);
    _onPrimaryFixedVariant = MDC.onPrimaryFixedVariant.getArgb(ps);
    _inversePrimary = MDC.inversePrimary.getArgb(ps);
  }
  if (secondarySeed != null) {
    // Secondary
    final s = getScheme(secondarySeed.value);
    _secondary = MDC.primary.getArgb(s);
    _onSecondary = MDC.onPrimary.getArgb(s);
    _secondaryContainer = MDC.primaryContainer.getArgb(s);
    _onSecondaryContainer = MDC.onPrimaryContainer.getArgb(s);
    _secondaryFixed = MDC.primaryFixed.getArgb(s);
    _onSecondaryFixed = MDC.onPrimaryFixed.getArgb(s);
    _secondaryFixedDim = MDC.primaryFixedDim.getArgb(s);
    _onSecondaryFixedVariant = MDC.onPrimaryFixedVariant.getArgb(s);
  } else {
    _secondary = MDC.secondary.getArgb(ps);
    _onSecondary = MDC.onSecondary.getArgb(ps);
    _secondaryContainer = MDC.secondaryContainer.getArgb(ps);
    _onSecondaryContainer = MDC.onSecondaryContainer.getArgb(ps);
    _secondaryFixed = MDC.secondaryFixed.getArgb(ps);
    _onSecondaryFixed = MDC.onSecondaryFixed.getArgb(ps);
    _secondaryFixedDim = MDC.secondaryFixedDim.getArgb(ps);
    _onSecondaryFixedVariant = MDC.onSecondaryFixedVariant.getArgb(ps);
  }
  if (tertiarySeed != null) {
    // Tertiary
    final s = getScheme(tertiarySeed.value);
    _tertiary = MDC.primary.getArgb(s);
    _onTertiary = MDC.onPrimary.getArgb(s);
    _tertiaryContainer = MDC.primaryContainer.getArgb(s);
    _onTertiaryContainer = MDC.onPrimaryContainer.getArgb(s);
    _tertiaryFixed = MDC.primaryFixed.getArgb(s);
    _onTertiaryFixed = MDC.onPrimaryFixed.getArgb(s);
    _tertiaryFixedDim = MDC.primaryFixedDim.getArgb(s);
    _onTertiaryFixedVariant = MDC.onPrimaryFixedVariant.getArgb(s);
  } else {
    _tertiary = MDC.tertiary.getArgb(ps);
    _onTertiary = MDC.onTertiary.getArgb(ps);
    _tertiaryContainer = MDC.tertiaryContainer.getArgb(ps);
    _onTertiaryContainer = MDC.onTertiaryContainer.getArgb(ps);
    _tertiaryFixed = MDC.tertiaryFixed.getArgb(ps);
    _onTertiaryFixed = MDC.onTertiaryFixed.getArgb(ps);
    _tertiaryFixedDim = MDC.tertiaryFixedDim.getArgb(ps);
    _onTertiaryFixedVariant = MDC.onTertiaryFixedVariant.getArgb(ps);
  }
  if (errorSeed != null) {
    // Error
    final s = getScheme(errorSeed.value);
    _error = MDC.primary.getArgb(s);
    _onError = MDC.onPrimary.getArgb(s);
    _errorContainer = MDC.primaryContainer.getArgb(s);
    _onErrorContainer = MDC.onPrimaryContainer.getArgb(s);
  } else {
    _error = MDC.error.getArgb(ps);
    _onError = MDC.onError.getArgb(ps);
    _errorContainer = MDC.errorContainer.getArgb(ps);
    _onErrorContainer = MDC.onErrorContainer.getArgb(ps);
  }
  if (useMonochromeSurfaces != false) {
    // Neutral
    final s = getScheme(Colors.black.value, variant: DynamicSchemeVariant.monochrome);
    _background = MDC.background.getArgb(ps);
    _onBackground = MDC.onBackground.getArgb(ps);
    _surface = MDC.surface.getArgb(s);
    _onSurface = MDC.onSurface.getArgb(s);
    _shadow = MDC.shadow.getArgb(s);
    _scrim = MDC.scrim.getArgb(s);
    _inverseSurface = MDC.inverseSurface.getArgb(s);
    _inverseOnSurface = MDC.inverseOnSurface.getArgb(s);
    _surfaceDim = MDC.surfaceDim.getArgb(s);
    _surfaceBright = MDC.surfaceBright.getArgb(s);
    _surfaceContainerLowest = MDC.surfaceContainerLowest.getArgb(s);
    _surfaceContainerLow = MDC.surfaceContainerLow.getArgb(s);
    _surfaceContainer = MDC.surfaceContainer.getArgb(s);
    _surfaceContainerHigh = MDC.surfaceContainerHigh.getArgb(s);
    _surfaceContainerHighest = MDC.surfaceContainerHighest.getArgb(s);
  } else {
    _background = MDC.background.getArgb(ps);
    _onBackground = MDC.onBackground.getArgb(ps);
    _surface = MDC.surface.getArgb(ps);
    _onSurface = MDC.onSurface.getArgb(ps);
    //_surfaceVariant = MDC.surfaceVariant.getArgb(ps);
    //_onSurfaceVariant = MDC.onSurfaceVariant.getArgb(ps);
    //_outlineVariant = MDC.outlineVariant.getArgb(ps);
    _shadow = MDC.shadow.getArgb(ps);
    _scrim = MDC.scrim.getArgb(ps);
    _inverseSurface = MDC.inverseSurface.getArgb(ps);
    _inverseOnSurface = MDC.inverseOnSurface.getArgb(ps);
    _surfaceDim = MDC.surfaceDim.getArgb(ps);
    _surfaceBright = MDC.surfaceBright.getArgb(ps);
    _surfaceContainerLowest = MDC.surfaceContainerLowest.getArgb(ps);
    _surfaceContainerLow = MDC.surfaceContainerLow.getArgb(ps);
    _surfaceContainer = MDC.surfaceContainer.getArgb(ps);
    _surfaceContainerHigh = MDC.surfaceContainerHigh.getArgb(ps);
    _surfaceContainerHighest = MDC.surfaceContainerHighest.getArgb(ps);
  }
  if (useMonochromeSurfaces != false) {
    // Neutral Variant
    final s = getScheme(Colors.black.value, variant: DynamicSchemeVariant.monochrome);
    _surfaceVariant = MDC.surfaceVariant.getArgb(s);
    _onSurfaceVariant = MDC.onSurfaceVariant.getArgb(s);
    _outlineVariant = MDC.outlineVariant.getArgb(s);
    _outline = MDC.outline.getArgb(s);
    _outlineVariant = MDC.outlineVariant.getArgb(s);
  } else {
    _surfaceVariant = MDC.surfaceVariant.getArgb(ps);
    _onSurfaceVariant = MDC.onSurfaceVariant.getArgb(ps);
    _outlineVariant = MDC.outlineVariant.getArgb(ps);
    _outline = MDC.outline.getArgb(ps);
    _outlineVariant = MDC.outlineVariant.getArgb(ps);
  }
  return ColorScheme(
    brightness: brightness,
    primary: Color(_primary),
    onPrimary: Color(_onPrimary),
    primaryContainer: Color(_primaryContainer),
    onPrimaryContainer: Color(_onPrimaryContainer),
    primaryFixed: Color(_primaryFixed),
    primaryFixedDim: Color(_primaryFixedDim),
    onPrimaryFixed: Color(_onPrimaryFixed),
    onPrimaryFixedVariant: Color(_onPrimaryFixedVariant),
    secondary: Color(_secondary),
    onSecondary: Color(_onSecondary),
    secondaryContainer: Color(_secondaryContainer),
    onSecondaryContainer: Color(_onSecondaryContainer),
    secondaryFixed: Color(_secondaryFixed),
    secondaryFixedDim: Color(_secondaryFixedDim),
    onSecondaryFixed: Color(_onSecondaryFixed),
    onSecondaryFixedVariant: Color(_onSecondaryFixedVariant),
    tertiary: Color(_tertiary),
    onTertiary: Color(_onTertiary),
    tertiaryContainer: Color(_tertiaryContainer),
    onTertiaryContainer: Color(_onTertiaryContainer),
    tertiaryFixed: Color(_tertiaryFixed),
    tertiaryFixedDim: Color(_tertiaryFixedDim),
    onTertiaryFixed: Color(_onTertiaryFixed),
    onTertiaryFixedVariant: Color(_onTertiaryFixedVariant),
    error: Color(_error),
    onError: Color(_onError),
    errorContainer: Color(_errorContainer),
    onErrorContainer: Color(_onErrorContainer),
    surface: Color(_surface),
    onSurface: Color(_onSurface),
    surfaceDim: Color(_surfaceDim),
    surfaceBright: Color(_surfaceBright),
    surfaceContainerLowest: Color(_surfaceContainerLowest),
    surfaceContainerLow: Color(_surfaceContainerLow),
    surfaceContainer: Color(_surfaceContainer),
    surfaceContainerHigh: Color(_surfaceContainerHigh),
    surfaceContainerHighest: Color(_surfaceContainerHighest),
    onSurfaceVariant: Color(_onSurfaceVariant),
    outline: Color(_outline),
    outlineVariant: Color(_outlineVariant),
    shadow: Color(_shadow),
    scrim: Color(_scrim),
    inverseSurface: Color(_inverseSurface),
    onInverseSurface: Color(_inverseOnSurface),
    inversePrimary: Color(_inversePrimary),
  );
}