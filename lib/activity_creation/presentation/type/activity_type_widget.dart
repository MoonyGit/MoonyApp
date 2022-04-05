import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:kt_dart/kt.dart';
import 'package:moony_app/activity_creation/resources/strings.dart';
import 'package:moony_app/common/base/domain/usecase/usecase.dart';
import 'package:moony_app/common/base/widgets/common.dart';
import 'package:moony_app/common/base/widgets/set_infos_base_widget.dart';
import 'package:moony_app/common/domain/activity/model/category.dart';
import 'package:moony_app/common/presentation/activity_type_mapper.dart';
import 'package:moony_app/common/presentation/validation_interactor.dart';
import 'package:moony_app/common/resources/assets.dart';
import 'package:moony_app/common/resources/strings.dart';
import 'package:moony_app/common/resources/themes.dart';
import 'package:moony_app/common/util/logger.dart';
import 'package:moony_app/common/util/widgets/chip_widgets.dart';

/// The phone otp page
class ActivityTypeWidget extends SetInfoBaseWidget<ActivityTypeController> {
  List<Widget> _getCategoryButtonList(BuildContext context) =>
      controller.categoryChoices.entries
          .mapIndexed(
            (int index, MapEntry<String, IconData> data) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: OutlinedButton.icon(
                icon: Icon(data.value),
                onPressed: () {
                  controller.onCategoryClicked(index);
                  _showBottomSheetActivityTypeChips(
                      context: context, categoryIndex: index,);
                },
                label: makeWidgetWithConstraints(
                  child: Text(
                    data.key.translate(),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          )
          .toList();

  Future<void> _showBottomSheetActivityTypeChips({
    required BuildContext context,
    required int categoryIndex,
  }) {
    controller.loadActivityTypeFromCategory(categoryId: categoryIndex);

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
              slivers: [
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
                            Text(
                              controller.currentCategory.value ?? "Category",
                              style: const TextStyle(fontSize: 28),
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
                              controller.currentActivityTypeList.value?.let(
                                (Set<String> items) => SingleChoiceChipWidget(
                                  chipChoices: items,
                                  chipSelected: controller.currentActivityType,
                                  listener: controller.onActivityTypeSelected,
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
                                        controller.currentCategory.value ??
                                            ""
                                                "Category",
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

  @override
  IconData getPageIconHint() => Icons.lightbulb;

  @override
  String getPageTextHint() => activityTypeTitle.translate();

  @override
  List<Widget> getWidgets(BuildContext context) =>
      _getCategoryButtonList(context);
}

/// ActivityType Controller
class ActivityTypeController extends ValidationInteractor {
  /// Public constructor
  ActivityTypeController(this._creationUseCase);

  final AsyncParamUseCase<ActivityType, void> _creationUseCase;

  /// current type if any
  final Rxn<String> currentCategory = Rxn<String>();
  late int _currentCategoryId;

  /// category as choice list for Chips
  final Map<String, IconData> categoryChoices =
      Map<String, IconData>.fromIterables(
    ActivityCategory.values.getTitle(),
    ActivityCategory.values.getIcon(),
  );

  final Rxn<Set<String>> currentActivityTypeList = Rxn();
  String? currentActivityType;

  /// onTypeChanged callback
  void onCategoryClicked(int index) {
    currentActivityTypeList.value = null;
  }

  void onActivityTypeSelected(int index, String type) {
    try {
      currentActivityType = currentActivityTypeList.value?.toList()[index];
      _creationUseCase(
          input: ActivityCategory.values
              .toList()[_currentCategoryId]
              .getActivities()
              .toList()[index]);
      validationController.add(true);
    } catch (e, s) {
      Logger.e(s);
    }
  }

  void loadActivityTypeFromCategory({required int categoryId}) {
    _currentCategoryId = categoryId;
    currentActivityTypeList.value =
        ActivityCategory.values.toList()[categoryId].getActivities().getTitle();
  }
}
