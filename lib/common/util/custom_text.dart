import 'package:flutter/material.dart';

/// Make a text color as gradient
class GradientText extends StatelessWidget {
  /// constructor
  const GradientText({
    required this.text,
    required this.gradient,
    required this.style,
  });

  /// Text to display
  final String text;

  /// style to define to the text like size
  final TextStyle style;

  /// gradient color wanted
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (Rect bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(text, style: style),
    );
  }
}
