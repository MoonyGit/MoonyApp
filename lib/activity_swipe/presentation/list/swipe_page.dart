import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:moony_app/activity_swipe/presentation/list/swipe_card_model.dart';
import 'package:moony_app/activity_swipe/presentation/list/swipe_card_widget.dart';
import 'package:moony_app/activity_swipe/presentation/list/swipe_controller.dart';
import 'package:moony_app/activity_swipe/resources/assets.dart';
import 'package:moony_app/activity_swipe/resources/strings.dart';
import 'package:moony_app/common/base/widgets/constrained_page.dart';
import 'package:moony_app/common/resources/strings.dart';
import 'package:moony_app/common/resources/themes.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:swipable_stack/src/model/swipe_properties.dart';
import 'package:swipable_stack/swipable_stack.dart';

/// The swipe page
class SwipePage extends ConstrainedPage<SwipeController> {
  /// Constructor
  const SwipePage({Key? key}) : super(key: key);

  static const double _bottomAreaHeight = 100;
  static const EdgeInsets _padding =
      EdgeInsets.only(top: 50, left: 20, right: 20);

  Widget _flipTransitionBuilder(Widget widget, Animation<double> animation) {
    final Animation<double> rotateAnim =
        Tween<double>(begin: pi, end: 0.0).animate(animation);
    return AnimatedBuilder(
      animation: rotateAnim,
      child: widget,
      builder: (BuildContext context, Widget? widget) {
        final bool isUnder =
            ValueKey<bool>(controller.isFontCard.value) != widget?.key;
        double tilt = ((animation.value - 0.5).abs() - 0.5) * 0.003;
        tilt *= isUnder ? -1.0 : 1.0;
        final double value =
            isUnder ? min(rotateAnim.value, pi / 2) : rotateAnim.value;
        return Transform(
          transform: (Matrix4.rotationY(value)..setEntry(3, 0, tilt)),
          alignment: Alignment.center,
          child: widget,
        );
      },
    );
  }

