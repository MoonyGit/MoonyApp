import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:moony_app/common/resources/strings.dart';
import 'package:moony_app/common/resources/themes.dart';
import 'package:moony_app/profile/resources/strings.dart';

/// User profile banner widget
class UserProfileBannerWidget extends StatelessWidget {
  /// Constructor
  const UserProfileBannerWidget({
    required this.location,
    required this.froonysNumber,
    required this.activityNumber,
    required this.firstName,
    required this.lastName,
    required this.age,
    required this.pictures,
    required this.showEdit,
    required this.onClick,
  });

  /// User's location
  final String location;

  /// User's froonys
  final int froonysNumber;

  /// User's activity number
  final int activityNumber;

  /// User's first name
  final String firstName;

  /// User's last name
  final String lastName;

  /// User's age
  final String age;

  /// User's pictures
  final String pictures;

  /// Edit button visible
  final bool showEdit;

  /// On edit icon
  final void Function()? onClick;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(location),
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
                          "$froonysNumber",
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
                              imageUrl: pictures,
                              errorWidget: (
                                  BuildContext context,
                                  String url,
                                  dynamic fallback,
                                  ) =>
                              const CircularProgressIndicator(),
                              placeholder: (BuildContext context, String url) =>
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
                          "$activityNumber",
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
          "$firstName $lastName, $age",
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontSize: 24,
            color: Colors.black,
          ),
        ),
      ],
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
