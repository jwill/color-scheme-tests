import 'package:color_scheme_tests/scheme.dart';
import 'package:color_scheme_tests/utils.dart';
import 'package:flutter/material.dart';
import 'package:material_color_utilities/material_color_utilities.dart';


class ColorSchemeScreen extends StatelessWidget {
  const ColorSchemeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    var scheme = ColorScheme.fromSeed(brightness: Brightness.dark,seedColor: Colors.black, dynamicSchemeVariant: DynamicSchemeVariant.monochrome);   //fromColors(Brightness.light, primary: Colors.black, secondary: Colors.blue);
    var scheme2 = fromColors(brightness: Brightness.dark, primary: Colors.green, secondary: Colors.blue);
    var scheme3 = fromColors(primary: Colors.green, secondary: Colors.blue, contrastLevel: 1.0);
    var scheme4 = scheme.copyWith(primary: scheme2.primary, primaryContainer: scheme2.primaryContainer, onPrimary: scheme2.onSecondary, onPrimaryContainer: scheme2.onPrimaryContainer,
    secondary: scheme2.secondary, secondaryContainer: scheme2.secondaryContainer, onSecondary: scheme2.onSecondary, onSecondaryContainer: scheme2.onSecondaryContainer
    );

    ColorScheme scheme5 = fromColors2(brightness: Brightness.dark, primarySeed: Colors.green, secondarySeed: Colors.blue, useMonochromeSurfaces: true);

    return SingleChildScrollView(child:Center(child:
    Column(children: [
      const SizedBox(height:36),
      SchemePreview(label:"Monochrome with Custom colors (Method #1)", scheme: scheme4,  brightness: Brightness.dark, contrast: 0.0,  extendedColors: const [], colorMatch: false,),
            const SizedBox(height:36),
      SchemePreview(label:"Monochrome with Custom colors (Method #2)", scheme: scheme5,  brightness: Brightness.dark, contrast: 0.0,  extendedColors: const [], colorMatch: false,),
      const SizedBox(height:36),
            SchemePreview(label:"Monochrome Light", scheme: scheme,  brightness: Brightness.light,  contrast: 1.0,  extendedColors: const [], colorMatch: false,),
            const SizedBox(height:16),
            SchemePreview(label:"Customized Green Light", scheme: scheme2,  brightness: Brightness.light,  contrast: 1.0,  extendedColors: const [], colorMatch: false,),
            const SizedBox(height:16),
            SchemePreview(label:"Customized High Contrast Green Light", scheme: scheme3,  brightness: Brightness.light, contrast: 1.0,  extendedColors: const [], colorMatch: false,),

    ],)));
  }
}