  @override
  Widget buildWidget(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => controller.swipeCardList.isEmpty
            ? const Center(child: CircularProgressIndicator())
            : Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: <Widget>[
                  SwipableStack(
                    itemCount: controller.swipeCardList.length,
                    builder:
                        (BuildContext context, ItemSwipeProperties properties) {
                      return Padding(
                        padding: _padding,
                        child: Center(
                          child: Obx(
                            () => AnimatedSwitcher(
                              transitionBuilder: _flipTransitionBuilder,
                              layoutBuilder:
                                  (Widget? widget, List<Widget> list) => Stack(
                                children: <Widget>[widget!, ...list],
                              ),
                              duration: const Duration(milliseconds: 600),
                              // switchInCurve: Curves.easeInBack,
                              // switchOutCurve: Curves.easeOutBack.flipped,
                              child: controller.isFontCard.value
                                  ? _showFrontCard(
                                      pageController: controller
                                          .swipeCardList.entries
                                          .elementAt(properties.index)
                                          .key,
                                      cardHeight:
                                          properties.constraints.maxHeight,
                                      activityCategoryImage: controller
                                          .swipeCardList.entries
                                          .elementAt(properties.index)
                                          .value
                                          .activityCategoryImage,
                                      infoList: controller.swipeCardList.entries
                                          .elementAt(properties.index)
                                          .value
                                          .userImagesWithInfo,
                                      onTopCardTap: ({required bool isRight}) {
                                        controller.onTopCardTap(
                                          cardIndex: properties.index,
                                          isRight: isRight,
                                        );
                                      },
                                      onActivityCategoryImageTap: () {
                                        controller.flipCard(
                                          cardIndex: properties.index,
                                        );
                                      },
                                      onInfoCardTap: () {
                                        controller.onInfoCardTap(
                                          cardIndex: properties.index,
                                        );
                                      },
                                      onDotTap: ({required int pageIndex}) {
                                        controller.onDotClicked(
                                          cardIndex: properties.index,
                                          cardPageIndex: pageIndex,
                                        );
                                      },
                                    )
                                  : _showBackCard(
                                      onPeopleImageTap: () {
                                        controller.flipCard(
                                          cardIndex: properties.index,
                                        );
                                      },
                                      onInfoCardTap: () {
                                        controller.onInfoCardTap(
                                          cardIndex: properties.index,
                                        );
                                      },
                                      cardHeight:
                                          properties.constraints.maxHeight,
                                      info: controller.swipeCardList.entries
                                          .elementAt(properties.index)
                                          .value
                                          .activityImagesWithInfo,
                                    ),
                            ),
                          ),
                        ),
                      );
                    },
                    onWillMoveNext: (int index, SwipeDirection direction) {
                      return true;
                    },
                    onSwipeCompleted: (int index, SwipeDirection direction) {
                      controller.onSwipeCompleted(
                        cardIndex: index,
                        direction: direction,
                      );
                    },
                    stackClipBehaviour: Clip.none,
                    controller: controller.swipableStackController,
                    overlayBuilder: (
                      BuildContext context,
                      OverlaySwipeProperties properties,
                    ) {
                      final double opacity = min(properties.swipeProgress, 1.0);

                      final bool isRight =
                          properties.direction == SwipeDirection.right;
                      final bool isLeft =
                          properties.direction == SwipeDirection.left;
                      final bool isUp =
                          properties.direction == SwipeDirection.up;
                      return Padding(
                        padding: _padding * 3,
                        child: Stack(
                          children: <Widget>[
                            Opacity(
                              opacity: isRight ? opacity : 0,
                              child: Text(swipeOverlayTextRight.translate()),
                            ),
                            Opacity(
                              opacity: isLeft ? opacity : 0,
                              child: Text(
                                swipeOverlayTextLeft.translate(),
                              ),
                            ),
                            Opacity(
                              opacity: isUp ? opacity : 0,
                              child: Text(
                                swipeOverlayTextUp.translate(),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: _bottomAreaHeight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        IconButton(
                          onPressed: () {
                            controller.swipableStackController
                                .next(swipeDirection: SwipeDirection.left);
                          },
                          iconSize: 80,
                          icon: Image.asset(
                            moonySwipeLeft,
                            width: 80,
                            height: 80,
                          ),
                        ),
                        IconButton(
                          iconSize: 80,
                          icon: Image.asset(
                            moonySwipeRight,
                            width: 80,
                            height: 80,
                          ),
                          onPressed: () {
                            controller.swipableStackController.next(
                              swipeDirection: SwipeDirection.right,
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
      ),
    );
  }

  Widget _showBackCard({
    required CardInfoModel info,
    required double cardHeight,
    required Function() onInfoCardTap,
    required Function() onPeopleImageTap,
  }) =>
      Card(
        key: const ValueKey<bool>(false),
        shadowColor: AppTheme.tertiary,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80)),
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: <Widget>[
            SwipeCardWidget(
              model: info,
              cardHeight: cardHeight,
              infoCardTapCallback: onInfoCardTap,
            ),
            Align(
              alignment: Alignment.topRight,
              child: InkWell(
                onTap: onPeopleImageTap,
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: const BoxDecoration(
                    color: AppTheme.primaryHalfOpacity,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(180),
                      topLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5),
                    ),
                  ),
                  child: const Align(
                    child: Icon(
                      Icons.person,
                      size: 48,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );

  Widget _showFrontCard({
    required PageController pageController,
    required IconData activityCategoryImage,
    required List<CardInfoModel> infoList,
    required double cardHeight,
    required Function({required bool isRight}) onTopCardTap,
    required Function() onInfoCardTap,
    required Function() onActivityCategoryImageTap,
    required Function({required int pageIndex}) onDotTap,
  }) =>
      Card(
        key: const ValueKey<bool>(true),
        shadowColor: AppTheme.tertiary,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80)),
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: <Widget>[
            PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: pageController,
              children: _createUserCardPageChildrenFromList(
                userImagesWithInfos: infoList,
                cardHeight: cardHeight,
                topCardTapCallback: onTopCardTap,
                infoCardTapCallback: onInfoCardTap,
              ),
            ),
            SmoothPageIndicator(
              controller: pageController,
              count: infoList.length,
              onDotClicked: (int pageIndex) => onDotTap(pageIndex: pageIndex),
              effect: const WormEffect(
                activeDotColor: AppTheme.primary,
                dotWidth: 50,
                dotHeight: 10,
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: InkWell(
                onTap: onActivityCategoryImageTap,
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: const BoxDecoration(
                    color: AppTheme.primaryHalfOpacity,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(180),
                      topLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5),
                    ),
                  ),
                  child: Align(
                    child: Icon(
                      activityCategoryImage,
                      size: 48,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );

  List<Widget> _createUserCardPageChildrenFromList({
    required List<CardInfoModel> userImagesWithInfos,
    required double cardHeight,
    required Function({required bool isRight}) topCardTapCallback,
    required Function() infoCardTapCallback,
  }) {
    return userImagesWithInfos
        .map(
          (CardInfoModel item) => SwipeCardWidget(
            model: item,
            cardHeight: cardHeight,
            topCardTapCallback: topCardTapCallback,
            infoCardTapCallback: infoCardTapCallback,
          ),
        )
        .toList();
  }
}
