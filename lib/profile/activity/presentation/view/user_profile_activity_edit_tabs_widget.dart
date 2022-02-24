import 'package:flutter/material.dart';
import 'package:moony_app/common/resources/themes.dart';

/// Widget for redirect to somewhere from a tabs
class UserProfileEditTabsWidget extends StatelessWidget {
  /// Constructor
  const UserProfileEditTabsWidget({
    required this.onTabsClick,
  });

  /// On tabs click
  final void Function() onTabsClick;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 170),
      child: Container(
        width: 56,
        height: 48,
        decoration: const BoxDecoration(
          color: Color(0xffdcdcdc),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(32),
            bottomRight: Radius.circular(32),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
          child: ElevatedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all(const CircleBorder()),
              backgroundColor: MaterialStateProperty.all(AppTheme.primary),
            ),
            onPressed: () {
              onTabsClick();
            },
            child: const Icon(
              Icons.edit_rounded,
              size: 24,
            ),
          ),
        ),
      ),
    );
  }
}
