import 'package:flutter/material.dart' hide Orientation;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:kt_dart/standard.dart';
import 'package:moony_app/activity_swipe/presentation/detail/swipe_detail_controller.dart';
import 'package:moony_app/activity_swipe/presentation/detail/swipe_detail_model.dart';
import 'package:moony_app/activity_swipe/resources/strings.dart';
import 'package:moony_app/common/base/widgets/constrained_page.dart';
import 'package:moony_app/common/domain/user/model/zodiac_sign.dart';
import 'package:moony_app/common/resources/strings.dart';
import 'package:moony_app/common/util/date_format_ext.dart';
import 'package:moony_app/common/util/logger.dart';
import 'package:moony_app/common/util/string_dynamic_interpolation.dart';
import 'package:url_launcher/url_launcher.dart';

/// The swipe detail page
class SwipeDetailPage extends ConstrainedPage<SwipeDetailController> {
  @override
  Widget buildWidget(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Obx(
          () =>
              controller.detailModel.value
                  ?.let((SwipeDetailModel model) => SingleChildScrollView(
                        child: Column(
                          children: <Widget>[
                            Image.network(model.activity.imgUri),
                            ..._createActivityList(model.activity),
                            ..._createUserList(model.user)
                          ],
                        ),
                      )) ??
              const Center(
                child: CircularProgressIndicator(),
              ),
        ));
  }

  List<Widget> _createUserList(UserSwipeDetailModel model) =>
      <Widget>[].also((List<Widget> column) {
        column.add(ListTile(
          title: Text(
            AppStrings.translate(message: swipeDetailUserTitle),
            style: const TextStyle(
                fontSize: 22, decoration: TextDecoration.underline),
          ),
        ));

        column.add(ListTile(
          leading: const Icon(
            FontAwesomeIcons.venusMars,
            size: 24,
            color: Colors.black,
          ),
          title: Text(
            model.gender.toString(),
          ),
        ));

        model.orientation?.let((String it) {
          column.add(ListTile(
            leading: const Icon(
              Icons.arrow_right_alt_outlined,
              size: 24,
              color: Colors.black,
            ),
            title: Text(it),
          ));
        });

        model.relationState?.let((String it) {
          column.add(ListTile(
            leading: const Icon(
              FontAwesomeIcons.solidHeart,
              size: 24,
              color: Colors.black,
            ),
            title: Text(it),
          ));
        });

        model.languages?.let((List<String> it) {
          column.add(ListTile(
            leading: const Icon(
              FontAwesomeIcons.globe,
              size: 24,
              color: Colors.black,
            ),
            title: Text(it.join(", ")),
          ));
        });

        model.hobbies.let((List<String> it) {
          column.add(ListTile(
            leading: const Icon(
              FontAwesomeIcons.palette,
              size: 24,
              color: Colors.black,
            ),
            title: Text(it.join(", ")),
          ));
        });

        model.job?.let((String it) {
          column.add(ListTile(
            leading: const Icon(
              Icons.work,
              size: 24,
              color: Colors.black,
            ),
            title: Text(it.toString()),
          ));
        });

        model.foodCategory?.let((String it) {
          column.add(ListTile(
            leading: const Icon(
              Icons.food_bank_outlined,
              size: 24,
              color: Colors.black,
            ),
            title: Text(it),
          ));
        });

        model.zodiacSign.let((String it) {
          column.add(ListTile(
            leading: Text(
              ZodiacSign.scorpius.getImage(),
              style: const TextStyle(fontSize: 20),
            ),
            title: Text(it),
          ));
        });

        model.doSmoke?.let((bool it) {
          column.add(ListTile(
            leading: const Icon(
              Icons.smoking_rooms_outlined,
              size: 24,
              color: Colors.black,
            ),
            title: Text(it.toString()),
          ));
        });

        model.doDrinkAlcohol?.let((bool it) {
          column.add(ListTile(
            leading: const Icon(
              Icons.smoking_rooms_outlined,
              size: 24,
              color: Colors.black,
            ),
            title: Text(it.toString()),
          ));
        });

        model.petPrefered?.let((String it) {
          column.add(ListTile(
            leading: const Icon(
              Icons.pets_outlined,
              size: 24,
              color: Colors.black,
            ),
            title: Text(it.toString()),
          ));
        });
      });

  List<Widget> _createActivityList(ActivitySwipeDetailModel model) =>
      <Widget>[].also((List<Widget> column) {
        column.add(ListTile(
          title: Text(
            AppStrings.translate(message: swipeDetailActivityTitle),
            style: const TextStyle(
                fontSize: 22, decoration: TextDecoration.underline),
          ),
        ));
        column.add(ListTile(
          leading: Image.network(
            model.categoryImgUri,
            height: 24,
            width: 24,
          ),
          title: Text(model.name),
        ));
        model.targetDate?.let((DateTime it) {
          column.add(ListTile(
            leading: const Icon(
              Icons.date_range_outlined,
              size: 24,
              color: Colors.black,
            ),
            title: Text(it.format("%d / %m / %Y")),
          ));
        });

        model.location?.let((String it) {
          column.add(ListTile(
            leading: const Icon(
              Icons.location_on_outlined,
              size: 24,
              color: Colors.black,
            ),
            title: Text(it),
          ));
        });

        model.budget?.let((String it) {
          column.add(ListTile(
            leading: const Icon(
              Icons.money_outlined,
              size: 24,
              color: Colors.black,
            ),
            title: Text(it),
          ));
        });

        model.participantNumber.let((int it) {
          column.add(ListTile(
            leading: const Icon(
              Icons.people_alt_outlined,
              size: 24,
              color: Colors.black,
            ),
            title: Text(AppStrings.translate(
                message: swipeDetailParticipantNumberTemplate
                    .format(<String>[it.toString()]))),
          ));
        });

        model.link?.let((String it) {
          column.add(ListTile(
            onTap: () async {
              await canLaunch(it)
                  ? await launch(it)
                  : Logger.e("cannot open link $it");
            },
            leading: const Icon(
              Icons.link,
              size: 24,
              color: Colors.black,
            ),
            title: Text(it),
          ));
        });

        model.description.let((String it) {
          column.add(ListTile(
            leading: const Icon(
              Icons.description_outlined,
              size: 24,
              color: Colors.black,
            ),
            title: Text(it),
          ));
        });
      });
}
