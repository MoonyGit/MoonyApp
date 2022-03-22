import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kt_dart/standard.dart';
import 'package:moony_app/activity_swipe/presentation/list/swipe_card_model.dart';
import 'package:moony_app/common/resources/themes.dart';
import 'package:moony_app/common/util/logger.dart';
import 'package:url_launcher/url_launcher.dart';

/// Swipe card widget
class SwipeCardWidget extends StatelessWidget {
  /// Constructor
  const SwipeCardWidget({
    required this.model,
    required this.cardHeight,
    this.topCardTapCallback,
    required this.infoCardTapCallback,
  }) : super(key: null);

  /// Card model
  final CardInfoModel model;

  /// Card height
  final double cardHeight;

  /// Top card tap callback
  final Function({required bool isRight})? topCardTapCallback;

  /// Info area card tap callback
  final Function() infoCardTapCallback;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomStart,
      children: <Widget>[
        Container(
          foregroundDecoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: <double>[0.0, 0.6, 1.0],
              colors: <Color>[
                Colors.transparent,
                Color.fromARGB(0x5, 0, 0, 0),
                Colors.black
              ],
            ),
          ),
          child: Image.network(
            model.imageUrl,
            height: cardHeight,
            fit: BoxFit.cover,
          ),
        ),
        Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: InkWell(
                      onTap: topCardTapCallback?.let(
                        (Function({required bool isRight}) callback) => () {
                          Logger.d("single tap!");
                          callback(isRight: false);
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: topCardTapCallback?.let(
                        (Function({required bool isRight}) callback) => () {
                          Logger.d("single tap!");
                          callback(isRight: true);
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: InkWell(
                onTap: infoCardTapCallback,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: model.when<Widget>(
                    mainInfo: (
                      String imageUrl,
                      IconData activityCategoryImage,
                      String userName,
                      int userAge,
                      bool userVerified,
                      String activityName,
                      int activityTargetNumber,
                      String? activityLocation,
                      DateTime? activityTargetDate,
                    ) =>
                        _createActivityInfoWidget(
                      userName,
                      userAge,
                      userVerified,
                      activityName,
                      activityCategoryImage,
                      activityTargetNumber,
                      activityLocation,
                      activityTargetDate,
                    ),
                    userHobby: (
                      String imageUrl,
                      String userName,
                      int userAge,
                      bool userVerified,
                      List<String> userHobbyList,
                    ) =>
                        _createUserHobbyWidget(
                      userName,
                      userAge,
                      userVerified,
                      userHobbyList,
                    ),
                    userInfo: (
                      String imageUrl,
                      String userName,
                      int userAge,
                      bool userVerified,
                      String location,
                      int distance,
                    ) =>
                        _createUserInfoWidget(
                      userName,
                      userAge,
                      userVerified,
                      location,
                      distance,
                    ),
                    activityDesc: (
                      String imageUrl,
                      String activityName,
                      IconData activityCategoryImage,
                      String? activityMoreInfoLink,
                      String activityDesc,
                    ) =>
                        _createActivityDescWidget(
                      activityName,
                      activityMoreInfoLink,
                      activityDesc,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(),
            )
          ],
        ),
      ],
    );
  }

  Widget _createActivityDescWidget(
    String activityName,
    String? activityMoreInfoLink,
    String activityDesc,
  ) =>
      Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _createActivityHeader(
            activityName: activityName,
            moreInfoLink: activityMoreInfoLink,
          ),
          _createOpacityChipWith(
            label: activityDesc,
            backgroundColor: Colors.white70.withOpacity(0.8),
          ),
        ],
      );

  Widget _createUserHobbyWidget(
    String userName,
    int userAge,
    bool userVerified,
    List<String> hobbyList,
  ) =>
      Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _createUserHeader(
            userName: userName,
            userAge: userAge,
            userVerified: userVerified,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Wrap(
                spacing: 5,
                runSpacing: 10,
                children: <Widget>[
                  ...hobbyList
                      .map(
                        (String hobby) => _createOpacityChipWith(
                          label: hobby,
                          backgroundColor: Colors.white70.withOpacity(0.8),
                        ),
                      )
                      .toList()
                ],
              ),
            ),
          ),
        ],
      );

  Widget _createUserInfoWidget(
    String userName,
    int userAge,
    bool userVerified,
    String location,
    int distance,
  ) =>
      Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _createUserHeader(
            userName: userName,
            userAge: userAge,
            userVerified: userVerified,
          ),
          _createOpacityChipWith(
            label: "$location ($distance km from you)",
            avatar: const Icon(Icons.location_on_outlined, size: 24),
            backgroundColor: Colors.white70.withOpacity(0.8),
          ),
        ],
      );

  Widget _createActivityInfoWidget(
    String userName,
    int userAge,
    bool userVerified,
    String activityName,
    IconData activityCategoryImage,
    int activityTargetNumber,
    String? activityLocation,
    DateTime? activityTargetDate,
  ) =>
      Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _createUserHeader(
            userName: userName,
            userAge: userAge,
            userVerified: userVerified,
          ),
          _createOpacityChipWith(
            label: activityName,
            avatar: Icon(
              activityCategoryImage,
              size: 24,
            ),
            backgroundColor: Colors.white70.withOpacity(0.8),
          ),
          _createOpacityChipWith(
            label: "$activityTargetNumber peoples",
            avatar: const Icon(
              Icons.people,
              size: 24,
            ),
            backgroundColor: Colors.white70.withOpacity(0.8),
          ),
        ].also((List<Widget> column) {
          if (activityLocation != null) {
            column.add(
              _createOpacityChipWith(
                label: activityLocation,
                avatar: const Icon(Icons.location_on_outlined, size: 24),
                backgroundColor: Colors.white70.withOpacity(0.8),
              ),
            );
          }
        }),
      );

  Widget _createActivityHeader({
    required String activityName,
    String? moreInfoLink,
  }) =>
      Row(
        children: <Widget>[
          Text(
            activityName,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 32,
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(2, 2),
                  blurRadius: 1.5,
                  color: Colors.black38,
                )
              ],
            ),
          ),
        ].also((List<Widget> row) {
          if (moreInfoLink != null) {
            row.add(
              IconButton(
                onPressed: () async {
                  await canLaunch(moreInfoLink)
                      ? await launch(moreInfoLink)
                      : Logger.e("cannot open link $moreInfoLink");
                },
                icon: const Icon(
                  Icons.link,
                  size: 24,
                  color: Colors.white,
                ),
              ),
            );
          }
        }),
      );

  Widget _createUserHeader({
    required String userName,
    required int userAge,
    required bool userVerified,
  }) =>
      Row(
        children: <Widget>[
          Text(
            "$userName , $userAge ans",
            style: const TextStyle(
              color: Colors.white,
              fontSize: 32,
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(2, 2),
                  blurRadius: 1.5,
                  color: Colors.black38,
                )
              ],
            ),
          ),
        ].also((List<Widget> row) {
          if (userVerified) {
            row.add(
              const Icon(
                Icons.verified,
                color: AppTheme.primary,
              ),
            );
          }
        }),
      );

  Widget _createOpacityChipWith({
    required String label,
    Widget? avatar,
    Color backgroundColor = Colors.white70,
  }) =>
      Theme(
        data: Theme.of(Get.context!).copyWith(canvasColor: Colors.transparent),
        child: Chip(
          label: Padding(
            padding: const EdgeInsets.all(5),
            child: Text(
              label,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          avatar: avatar,
          backgroundColor: backgroundColor,
        ),
      );
}
