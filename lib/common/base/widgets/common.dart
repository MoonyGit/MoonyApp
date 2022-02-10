import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:moony_app/common/resources/assets.dart';
import 'package:moony_app/common/resources/themes.dart';
import 'package:moony_app/home/resources/router.dart' as home_router;

/// create widget with maximum constraints
Widget makeWidgetWithConstraints(
    {required Widget child, double minWidth = 280}) {
  return ConstrainedBox(
    constraints:
        BoxConstraints(maxHeight: 200, maxWidth: 300, minWidth: minWidth),
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: child,
    ),
  );
}

/// create text with a given gradient and maximum constraints
Widget makeTextWithGradient(
    {required String text,
    String? description,
    required Color colorBegin,
    required Color colorEnd,
    required Alignment alignmentBegin,
    required Alignment alignmentEnd,
    required double borderRadius,
    Color? colorMiddle,
    TextAlign? textAlign,
    TextStyle? textStyle,
    TextStyle? descriptionTextStyle,
    String? prefixImage,
    double? prefixImageSize,
    EdgeInsetsGeometry? prefixImagePadding}) {
  return Ink(
    decoration: ShapeDecoration(
      gradient: colorMiddle == null
          ? LinearGradient(
              colors: [colorBegin, colorEnd],
              begin: alignmentBegin,
              end: alignmentEnd,
            )
          : LinearGradient(
              colors: [colorBegin, colorMiddle, colorEnd],
              begin: alignmentBegin,
              end: alignmentEnd,
            ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius),
      ),
    ),
    child: makeWidgetWithConstraints(
      child: Wrap(
        runAlignment: WrapAlignment.center,
        alignment: WrapAlignment.center,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          imageAssetNullable(
            prefixImage,
            size: prefixImageSize,
            padding: prefixImagePadding ?? EdgeInsets.zero,
          ),
          Wrap(
            direction: Axis.vertical,
            runAlignment: WrapAlignment.center,
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Text(text, textAlign: textAlign, style: textStyle),
              if (description != null)
                Text(
                  description,
                  textAlign: textAlign,
                  style: descriptionTextStyle,
                ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget imageAssetNullable(String? imagePath,
    {double? size = 24, required EdgeInsetsGeometry padding}) {
  if (imagePath != null) {
    return Padding(
      padding: padding,
      child: Image.asset(
        imagePath,
        width: size,
        height: size,
      ),
    );
  } else
    return SizedBox.shrink();
}

Widget makeRoundedTextWithMoonyGradient(
    {required BuildContext context,
    required String text,
    String? prefixImage,
    double? prefixImageSize,
    EdgeInsetsGeometry? prefixImagePadding,
    String? description}) {
  return makeTextWithGradient(
    text: text,
    description: description,
    prefixImage: prefixImage,
    prefixImagePadding: prefixImagePadding,
    prefixImageSize: prefixImageSize,
    textAlign: TextAlign.center,
    textStyle: Theme.of(context).textTheme.moonyMessage,
    descriptionTextStyle: Theme.of(context).textTheme.moonyDescription,
    alignmentBegin: Alignment.centerLeft,
    alignmentEnd: Alignment.centerRight,
    colorBegin: AppTheme.secondary,
    colorEnd: AppTheme.primary,
    borderRadius: 30,
  );
}

Widget getMoonyImage({double size = 150}) {
  return Image.asset(
    AppAsset.moonyShadow,
    width: size,
    height: size,
  );
}

Widget getMoonyTitle({double size = 120}) {
  return GestureDetector(
    onTap: () {
      Get.toNamed(home_router.Router.home);
    },
    child: Image.asset(
      AppAsset.moonyTitle,
      width: size,
      height: size,
    ),
  );
}
