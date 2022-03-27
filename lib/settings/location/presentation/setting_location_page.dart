import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moony_app/common/resources/strings.dart';
import 'package:moony_app/common/resources/themes.dart';
import 'package:moony_app/settings/common/presentation/setting_header_widget.dart';
import 'package:moony_app/settings/location/domain/model/distance_preference.dart';
import 'package:moony_app/settings/location/presentation/setting_location_controller.dart';
import 'package:moony_app/settings/resources/strings.dart';

/// The setting location page
class SettingLocationPage extends GetView<SettingLocationController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[AppTheme.secondary, AppTheme.primary],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 24,
            ),
            onPressed: () => controller.back(),
          ),
          title: Text(
            settingLocationTitle.translate(),
            style: const TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Obx(
                  () => SettingHeaderWidget(
                title:
                "${settingLocationHeaderDistance.translate()} ${controller.locationDistance.toInt()} ${settingLocationHeaderDistanceUnit}",
              ),
            ),
            Obx(
                  () => SliderTheme(
                data: AppTheme.sliderTheme(context),
                child: Slider(
                  value: controller.locationDistance.value,
                  max: DistancePreference.maxDistance,
                  label: controller.locationDistance.round().toString(),
                  onChanged: (double value) {
                    controller.changeLocationDistancePreference(
                      distance: value,
                    );
                  },
                ),
              ),
            ),
            MaterialButton(
              onPressed: () => controller.saveLocationValue(),
              color: Colors.white,
              textColor: Colors.red,
              child: Text(settingLocationUpdate.translate()),
            ),
          ],
        ),
      ),
    );
  }
}
