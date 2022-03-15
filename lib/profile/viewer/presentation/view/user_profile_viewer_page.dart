import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kt_dart/standard.dart';
import 'package:moony_app/common/resources/assets.dart';
import 'package:moony_app/common/resources/strings.dart';
import 'package:moony_app/common/resources/themes.dart';
import 'package:moony_app/common/util/gradient_text.dart';
import 'package:moony_app/common/util/widgets/chip_widgets.dart';
import 'package:moony_app/profile/common/banner/presentation/view/user_profile_banner_widget.dart';
import 'package:moony_app/profile/common/header/presentation/user_profile_header.dart';
import 'package:moony_app/profile/resources/strings.dart';
import 'package:moony_app/profile/viewer/presentation/controller/user_profile_viewer_controller.dart';
import 'package:moony_app/profile/viewer/presentation/model/user_profile_preference_ui.dart';
import 'package:moony_app/profile/viewer/presentation/model/user_profile_ui_item.dart';
import 'package:moony_app/profile/viewer/presentation/view/user_profile_description_widget.dart';
import 'package:moony_app/profile/viewer/presentation/view/user_profile_viewer_category_widget.dart';

///User profile viewer page
class UserProfileViewerPage extends GetView<UserProfileViewerController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: userProfileSetting,
            onPressed: () {
              controller.goToSetting();
            },
          ),
        ],
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          userProfileTitle.translate(),
          style: const TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          UserProfileBannerWidget(
            showEdit: true,
            onClick: controller.goToUserProfileEdit,
          ),
          const Padding(padding: EdgeInsets.only(top: 8, bottom: 8)),
          Obx(
                () =>
            controller.categoryItems.value?.let(
                  (List<UserProfileUi> list) => Expanded(
                child: ListView.builder(
                  itemCount: list.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return list.elementAt(index).when(
                      header: (String title) =>
                          UserProfileHeaderWidget(title: title),
                      item: (String title, String icon, String id) =>
                          UserProfileItemWidget(
                            title: title,
                            icon: icon,
                            id: id,
                            onClick: ({required String key}) {
                              _showBottomSheetChips(
                                context: context,
                                key: key,
                              );
                            },
                          ),
                      description: (String content) =>
                          UserProfileDescriptionWidget(
                            content: content,
                          ),
                    );
                  },
                ),
              ),
            ) ??
                Container(),
          ),
        ],
      ),
    );
  }

  Future<void> _showBottomSheetChips({
    required BuildContext context,
    required String key,
  }) {
    controller.loadUserProfilePreferences(key: key);

    return showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(64),
          topRight: Radius.circular(64),
        ),
      ),
      builder: (BuildContext context) {
        return DraggableScrollableSheet(
          expand: false,
          builder: (BuildContext context, ScrollController scrollController) {
            return CustomScrollView(
              controller: scrollController,
              slivers: <Widget>[
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding:
                        const EdgeInsets.only(right: 16, left: 16, top: 16),
                        child: Row(
                          children: <Widget>[
                            IconButton(
                              icon: const Icon(Icons.arrow_back),
                              color: Colors.black,
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                            const Spacer(),
                            GradientText(
                              text: key,
                              style: const TextStyle(fontSize: 28),
                              gradient: const LinearGradient(
                                colors: <Color>[
                                  AppTheme.secondary,
                                  AppTheme.primary,
                                ],
                              ),
                            ),
                            const Spacer(),
                            IconButton(
                              icon: const Icon(Icons.check),
                              color: Colors.black,
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: Obx(
                              () =>
                          controller.userProfilePreferences.value?.let(
                                (List<UserProfilePreferencesUi> items) =>
                                MultipleChoiceChipWidget(
                                  selectedItems: items
                                      .where(
                                        (UserProfilePreferencesUi element) =>
                                    element.isSelected == true,
                                  )
                                      .map((UserProfilePreferencesUi e) => e.id)
                                      .toSet(),
                                  chipChoices: items
                                      .map(
                                        (UserProfilePreferencesUi e) => e.title,
                                  )
                                      .toSet(),
                                  listener: (Map<int, String> selectedItems) =>
                                      controller.onPreferenceChipsClick(
                                        selectedItems,
                                      ),
                                ),
                          ) ??
                              const CircularProgressIndicator(),
                        ),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Stack(
                          children: <Widget>[
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding:
                                const EdgeInsets.only(left: 32, right: 80),
                                child: Container(
                                  width: double.infinity,
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(16)),
                                    gradient: LinearGradient(
                                      colors: <Color>[
                                        AppTheme.secondary,
                                        AppTheme.primary
                                      ],
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Obx(
                                          () => Text(
                                        controller.moonyMessage.value,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                        ),
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const Align(
                              alignment: Alignment.bottomRight,
                              child: Padding(
                                padding: EdgeInsets.only(right: 16, bottom: 16),
                                child: ImageIcon(
                                  AssetImage(AppAsset.moonyShadow),
                                  size: 96,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
