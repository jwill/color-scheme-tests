
import 'package:flutter/material.dart';

import 'package:flutter/foundation.dart' show kIsWeb;

import 'package:flutter/gestures.dart';

class HoverButton extends StatefulWidget {
  const HoverButton(
      {Key? key,
      this.gapWidth = 8,
      this.layerAColor = Colors.green,
      this.layerBColor = Colors.blue,
      this.backgroundColor = Colors.amber,
      this.onBackgroundColor = Colors.black});

  final double gapWidth;
  final Color layerAColor;
  final Color layerBColor;
  final Color backgroundColor;
  final Color onBackgroundColor;

  @override
  State<HoverButton> createState() => _HoverButtonState();
}

class _HoverButtonState extends State<HoverButton> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    var outlinedButton = OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
          backgroundColor: widget.backgroundColor,
          foregroundColor: widget.backgroundColor.computeLuminance() > 0.5
          ? Colors.black
          : Colors.white,
          splashFactory: NoSplash.splashFactory,
          shape: const ContinuousRectangleBorder()),
      child: const Text("Start"),
    );

    var stack = kIsWeb
        ? Stack(children: [
            AnimatedPadding(
                padding: EdgeInsets.only(
                    left: selected ? 2 * widget.gapWidth : 0,
                    top: selected ? 2 * widget.gapWidth : 0),
                duration: const Duration(milliseconds: 300),
                child: Container(
                  width: 76,
                  height: 32,
                  decoration: BoxDecoration(
                    color: widget.layerBColor,
                    border: Border.all(width: 1.2),
                  ),
                )),
            AnimatedPadding(
                padding: EdgeInsets.only(
                    left: selected ? widget.gapWidth : 0,
                    top: selected ? widget.gapWidth : 0),
                duration: const Duration(milliseconds: 300),
                child: Container(
                  width: 76,
                  height: 32,
                  decoration: BoxDecoration(
                    color: widget.layerAColor,
                    border: Border.all(width: 1.2),
                  ),
                )),
            outlinedButton
          ])
        : outlinedButton;

    return MouseRegion(
        onEnter: (PointerEnterEvent evt) {
          setState(() {
            selected = true;
          });
        },
        onExit: (PointerExitEvent evt) {
          setState(() {
            selected = false;
          });
        },
        child: stack);
  }
}
