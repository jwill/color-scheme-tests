import 'package:flutter/material.dart';
import 'package:material_color_utilities/material_color_utilities.dart';

import '../../data/source/tokens/baseline_1p.dart';
import '../../data/source/tokens/baseline_3p.dart';

typedef MDC = MaterialDynamicColors;

class MaterialScheme extends Scheme {
  final Brightness brightness;
  final int surfaceTint;
  final int primaryFixed;
  final int onPrimaryFixed;
  final int primaryFixedDim;
  final int onPrimaryFixedVariant;
  final int secondaryFixed;
  final int onSecondaryFixed;
  final int secondaryFixedDim;
  final int onSecondaryFixedVariant;
  final int tertiaryFixed;
  final int onTertiaryFixed;
  final int tertiaryFixedDim;
  final int onTertiaryFixedVariant;
  final int surfaceDim;
  final int surfaceBright;
  final int surfaceContainerLowest;
  final int surfaceContainerLow;
  final int surfaceContainer;
  final int surfaceContainerHigh;
  final int surfaceContainerHighest;
  final Map<String, int> extra;
  final bool isBaseline;

  const MaterialScheme({
    required this.brightness,
    required this.isBaseline,
    required super.primary,
    required super.onPrimary,
    required super.primaryContainer,
    required super.onPrimaryContainer,
    required super.secondary,
    required super.onSecondary,
    required super.secondaryContainer,
    required super.onSecondaryContainer,
    required super.tertiary,
    required super.onTertiary,
    required super.tertiaryContainer,
    required super.onTertiaryContainer,
    required super.error,
    required super.onError,
    required super.errorContainer,
    required super.onErrorContainer,
    required super.background,
    required super.onBackground,
    required super.surface,
    required super.onSurface,
    required super.surfaceVariant,
    required super.onSurfaceVariant,
    required super.outline,
    required super.outlineVariant,
    required super.shadow,
    required super.scrim,
    required super.inverseSurface,
    required super.inverseOnSurface,
    required super.inversePrimary,
    required this.surfaceTint,
    required this.primaryFixed,
    required this.onPrimaryFixed,
    required this.primaryFixedDim,
    required this.onPrimaryFixedVariant,
    required this.secondaryFixed,
    required this.onSecondaryFixed,
    required this.secondaryFixedDim,
    required this.onSecondaryFixedVariant,
    required this.tertiaryFixed,
    required this.onTertiaryFixed,
    required this.tertiaryFixedDim,
    required this.onTertiaryFixedVariant,
    required this.surfaceDim,
    required this.surfaceBright,
    required this.surfaceContainerLowest,
    required this.surfaceContainerLow,
    required this.surfaceContainer,
    required this.surfaceContainerHigh,
    required this.surfaceContainerHighest,
    this.extra = const <String, int>{},
  });

