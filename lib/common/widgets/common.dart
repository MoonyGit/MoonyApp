import 'package:flutter/material.dart';

/// create text with maximum constraints
Widget makeTextWithConstraints(
    {required String text, TextAlign? textAlign, TextStyle? textStyle}) {
  return ConstrainedBox(
      constraints:
          const BoxConstraints(maxHeight: 200, maxWidth: 300, minWidth: 280),
      child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Text(
            text,
            textAlign: textAlign,
            style: textStyle,
          )));
}

/// create text with a given gradient and maximum constraints
Widget makeTextWithGradient(
    {required String text,
    required Color colorBegin,
    required Color colorEnd,
    required Alignment alignmentBegin,
    required Alignment alignmentEnd,
    required double borderRadius,
    Color? colorMiddle,
    TextAlign? textAlign,
    TextStyle? textStyle}) {
  return Ink(
    decoration: ShapeDecoration(
      gradient: colorMiddle == null
          ? LinearGradient(
              colors: [colorBegin, colorEnd],
              begin: alignmentBegin,
              end: alignmentEnd)
          : LinearGradient(
              colors: [colorBegin, colorMiddle, colorEnd],
              begin: alignmentBegin,
              end: alignmentEnd),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius)),
    ),
    child: makeTextWithConstraints(
        text: text, textAlign: textAlign, textStyle: textStyle),
  );
}
