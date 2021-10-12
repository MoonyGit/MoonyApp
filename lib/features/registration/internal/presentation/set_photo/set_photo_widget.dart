import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_rx/src/rx_workers/rx_workers.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kt_dart/standard.dart';
import 'package:moony_app/common/base/domain/usecase/usecase.dart';
import 'package:moony_app/common/base/widgets/set_infos_base_widget.dart';
import 'package:moony_app/common/resources/strings.dart';
import 'package:moony_app/features/registration/internal/presentation/registration_controller.dart';
import 'package:moony_app/features/registration/resources/strings.dart';

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
                      Text(AppStrings.translate(message: takePhotoFromCamera)),
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
                      Text(AppStrings.translate(message: takePhotoFromGallery)),
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
                    Text(AppStrings.translate(message: takePhotoFromFacebook)),
              ),
              ListTile(
                leading: const Icon(FontAwesomeIcons.instagram),
                title:
                    Text(AppStrings.translate(message: takePhotoFromInstagram)),
              ),
            ],
          );
        });
  }
}

/// SetPhoto Controller
class SetPhotoController extends GetxController {
  /// Public constructor
  SetPhotoController(this._registrationController, this._saveSecondaryPhotoList,
      this._saveProfilePhoto) {
    _currentPageDisposable =
        ever(_registrationController.currentPage, (Widget? page) {
      if (page is SetPhotoWidget) {
        path1.value != null && path2.value != null
            ? _registrationController.enableNextButton()
            : _registrationController.disableNextButton();
      }
    });
  }

  late final Worker _currentPageDisposable;
  final AsyncParamUseCase<List<Uri>, void> _saveSecondaryPhotoList;
  final AsyncParamUseCase<Uri, void> _saveProfilePhoto;
  final RegistrationController _registrationController;

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
  }

  /// second photo path form validator
  String? path2Validator(String item) {
    if (item != path1.value && Uri.tryParse(item) != null) {
      path2.value = item;
      if (path1.value != null) {
        _savePhotos();
      }
    }
  }

  @override
  void onClose() {
    _currentPageDisposable.dispose();
    super.onClose();
  }

  void _savePhotos() {
    _saveProfilePhoto(input: Uri.parse(path1.value!));
    _saveSecondaryPhotoList(input: [Uri.parse(path2.value!)]);
    _registrationController.enableNextButton();
  }
}
