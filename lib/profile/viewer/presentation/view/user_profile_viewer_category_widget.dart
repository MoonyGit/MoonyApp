import 'package:flutter/material.dart';

///User profile information tab summary row
class UserProfileItemWidget extends StatelessWidget {
  ///User profile information tab summary row constructor
  const UserProfileItemWidget({
    Key? key,
    required this.title,
    required this.icon,
    required this.id,
    required this.onClick,
  }) : super(key: key);

  /// Title of summary row
  final String title;

  /// Icon String of summary row
  final String icon;

  final String id;

  /// Click callback
  final void Function({required String key}) onClick;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        decoration: const BoxDecoration(border: Border(bottom: BorderSide())),
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
                top: 8,
                bottom: 8,
                right: 32,
              ),
              child: ImageIcon(
                AssetImage(icon),
                size: 24,
              ),
            ),
            Text(title),
            const Spacer(),
            IconButton(
              padding: const EdgeInsets.only(
              left: 16,
              top: 8,
              bottom: 8,
              right: 16,
            ),
              icon: const Icon(Icons.chevron_right),
              onPressed: () => onClick(key: id),
            ),
          ],
        ),
      ),
      onTap: () => onClick(key: id),
    );
  }
}
