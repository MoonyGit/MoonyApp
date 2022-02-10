import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moony_app/common/resources/strings.dart';

/// TODO Debt convert to class
Widget getPhotoSlot(
    {required BuildContext context,
      required Color colorBegin,
      required int slotNumber,
      Widget? child,
      Color? colorEnd,
      Color? colorMiddle,
      double width = 150,
      double height = 200,
      Alignment alignmentBegin = Alignment.centerLeft,
      Alignment alignmentEnd = Alignment.centerRight,
      double borderRadius = 10,
    required void Function() onClick}) {
  return Stack(clipBehavior: Clip.none, children: [
    Ink(
      decoration: ShapeDecoration(
        gradient: colorMiddle == null
            ? LinearGradient(
            colors: [colorBegin, colorEnd ?? colorBegin],
            begin: alignmentBegin,
            end: alignmentEnd)
            : LinearGradient(
            colors: [colorBegin, colorMiddle, colorEnd ?? colorBegin],
            begin: alignmentBegin,
            end: alignmentEnd ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius)),
      ),
      width: width,
      height: height,
      child: child,
    ),
    Positioned(
      bottom: -20,
      right: -20,
      child: FloatingActionButton.small(
          elevation: 5,
          onPressed: onClick,
          child: Text(AppStrings.translate(message: AppStrings.addFab))),
    )
  ]);
}