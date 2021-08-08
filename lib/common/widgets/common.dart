import 'package:flutter/material.dart';
import 'package:moony_app/common/resources/themes.dart';

/// create widget with maximum constraints
Widget makeWidgetWithConstraints(
    {required Widget child, double minWidth = 280}) {
  return ConstrainedBox(
      constraints:
          BoxConstraints(maxHeight: 200, maxWidth: 300, minWidth: minWidth),
      child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: child));
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
    child: makeWidgetWithConstraints(
        child: Text(text, textAlign: textAlign, style: textStyle)),
  );
}

Widget makeCenteredRoundedTextWithMoonyGradient(
    {required BuildContext context, required String text}) {
  return Center(
      child: makeTextWithGradient(
          text: text,
          textAlign: TextAlign.center,
          textStyle: Theme.of(context).textTheme.moonyMessage,
          alignmentBegin: Alignment.centerLeft,
          alignmentEnd: Alignment.centerRight,
          colorBegin: AppTheme.secondary,
          colorEnd: AppTheme.primary,
          borderRadius: 30));
}
