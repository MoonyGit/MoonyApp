import 'package:flutter/material.dart';
import 'package:kt_dart/standard.dart';
import 'package:moony_app/common/resources/strings.dart';

/// Widget for editing photo slot
class PhotoSlotWidget extends StatelessWidget {
  /// Constructor
  const PhotoSlotWidget({
    required this.slotNumber,
    required this.colorBegin,
    required this.onClick,
    this.colorEnd,
    this.child,
    this.colorMiddle,
  });

  /// photo slot number
  final int slotNumber;

  /// color for begin
  final Color colorBegin;

  /// optional color end
  final Color? colorEnd;

  /// optional child widget
  final Widget? child;

  /// optional color middle
  final Color? colorMiddle;

  /// action on frame click
  final void Function() onClick;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: <Widget>[
        Ink(
          decoration: ShapeDecoration(
            gradient: colorMiddle?.let((Color colorMiddle) {
              return LinearGradient(
                colors: <Color>[
                  colorBegin,
                  colorMiddle,
                  colorEnd ?? colorBegin
                ],
              );
            }) ??
                LinearGradient(
                  colors: <Color>[colorBegin, colorEnd ?? colorBegin],
                ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
          ),
          width: photoSlotWidth,
          height: photoSlotHeight,
          child: child,
        ),
        Positioned(
          bottom: -20,
          right: -20,
          child: FloatingActionButton.small(
            elevation: 5,
            onPressed: onClick,
            child: Text(
              AppStrings.addFab.translate(),
            ),
          ),
        )
      ],
    );
  }

  ///width for photo frame
  static const double photoSlotWidth = 150;

  /// height for photo frame
  static const double photoSlotHeight = 200;

  /// radius for photo frame border
  static const double borderRadius = 10;
}
