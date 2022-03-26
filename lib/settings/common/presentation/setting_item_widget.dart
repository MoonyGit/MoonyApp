import 'package:flutter/material.dart';

///User profile information tab summary row
class SettingItemWidget extends StatelessWidget {
  ///User profile information tab summary row constructor
  const SettingItemWidget({
    Key? key,
    required this.title,
    required this.listener,
  }) : super(key: key);

  /// Title of summary row
  final String title;

  /// Triggered when user click on item
  final void Function() listener;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 1),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: ListTile(
          title: Text(
            title,
          ),
          trailing: const Icon(
            Icons.navigate_next,
            size: 24,
            color: Colors.black,
          ),
          onTap: listener,
        ),
      ),
    );
  }
}