  factory MaterialScheme.fromColors(
    Brightness brightness, {
    required Color primary,
    Color? secondary,
    Color? tertiary,
    Color? error,
    Color? neutral,
    Color? neutralVariant,
    bool colorMatch = false,
    bool isBaseline = false,
    double contrastLevel = 0,
  }) {
    DynamicScheme getScheme(int seed) {
      final isDark = brightness == Brightness.dark;
      if (colorMatch) {
        return SchemeContent(
          sourceColorHct: Hct.fromInt(seed),
          contrastLevel: contrastLevel,
          isDark: isDark,
        );
      } else {
        return SchemeTonalSpot(
          sourceColorHct: Hct.fromInt(seed),
          contrastLevel: contrastLevel,
          isDark: isDark,
        );
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
    return MaterialScheme(
      brightness: brightness,
      isBaseline: isBaseline,
      primary: _primary,
      surfaceTint: _surfaceTint,
      onPrimary: _onPrimary,
      primaryContainer: _primaryContainer,
      onPrimaryContainer: _onPrimaryContainer,
      secondary: _secondary,
      onSecondary: _onSecondary,
      secondaryContainer: _secondaryContainer,
      onSecondaryContainer: _onSecondaryContainer,
      tertiary: _tertiary,
      onTertiary: _onTertiary,
      tertiaryContainer: _tertiaryContainer,
      onTertiaryContainer: _onTertiaryContainer,
      error: _error,
      onError: _onError,
      errorContainer: _errorContainer,
      onErrorContainer: _onErrorContainer,
      background: _background,
      onBackground: _onBackground,
      surface: _surface,
      onSurface: _onSurface,
      surfaceVariant: _surfaceVariant,
      onSurfaceVariant: _onSurfaceVariant,
      outline: _outline,
      outlineVariant: _outlineVariant,
      shadow: _shadow,
      scrim: _scrim,
      inverseSurface: _inverseSurface,
      inverseOnSurface: _inverseOnSurface,
      inversePrimary: _inversePrimary,
      primaryFixed: _primaryFixed,
      onPrimaryFixed: _onPrimaryFixed,
      primaryFixedDim: _primaryFixedDim,
      onPrimaryFixedVariant: _onPrimaryFixedVariant,
      secondaryFixed: _secondaryFixed,
      onSecondaryFixed: _onSecondaryFixed,
      secondaryFixedDim: _secondaryFixedDim,
      onSecondaryFixedVariant: _onSecondaryFixedVariant,
      tertiaryFixed: _tertiaryFixed,
      onTertiaryFixed: _onTertiaryFixed,
      tertiaryFixedDim: _tertiaryFixedDim,
      onTertiaryFixedVariant: _onTertiaryFixedVariant,
      surfaceDim: _surfaceDim,
      surfaceBright: _surfaceBright,
      surfaceContainerLowest: _surfaceContainerLowest,
      surfaceContainerLow: _surfaceContainerLow,
      surfaceContainer: _surfaceContainer,
      surfaceContainerHigh: _surfaceContainerHigh,
      surfaceContainerHighest: _surfaceContainerHighest,
    );
  }

  factory MaterialScheme.baseline(Brightness brightness, bool is3p) {
    final tokens = is3p ? baseline3p : baseline1p;
    final schemes = tokens['schemes'] as Map<String, dynamic>;
    final palettes = tokens['palettes'] as Map;
    final primary = _color(tokens['seed']!);
    final secondary = _color(palettes['secondary']['60']);
    final tertiary = _color(palettes['tertiary']['60']);
    final error = _color(palettes['error']['60']);
    final neutral = _color(palettes['neutral']['60']);
    final neutralVariant = _color(palettes['neutralVariant']['60']);
    final colors = schemes[brightness.name] as Map<String, dynamic>;
    final scheme = MaterialScheme.fromJson(brightness, colors);
    return MaterialScheme.fromColors(
      brightness,
      isBaseline: true,
      primary: primary,
      secondary: secondary,
      tertiary: tertiary,
      neutral: neutral,
      neutralVariant: neutralVariant,
      error: error,
    ).copyWith(
      primary: scheme.primary,
      surfaceTint: scheme.surfaceTint,
      onPrimary: scheme.onPrimary,
      primaryContainer: scheme.primaryContainer,
      onPrimaryContainer: scheme.onPrimaryContainer,
      secondary: scheme.secondary,
      onSecondary: scheme.onSecondary,
      secondaryContainer: scheme.secondaryContainer,
      onSecondaryContainer: scheme.onSecondaryContainer,
      tertiary: scheme.tertiary,
      onTertiary: scheme.onTertiary,
      tertiaryContainer: scheme.tertiaryContainer,
      onTertiaryContainer: scheme.onTertiaryContainer,
      error: scheme.error,
      onError: scheme.onError,
      errorContainer: scheme.errorContainer,
      onErrorContainer: scheme.onErrorContainer,
      background: scheme.background,
      onBackground: scheme.onBackground,
      surface: scheme.surface,
      onSurface: scheme.onSurface,
      surfaceVariant: scheme.surfaceVariant,
      onSurfaceVariant: scheme.onSurfaceVariant,
      outline: scheme.outline,
      outlineVariant: scheme.outlineVariant,
      shadow: scheme.shadow,
      scrim: scheme.scrim,
      inverseSurface: scheme.inverseSurface,
      inverseOnSurface: scheme.inverseOnSurface,
      inversePrimary: scheme.inversePrimary,
      primaryFixed: scheme.primaryFixed,
      onPrimaryFixed: scheme.onPrimaryFixed,
      primaryFixedDim: scheme.primaryFixedDim,
      onPrimaryFixedVariant: scheme.onPrimaryFixedVariant,
      secondaryFixed: scheme.secondaryFixed,
      onSecondaryFixed: scheme.onSecondaryFixed,
      secondaryFixedDim: scheme.secondaryFixedDim,
      onSecondaryFixedVariant: scheme.onSecondaryFixedVariant,
      tertiaryFixed: scheme.tertiaryFixed,
      onTertiaryFixed: scheme.onTertiaryFixed,
      tertiaryFixedDim: scheme.tertiaryFixedDim,
      onTertiaryFixedVariant: scheme.onTertiaryFixedVariant,
      surfaceDim: scheme.surfaceDim,
      surfaceBright: scheme.surfaceBright,
      surfaceContainerLowest: scheme.surfaceContainerLowest,
      surfaceContainerLow: scheme.surfaceContainerLow,
      surfaceContainer: scheme.surfaceContainer,
      surfaceContainerHigh: scheme.surfaceContainerHigh,
      surfaceContainerHighest: scheme.surfaceContainerHighest,
    );
  }

  ColorScheme toColorScheme() {
    return ColorScheme(
      brightness: brightness,
      primary: Color(primary),
      onPrimary: Color(onPrimary),
      primaryContainer: Color(primaryContainer),
      onPrimaryContainer: Color(onPrimaryContainer),
      primaryFixed: Color(primaryFixed),
      primaryFixedDim: Color(primaryFixedDim),
      onPrimaryFixed: Color(onPrimaryFixed),
      onPrimaryFixedVariant: Color(onPrimaryFixedVariant),
      secondary: Color(secondary),
      onSecondary: Color(onSecondary),
      secondaryContainer: Color(secondaryContainer),
      onSecondaryContainer: Color(onSecondaryContainer),
      secondaryFixed: Color(secondaryFixed),
      secondaryFixedDim: Color(secondaryFixedDim),
      onSecondaryFixed: Color(onSecondaryFixed),
      onSecondaryFixedVariant: Color(onSecondaryFixedVariant),
      tertiary: Color(tertiary),
      onTertiary: Color(onTertiary),
      tertiaryContainer: Color(tertiaryContainer),
      onTertiaryContainer: Color(onTertiaryContainer),
      tertiaryFixed: Color(tertiaryFixed),
      tertiaryFixedDim: Color(tertiaryFixedDim),
      onTertiaryFixed: Color(onTertiaryFixed),
      onTertiaryFixedVariant: Color(onTertiaryFixedVariant),
      error: Color(error),
      onError: Color(onError),
      errorContainer: Color(errorContainer),
      onErrorContainer: Color(onErrorContainer),
      surface: Color(surface),
      onSurface: Color(onSurface),

      surfaceDim: Color(surfaceDim),
      surfaceBright: Color(surfaceBright),
      surfaceContainerLowest: Color(surfaceContainerLowest),
      surfaceContainerLow: Color(surfaceContainerLow),
      surfaceContainer: Color(surfaceContainer),
      surfaceContainerHigh: Color(surfaceContainerHigh),
      surfaceContainerHighest: Color(surfaceContainerHighest),
      onSurfaceVariant: Color(onSurfaceVariant),
      outline: Color(outline),
      outlineVariant: Color(outlineVariant),
      shadow: Color(shadow),
      scrim: Color(scrim),
      inverseSurface: Color(inverseSurface),
      onInverseSurface: Color(inverseOnSurface),
      inversePrimary: Color(inversePrimary),
    );
  }

  Map<String, int> toJson() {
    return {
      'primary': primary,
      'surfaceTint': surfaceTint,
      'onPrimary': onPrimary,
      'primaryContainer': primaryContainer,
      'onPrimaryContainer': onPrimaryContainer,
      'secondary': secondary,
      'onSecondary': onSecondary,
      'secondaryContainer': secondaryContainer,
      'onSecondaryContainer': onSecondaryContainer,
      'tertiary': tertiary,
      'onTertiary': onTertiary,
      'tertiaryContainer': tertiaryContainer,
      'onTertiaryContainer': onTertiaryContainer,
      'error': error,
      'onError': onError,
      'errorContainer': errorContainer,
      'onErrorContainer': onErrorContainer,
      'background': background,
      'onBackground': onBackground,
      'surface': surface,
      'onSurface': onSurface,
      'surfaceVariant': surfaceVariant,
      'onSurfaceVariant': onSurfaceVariant,
      'outline': outline,
      'outlineVariant': outlineVariant,
      'shadow': shadow,
      'scrim': scrim,
      'inverseSurface': inverseSurface,
      'inverseOnSurface': inverseOnSurface,
      'inversePrimary': inversePrimary,
      'primaryFixed': primaryFixed,
      'onPrimaryFixed': onPrimaryFixed,
      'primaryFixedDim': primaryFixedDim,
      'onPrimaryFixedVariant': onPrimaryFixedVariant,
      'secondaryFixed': secondaryFixed,
      'onSecondaryFixed': onSecondaryFixed,
      'secondaryFixedDim': secondaryFixedDim,
      'onSecondaryFixedVariant': onSecondaryFixedVariant,
      'tertiaryFixed': tertiaryFixed,
      'onTertiaryFixed': onTertiaryFixed,
      'tertiaryFixedDim': tertiaryFixedDim,
      'onTertiaryFixedVariant': onTertiaryFixedVariant,
      'surfaceDim': surfaceDim,
      'surfaceBright': surfaceBright,
      'surfaceContainerLowest': surfaceContainerLowest,
      'surfaceContainerLow': surfaceContainerLow,
      'surfaceContainer': surfaceContainer,
      'surfaceContainerHigh': surfaceContainerHigh,
      'surfaceContainerHighest': surfaceContainerHighest,
    };
  }

  static List<String> roles = [
    'primary',
    'surfaceTint',
    'onPrimary',
    'primaryContainer',
    'onPrimaryContainer',
    'secondary',
    'onSecondary',
    'secondaryContainer',
    'onSecondaryContainer',
    'tertiary',
    'onTertiary',
    'tertiaryContainer',
    'onTertiaryContainer',
    'error',
    'onError',
    'errorContainer',
    'onErrorContainer',
    'background',
    'onBackground',
    'surface',
    'onSurface',
    'surfaceVariant',
    'onSurfaceVariant',
    'outline',
    'outlineVariant',
    'shadow',
    'scrim',
    'inverseSurface',
    'inverseOnSurface',
    'inversePrimary',
    'primaryFixed',
    'onPrimaryFixed',
    'primaryFixedDim',
    'onPrimaryFixedVariant',
    'secondaryFixed',
    'onSecondaryFixed',
    'secondaryFixedDim',
    'onSecondaryFixedVariant',
    'tertiaryFixed',
    'onTertiaryFixed',
    'tertiaryFixedDim',
    'onTertiaryFixedVariant',
    'surfaceDim',
    'surfaceBright',
    'surfaceContainerLowest',
    'surfaceContainerLow',
    'surfaceContainer',
    'surfaceContainerHigh',
    'surfaceContainerHighest',
  ];

  factory MaterialScheme.fromJson(
    Brightness brightness,
    Map<String, dynamic> colors,
  ) {
    // Validate
    for (final role in roles) {
      if (!colors.containsKey(role)) {
        throw Exception('Missing role: $role');
      }
      if (colors[role] is! String) {
        throw Exception(
          'Invalid color value for role: $role -> ${colors[role]}',
        );
      }
      if (!colors[role].startsWith('#')) {
        throw Exception(
          'Invalid color value for role: $role -> ${colors[role]}',
        );
      }
    }
    return MaterialScheme.fromColors(
      brightness,
      primary: Color(parseHex(colors['primary'])!),
    ).copyWith(
      surfaceTint: parseHex(colors['surfaceTint']),
      onPrimary: parseHex(colors['onPrimary']),
      primaryContainer: parseHex(colors['primaryContainer']),
      onPrimaryContainer: parseHex(colors['onPrimaryContainer']),
      secondary: parseHex(colors['secondary']),
      onSecondary: parseHex(colors['onSecondary']),
      secondaryContainer: parseHex(colors['secondaryContainer']),
      onSecondaryContainer: parseHex(colors['onSecondaryContainer']),
      tertiary: parseHex(colors['tertiary']),
      onTertiary: parseHex(colors['onTertiary']),
      tertiaryContainer: parseHex(colors['tertiaryContainer']),
      onTertiaryContainer: parseHex(colors['onTertiaryContainer']),
      error: parseHex(colors['error']),
      onError: parseHex(colors['onError']),
      errorContainer: parseHex(colors['errorContainer']),
      onErrorContainer: parseHex(colors['onErrorContainer']),
      background: parseHex(colors['background']),
      onBackground: parseHex(colors['onBackground']),
      surface: parseHex(colors['surface']),
      onSurface: parseHex(colors['onSurface']),
      surfaceVariant: parseHex(colors['surfaceVariant']),
      onSurfaceVariant: parseHex(colors['onSurfaceVariant']),
      outline: parseHex(colors['outline']),
      outlineVariant: parseHex(colors['outlineVariant']),
      shadow: parseHex(colors['shadow']),
      scrim: parseHex(colors['scrim']),
      inverseSurface: parseHex(colors['inverseSurface']),
      inverseOnSurface: parseHex(colors['inverseOnSurface']),
      inversePrimary: parseHex(colors['inversePrimary']),
      primaryFixed: parseHex(colors['primaryFixed']),
      onPrimaryFixed: parseHex(colors['onPrimaryFixed']),
      primaryFixedDim: parseHex(colors['primaryFixedDim']),
      onPrimaryFixedVariant: parseHex(colors['onPrimaryFixedVariant']),
      secondaryFixed: parseHex(colors['secondaryFixed']),
      onSecondaryFixed: parseHex(colors['onSecondaryFixed']),
      secondaryFixedDim: parseHex(colors['secondaryFixedDim']),
      onSecondaryFixedVariant: parseHex(colors['onSecondaryFixedVariant']),
      tertiaryFixed: parseHex(colors['tertiaryFixed']),
      onTertiaryFixed: parseHex(colors['onTertiaryFixed']),
      tertiaryFixedDim: parseHex(colors['tertiaryFixedDim']),
      onTertiaryFixedVariant: parseHex(colors['onTertiaryFixedVariant']),
      surfaceDim: parseHex(colors['surfaceDim']),
      surfaceBright: parseHex(colors['surfaceBright']),
      surfaceContainerLowest: parseHex(colors['surfaceContainerLowest']),
      surfaceContainerLow: parseHex(colors['surfaceContainerLow']),
      surfaceContainer: parseHex(colors['surfaceContainer']),
      surfaceContainerHigh: parseHex(colors['surfaceContainerHigh']),
      surfaceContainerHighest: parseHex(colors['surfaceContainerHighest']),
    );
  }

  MaterialScheme copyWith({
    Brightness? brightness,
    int? primary,
    int? surfaceTint,
    int? onPrimary,
    int? primaryContainer,
    int? onPrimaryContainer,
    int? secondary,
    int? onSecondary,
    int? secondaryContainer,
    int? onSecondaryContainer,
    int? tertiary,
    int? onTertiary,
    int? tertiaryContainer,
    int? onTertiaryContainer,
    int? error,
    int? onError,
    int? errorContainer,
    int? onErrorContainer,
    int? background,
    int? onBackground,
    int? surface,
    int? onSurface,
    int? surfaceVariant,
    int? onSurfaceVariant,
    int? outline,
    int? outlineVariant,
    int? shadow,
    int? scrim,
    int? inverseSurface,
    int? inverseOnSurface,
    int? inversePrimary,
    int? primaryFixed,
    int? onPrimaryFixed,
    int? primaryFixedDim,
    int? onPrimaryFixedVariant,
    int? secondaryFixed,
    int? onSecondaryFixed,
    int? secondaryFixedDim,
    int? onSecondaryFixedVariant,
    int? tertiaryFixed,
    int? onTertiaryFixed,
    int? tertiaryFixedDim,
    int? onTertiaryFixedVariant,
    int? surfaceDim,
    int? surfaceBright,
    int? surfaceContainerLowest,
    int? surfaceContainerLow,
    int? surfaceContainer,
    int? surfaceContainerHigh,
    int? surfaceContainerHighest,
    Map<String, int>? extra,
  }) {
    return MaterialScheme(
      isBaseline: false,
      brightness: brightness ?? this.brightness,
      extra: extra ?? this.extra,
      primary: primary ?? this.primary,
      surfaceTint: surfaceTint ?? this.surfaceTint,
      onPrimary: onPrimary ?? this.onPrimary,
      primaryContainer: primaryContainer ?? this.primaryContainer,
      onPrimaryContainer: onPrimaryContainer ?? this.onPrimaryContainer,
      secondary: secondary ?? this.secondary,
      onSecondary: onSecondary ?? this.onSecondary,
      secondaryContainer: secondaryContainer ?? this.secondaryContainer,
      onSecondaryContainer: onSecondaryContainer ?? this.onSecondaryContainer,
      tertiary: tertiary ?? this.tertiary,
      onTertiary: onTertiary ?? this.onTertiary,
      tertiaryContainer: tertiaryContainer ?? this.tertiaryContainer,
      onTertiaryContainer: onTertiaryContainer ?? this.onTertiaryContainer,
      error: error ?? this.error,
      onError: onError ?? this.onError,
      errorContainer: errorContainer ?? this.errorContainer,
      onErrorContainer: onErrorContainer ?? this.onErrorContainer,
      background: background ?? this.background,
      onBackground: onBackground ?? this.onBackground,
      surface: surface ?? this.surface,
      onSurface: onSurface ?? this.onSurface,
      surfaceVariant: surfaceVariant ?? this.surfaceVariant,
      onSurfaceVariant: onSurfaceVariant ?? this.onSurfaceVariant,
      outline: outline ?? this.outline,
      outlineVariant: outlineVariant ?? this.outlineVariant,
      shadow: shadow ?? this.shadow,
      scrim: scrim ?? this.scrim,
      inverseSurface: inverseSurface ?? this.inverseSurface,
      inverseOnSurface: inverseOnSurface ?? this.inverseOnSurface,
      inversePrimary: inversePrimary ?? this.inversePrimary,
      primaryFixed: primaryFixed ?? this.primaryFixed,
      onPrimaryFixed: onPrimaryFixed ?? this.onPrimaryFixed,
      primaryFixedDim: primaryFixedDim ?? this.primaryFixedDim,
      onPrimaryFixedVariant:
          onPrimaryFixedVariant ?? this.onPrimaryFixedVariant,
      secondaryFixed: secondaryFixed ?? this.secondaryFixed,
      onSecondaryFixed: onSecondaryFixed ?? this.onSecondaryFixed,
      secondaryFixedDim: secondaryFixedDim ?? this.secondaryFixedDim,
      onSecondaryFixedVariant:
          onSecondaryFixedVariant ?? this.onSecondaryFixedVariant,
      tertiaryFixed: tertiaryFixed ?? this.tertiaryFixed,
      onTertiaryFixed: onTertiaryFixed ?? this.onTertiaryFixed,
      tertiaryFixedDim: tertiaryFixedDim ?? this.tertiaryFixedDim,
      onTertiaryFixedVariant:
          onTertiaryFixedVariant ?? this.onTertiaryFixedVariant,
      surfaceDim: surfaceDim ?? this.surfaceDim,
      surfaceBright: surfaceBright ?? this.surfaceBright,
      surfaceContainerLowest:
          surfaceContainerLowest ?? this.surfaceContainerLowest,
      surfaceContainerLow: surfaceContainerLow ?? this.surfaceContainerLow,
      surfaceContainer: surfaceContainer ?? this.surfaceContainer,
      surfaceContainerHigh: surfaceContainerHigh ?? this.surfaceContainerHigh,
      surfaceContainerHighest:
          surfaceContainerHighest ?? this.surfaceContainerHighest,
    );
  }
}

extension ColorUtils on int {
  Color get color => Color(this);
}

int? parseHex(dynamic hex) {
  if (hex == null) return null;
  if (hex is int) {
    return hex;
  }
  if (hex is! String) {
    throw Exception('Invalid color value: $hex');
  }
  if (hex.isEmpty) {
    throw Exception('Empty color value: $hex');
  }
  if (hex.length < 6) {
    throw Exception('Invalid hex value: $hex');
  }
  if (hex.startsWith('#')) {
    hex = hex.substring(1);
  }
  if (hex.length == 6) {
    hex = 'FF$hex';
  }
  return int.parse(hex, radix: 16);
}

Color _color(dynamic hex) => Color(parseHex(hex)!);
