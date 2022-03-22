import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kt_dart/standard.dart';
import 'package:moony_app/common/base/domain/usecase/usecase.dart';
import 'package:moony_app/common/base/widgets/set_infos_base_widget.dart';
import 'package:moony_app/common/presentation/validation_interactor.dart';
import 'package:moony_app/common/resources/strings.dart';
import 'package:moony_app/registration/resources/strings.dart';

/// The set name widget
class SetPhotoWidget extends SetInfoBaseWidget<SetPhotoController> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  GlobalKey<FormState> getFormKey() {
    return _formKey;
  }

  @override
  IconData getPageIconHint() {
    return FontAwesomeIcons.camera;
  }

  @override
  String getPageTextHint() {
    return setPhotoHint;
  }

  @override
  List<Widget> getWidgets(BuildContext context) {
    return [
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Obx(() => _getPhotoSlot(
            context: context,
            colorBegin: Colors.grey,
            slotNumber: 1,
            child: controller.path1.value?.let((String it) {
              return Image.file(File(it));
            }))),
        Obx(() => _getPhotoSlot(
            context: context,
            colorBegin: Colors.grey,
            slotNumber: 2,
            child: controller.path2.value?.let((String it) {
              return Image.file(File(it));
            }))),
      ])
    ];
  }

  Widget _getPhotoSlot(
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
        bottom: -20,
        right: -20,
        child: FloatingActionButton.small(
            elevation: 5,
            onPressed: () =>
                {_showBottomSheet(context: context, slotNumber: slotNumber)},
            child: Text(AppStrings.translate(message: AppStrings.addFab))),
      )
    ]);
  }

  Future<void> _showBottomSheet(
      {required BuildContext context, required int slotNumber}) {
    return showModalBottomSheet<void>(
        context: context,
        builder: (BuildContext context) {
          return Wrap(
            children: [
              ListTile(
                  leading: const Icon(Icons.photo_camera),
                  title:
                      Text(AppStrings.takePhotoFromCamera.translate()),
                  onTap: () async {
                    final String? path = (await ImagePicker()
                            .pickImage(source: ImageSource.camera))
                        ?.path;
                    if (path != null) {
                      switch (slotNumber) {
                        case 1:
                          controller.path1Validator(path);
                          break;
                        case 2:
                          controller.path2Validator(path);
                          break;
                        default:
                          break;
                      }
                    }
                  }),
              ListTile(
                  leading: const Icon(Icons.photo),
                  title:
                      Text(AppStrings.takePhotoFromGallery.translate()),
                  onTap: () async {
                    final String? path = (await ImagePicker()
                            .pickImage(source: ImageSource.gallery))
                        ?.path;
                    if (path != null) {
                      switch (slotNumber) {
                        case 1:
                          controller.path1Validator(path);
                          break;
                        case 2:
                          controller.path2Validator(path);
                          break;
                        default:
                          break;
                      }
                    }
                  }),
              ListTile(
                leading: const Icon(FontAwesomeIcons.facebook),
                title:
                    Text(AppStrings.takePhotoFromFacebook.translate()),
              ),
              ListTile(
                leading: const Icon(FontAwesomeIcons.instagram),
                title:
                    Text(AppStrings.takePhotoFromInstagram.translate()),
              ),
            ],
          );
        });
  }
}

/// SetPhoto Controller
class SetPhotoController extends ValidationInteractor {
  /// Public constructor
  SetPhotoController(this._saveSecondaryPhotoList,
      this._saveProfilePhoto);

  final AsyncParamUseCase<List<Uri>, void> _saveSecondaryPhotoList;
  final AsyncParamUseCase<Uri, void> _saveProfilePhoto;

  /// first photo reactive path
  final RxnString path1 = RxnString();

  /// second photo reactive path
  final RxnString path2 = RxnString();

  /// first photo path form validator
  String? path1Validator(String item) {
    if (item != path2.value && Uri.tryParse(item) != null) {
      path1.value = item;
      if (path2.value != null) {
        _savePhotos();
      }
    }
    return null;
  }

  /// second photo path form validator
  String? path2Validator(String item) {
    if (item != path1.value && Uri.tryParse(item) != null) {
      path2.value = item;
      if (path1.value != null) {
        _savePhotos();
      }
    }
    return null;
  }

  void _savePhotos() {
    _saveProfilePhoto(input: Uri.parse(path1.value!));
    _saveSecondaryPhotoList(input: [Uri.parse(path2.value!)]);
    validationController.add(true);
  }
}
