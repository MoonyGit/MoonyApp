import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kt_dart/standard.dart';
import 'package:moony_app/common/resources/strings.dart';
import 'package:moony_app/common/resources/themes.dart';
import 'package:moony_app/profile/common/presentation/model/user_profile_banner_ui.dart';
import 'package:moony_app/profile/common/presentation/controller/user_profile_banner_controller.dart';
import 'package:moony_app/profile/resources/strings.dart';

/// User profile banner widget
class UserProfileBannerWidget extends GetView<UserProfileBannerController> {
  /// Constructor
  const UserProfileBannerWidget({
    required this.showEdit,
    required this.onClick,
  });

  /// Edit button visible
  final bool showEdit;

  /// On edit icon
  final void Function()? onClick;

  @override
  Widget build(BuildContext context) {
    return Obx(
          () =>
      controller.userInformation.value?.let(
            (UserProfileBannerUi p0) => Column(
          children: <Widget>[
            Text(p0.location),
            Stack(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(top: 40.0),
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[
                        AppTheme.secondary,
                        AppTheme.primary,
                        AppTheme.secondary
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              userProfileFroonys.translate(),
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 8.0),
                            ),
                            Text(
                              "${p0.froonysNumber}",
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Center(
                          child: InkWell(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(128),
                            ),
                            onTap: onClick,
                            child: Stack(
                              children: <Widget>[
                                CachedNetworkImage(
                                  imageBuilder: (
                                      BuildContext context,
                                      ImageProvider<Object> imageProvider,
                                      ) =>
                                      Container(
                                        width: 160,
                                        height: 160,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                            image: imageProvider,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                  imageUrl: p0.profilePhoto,
                                  errorWidget: (
                                      BuildContext context,
                                      String url,
                                      dynamic fallback,
                                      ) =>
                                  const CircularProgressIndicator(),
                                  placeholder:
                                      (BuildContext context, String url) =>
                                  const Center(
                                    child: CircularProgressIndicator(),
                                  ),
                                ),
                                if (showEdit) addEditButton()
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              userProfileActivity.translate(),
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 8.0),
                            ),
                            Text(
                              "${p0.activityNumber}",
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Text(
              "${p0.firstName} ${p0.lastName}, ${p0.age}",
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 24,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ) ??
          const CircularProgressIndicator(),
    );
  }

  /// Add edit button to the view
  Widget addEditButton() {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 48.0,
          width: 48.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey[200],
          ),
          child: const Icon(Icons.edit_rounded),
        ),
      ),
    );
  }
}
