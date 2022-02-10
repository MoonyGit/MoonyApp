import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:kt_dart/standard.dart';
import 'package:moony_app/common/base/widgets/common.dart';
import 'package:moony_app/common/resources/strings.dart';
import 'package:moony_app/common/resources/themes.dart';

import 'activity_creation_controller.dart';

/// The phone otp page
class ActivityDescriptionPage extends GetView<ActivityCreationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(FontAwesomeIcons.chevronLeft),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.back();
              Get.back();
            },
            icon: const Icon(Icons.close),
          )
        ],
      ),
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (OverscrollIndicatorNotification overscroll) {
          overscroll.disallowIndicator();
          return false;
        },
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Stack(
                    children: [
                      Obx(() => _getPhotoSlot(
                          height: 170,
                          width: MediaQuery.of(context).size.width - 10,
                          context: context,
                          colorBegin: AppTheme.searchbarBackground,
                          child: controller.imagePath.value?.let((String it) {
                            return Image.file(File(it));
                          }))),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15,
                      bottom: 15,
                      left: 5,
                      right: 5,
                    ),
                    child: TextFormField(
                      initialValue: controller.title,
                      decoration: InputDecoration(
                        isDense: true,
                        prefixIcon:
                            const Icon(FontAwesomeIcons.chevronCircleRight),
                        labelText: AppStrings.translate(message: "Titre"),
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        controller.title = value!;
                      },
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 15, left: 5, right: 5),
                    child: TextFormField(
                      controller: controller.dateController,
                      decoration: InputDecoration(
                        isDense: true,
                        prefixIcon: const Icon(FontAwesomeIcons.calendarAlt),
                        labelText: AppStrings.translate(message: "Date"),
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      onTap: () async {
                        // Below line stops keyboard from appearing
                        FocusScope.of(context).requestFocus(new FocusNode());
                        DateTime? date = DateTime.now();
                        controller.refreshLimitDates();
                        date = await showDatePicker(
                            builder: (context, child) {
                              return Theme(
                                data: Theme.of(context).copyWith(
                                  colorScheme: const ColorScheme.light(
                                    primary: AppTheme.primaryLight, // header background color
                                    onPrimary: AppTheme.secondary, // header text color
                                    onSurface: AppTheme.tertiaryDark, // body text color
                                  ),
                                  textButtonTheme: TextButtonThemeData(
                                    style: TextButton.styleFrom(
                                      primary: AppTheme.secondary, // button text color
                                    ),
                                  ),
                                ),
                                child: child!,
                              );
                            },
                            context: context,
                            initialDate: DateTime.now(),
                            locale: Locale('fr'),
                            firstDate: controller.currentDate,
                            lastDate: controller.maxActivityDate,
                            helpText: AppStrings.translate(
                                message: "Choisis la date de ton activité"),
                            errorFormatText: "La date n'est pas valide ! :(",
                            errorInvalidText: "La date est incorrecte",
                            confirmText: "Valider",
                            cancelText: "Annuler");

                        controller.dateController.text =
                            DateFormat('dd/MM/yyyy').format(date!);
                      },
                    ),
                  ),

                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 15, left: 5, right: 5),
                    child: TextFormField(
                      initialValue: controller.location,
                      decoration: InputDecoration(
                        isDense: true,
                        prefixIcon: const Icon(FontAwesomeIcons.locationArrow),
                        labelText: AppStrings.translate(message: "Lieu"),
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      keyboardType: TextInputType.streetAddress,
                      validator: (value) {
                        controller.location = value!;
                      },
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 15, left: 5, right: 5),
                    child: TextFormField(
                      initialValue: controller.description,
                      decoration: InputDecoration(
                        isDense: true,
                        prefixIcon: const Icon(FontAwesomeIcons.edit),
                        labelText: AppStrings.translate(message: "Description"),
                        hoverColor: AppTheme.secondary,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: AppTheme.primary,
                            width: 2.0,
                          ),
                        ),
                      ),
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        controller.description = value!;
                      },
                    ),
                  ),
                ],
              ),

              getMoonyImage(),
              const Padding(
                padding: EdgeInsets.only(bottom: 10),
              ),
              OutlinedButton(
                onPressed: controller.isDescriptionOK()
                    //? controller.createActivityOnRemote
                    ? null
                    : null,
                child: makeWidgetWithConstraints(
                  child: Text(
                    AppStrings.translate(message: AppStrings.finish),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

  Widget _getPhotoSlot(
      {required BuildContext context,
        required Color colorBegin,
        Widget? child,
        Color? colorEnd,
        Color? colorMiddle,
        double width = 150,
        double height = 200,
        Alignment alignmentBegin = Alignment.centerLeft,
        Alignment alignmentEnd = Alignment.centerRight,
        double borderRadius = 10}) {
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
              end: alignmentEnd),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius)),
        ),
        width: width,
        height: height,
        child: child,
      ),
      Positioned(
        bottom: 0,
        right: 0,
        child: FloatingActionButton.small(
          elevation: 1,
          onPressed: () => {showBottomSheet(context: context)},
          child: Container(
            height: 16,
            width: 16,
            child: const FittedBox(
              child: Icon(FontAwesomeIcons.photoVideo),
            ),
          ),
        ),
      )
    ]);
  }

  Future<void> showBottomSheet({required BuildContext context}) {
    return showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Wrap(
          children: [
            ListTile(
              leading: const Icon(Icons.photo_camera),
              title: Text(AppStrings.translate(message: "Prendre une photo")),
              onTap: () async {
                final String? path =
                    (await ImagePicker().pickImage(source: ImageSource.camera))
                        ?.path;
                if (path != null) {
                  controller.setChoosenImage(path);
                }
              },
            ),
            ListTile(
              leading: const Icon(Icons.photo),
              title: Text(AppStrings.translate(message: "Depuis la galerie")),
              onTap: () async {
                final String? path =
                    (await ImagePicker().pickImage(source: ImageSource.gallery))
                        ?.path;
                if (path != null) {
                  controller.setChoosenImage(path);
                }
              },
            ),
            ListTile(
              leading: const Icon(FontAwesomeIcons.facebook),
              title: Text(AppStrings.translate(message: "Facebook")),
            ),
            ListTile(
              leading: const Icon(FontAwesomeIcons.instagram),
              title: Text(AppStrings.translate(message: "Instagram")),
            ),
          ],
        );
      },
    );
  }
}
