import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:kt_dart/standard.dart';
import 'package:moony_app/activity_creation/domain/usecase/activity_creation_usecase.dart';
import 'package:moony_app/activity_creation/resources/strings.dart';
import 'package:moony_app/common/base/domain/usecase/usecase.dart';
import 'package:moony_app/common/base/widgets/set_infos_base_widget.dart';
import 'package:moony_app/common/domain/activity/model/description.dart';
import 'package:moony_app/common/domain/activity/model/starting_date.dart';
import 'package:moony_app/common/domain/activity/model/title.dart';
import 'package:moony_app/common/domain/model/address.dart';
import 'package:moony_app/common/presentation/validation_interactor.dart';
import 'package:moony_app/common/resources/strings.dart';
import 'package:moony_app/common/resources/themes.dart';

/// The phone otp page
class ActivityDescriptionWidget
    extends SetInfoBaseWidget<ActivityDescriptionController> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  GlobalKey<FormState> getFormKey() {
    return _formKey;
  }

  Future<void> _showDatePicker({required BuildContext context}) async {
    (await showDatePicker(
      context: context,
      initialEntryMode: DatePickerEntryMode.input,
      builder: (BuildContext context, Widget? child) =>
      child?.let(
            (Widget it) =>
            getDatePickerTheme(
              context: context,
              child: it,
            ),
      ) ??
          Container(),
      initialDate: controller.currentStartingDate,
      firstDate: controller.minStartingDate,
      lastDate: controller.maxStartingDate,
      locale: Get.deviceLocale,
      fieldLabelText: AppStrings.bookDate.translate(),
      helpText: activityStartingDateTitle.translate(),
      errorFormatText: activityStartingDateError.translate(),
      errorInvalidText: activityStartingDateError.translate(),
      confirmText: AppStrings.validate.translate(),
      cancelText: AppStrings.cancel.translate(),
    ))
        ?.let((DateTime it) => controller.onStartingDateChanged(it));
  }

  Widget _getPhotoSlot({
    required BuildContext context,
    required Color colorBegin,
    Widget? child,
    Color? colorEnd,
    Color? colorMiddle,
    double width = 150,
    double height = 200,
    Alignment alignmentBegin = Alignment.centerLeft,
    Alignment alignmentEnd = Alignment.centerRight,
    double borderRadius = 10,
  }) {
    return Stack(
      clipBehavior: Clip.none,
      children: <Widget>[
        Ink(
          decoration: ShapeDecoration(
            gradient: colorMiddle == null
                ? LinearGradient(
              colors: <Color>[colorBegin, colorEnd ?? colorBegin],
              begin: alignmentBegin,
              end: alignmentEnd,
            )
                : LinearGradient(
              colors: <Color>[
                colorBegin,
                colorMiddle,
                colorEnd ?? colorBegin
              ],
              begin: alignmentBegin,
              end: alignmentEnd,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
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
            onPressed: () => _showBottomSheet(context: context),
            child: const SizedBox(
              height: 16,
              width: 16,
              child: FittedBox(
                child: Icon(FontAwesomeIcons.photoVideo),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Future<void> _showBottomSheet({required BuildContext context}) {
    return showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Wrap(
          children: <Widget>[
            ListTile(
              leading: const Icon(Icons.photo_camera),
              title: Text(AppStrings.takePhotoFromCamera.translate()),
              onTap: () async {
                final String? path =
                    (await ImagePicker().pickImage(source: ImageSource.camera))
                        ?.path;
                if (path != null) {
                  controller.onPhotoChanged(path);
                }
              },
            ),
            ListTile(
              leading: const Icon(Icons.photo),
              title: Text(AppStrings.takePhotoFromGallery.translate()),
              onTap: () async {
                final String? path =
                    (await ImagePicker().pickImage(source: ImageSource.gallery))
                        ?.path;
                if (path != null) {
                  controller.onPhotoChanged(path);
                }
              },
            ),
            ListTile(
              leading: const Icon(FontAwesomeIcons.facebook),
              title: Text(AppStrings.takePhotoFromFacebook.translate()),
            ),
            ListTile(
              leading: const Icon(FontAwesomeIcons.instagram),
              title: Text(AppStrings.takePhotoFromInstagram.translate()),
            ),
          ],
        );
      },
    );
  }

  @override
  IconData getPageIconHint() => Icons.description;

  @override
  String getPageTextHint() => "Description";

  @override
  List<Widget> getWidgets(BuildContext context) =>
      <Widget>[
        Stack(
          children: <Widget>[
            Obx(
                  () =>
                  _getPhotoSlot(
                    height: 170,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width - 10,
                    context: context,
                    colorBegin: AppTheme.searchbarBackground,
                    child: controller.photo.value?.let((String it) {
                      return Image.file(File(it));
                    }),
                  ),
            ),
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
            controller: controller.titleController,
            decoration: InputDecoration(
              isDense: true,
              prefixIcon: const Icon(FontAwesomeIcons.chevronCircleRight),
              labelText: activityTitle.translate(),
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            keyboardType: TextInputType.text,
            validator: controller.onTitleChanged,
            onFieldSubmitted: (String value) =>
                _formKey.currentState?.validate(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 15, left: 5, right: 5),
          child: TextFormField(
            controller: controller.dateController,
            keyboardType: TextInputType.none,
            decoration: InputDecoration(
              isDense: true,
              prefixIcon: const Icon(FontAwesomeIcons.calendarAlt),
              labelText: activityDate.translate(),
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            onTap: () async {
              _showDatePicker(context: context);
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 15, left: 5, right: 5),
          child: TextFormField(
            controller: controller.locationController,
            decoration: InputDecoration(
              isDense: true,
              prefixIcon: const Icon(FontAwesomeIcons.locationArrow),
              labelText: activityLocation.translate(),
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            keyboardType: TextInputType.streetAddress,
            validator: controller.onLocationChanged,
            onFieldSubmitted: (String value) =>
                _formKey.currentState?.validate(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 15, left: 5, right: 5),
          child: TextFormField(
            controller: controller.descriptionController,
            decoration: InputDecoration(
              isDense: true,
              prefixIcon: const Icon(FontAwesomeIcons.edit),
              labelText: activityDescription.translate(),
              hoverColor: AppTheme.secondary,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(
                  color: AppTheme.primary,
                  width: 2.0,
                ),
              ),
            ),
            keyboardType: TextInputType.text,
            maxLength: controller.maxDescriptionSize,
            minLines: 2,
            validator: controller.onDescriptionChanged,
            onFieldSubmitted: (String value) =>
                _formKey.currentState?.validate(),
          ),
        ),
      ];
}

/// ActivityDescription Controller
class ActivityDescriptionController extends ValidationInteractor {
  /// Public constructor
  ActivityDescriptionController(this._creationUseCase);

  final AsyncParamUseCase<SaveActivityDescriptionUseCaseParam, void>
  _creationUseCase;

  /// Current title choice
  String? currentTitle;

  /// Title text input controller
  final TextEditingController titleController = TextEditingController();

  /// Min starting date
  final DateTime minStartingDate = ExpectedStartingDate.minDate.subtract(
      const Duration(days: 1));

  /// Max starting date
  final DateTime maxStartingDate = ExpectedStartingDate.maxDate;

  /// Current starting date
  late DateTime currentStartingDate = minStartingDate;

  /// Date text input controller
  final TextEditingController dateController = TextEditingController();

  /// Current Location choice
  String? location;

  /// Location text input controller
  final TextEditingController locationController = TextEditingController();

  /// Current Description choice
  String? description;

  /// Description text input controller
  final TextEditingController descriptionController = TextEditingController();

  final int maxDescriptionSize = ActivityDescription.maxChar;

  /// Current photo path
  final Rxn<String> photo = Rxn<String>();

  /// onTitleChanged callback
  String? onTitleChanged(String? title) =>
      title?.let((String text) {
        return ActivityTitle(input: text).value.fold(
              (ActivityTitleFailure failure) {
            currentTitle = null;
            validationController.add(false);
            return activityTitleBadSizeMessageFailure.translate();
          },
              (String success) {
                currentTitle = success;
            _validateFields();
          },
        );
      });

  /// onStartingDateChanged callback
  void onStartingDateChanged(DateTime start) {
    if (start != minStartingDate &&
        ExpectedStartingDate(input: start).isValid) {
      currentStartingDate = start;
      dateController.text =
          DateFormat(null, Get.deviceLocale?.toString()).format(start);
      _validateFields();
    }
  }

  /// onLocationChanged callback
  String? onLocationChanged(String? address) {
    ///TODO: address validation
    if (address?.isNotEmpty == true) {
      location = address;
      _validateFields();
      return null;
    } else {
      location = null;
      validationController.add(false);
      return activityLocationMessageFailure.translate();
    }
  }

  /// onDescriptionChanged callback
  String? onDescriptionChanged(String? description) =>
      description?.let((String text) {
        return ActivityDescription(input: text).value.fold(
              (ActivityDescriptionFailure failure) {
                this.description = null;
            validationController.add(false);
            return activityDescriptionBadSizeMessageFailure.translate();
          },
              (String success) {
            this.description = success;
            _validateFields();
            return null;
          },
        );
      });

  /// onPhotoPathChanged callback
  void onPhotoChanged(String path) {
    if (Uri.tryParse(path) != null) {
      photo.value = path;
      _validateFields();
    } else {
      validationController.add(false);
    }
  }

  void _validateFields() {
    if (photo.value != null &&
        description != null &&
        location != null &&
        ExpectedStartingDate(input: currentStartingDate).isValid &&
        currentTitle != null) {
      validationController.add(true);
      _creationUseCase(
        input: SaveActivityDescriptionUseCaseParam(
          activityTitle: ActivityTitle(input: currentTitle!),
          activityDescription: ActivityDescription(input: description!),
          address: Address.defaultValue(),
          expectedStartingDate:
          ExpectedStartingDate(input: currentStartingDate),
          image: Uri.parse(photo.value!),
          link: null,
        ),
      );
    }
  }
}
