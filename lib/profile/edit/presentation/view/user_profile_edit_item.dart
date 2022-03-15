import 'package:flutter/material.dart';

///User profile information tab summary row
class UserProfileEditItemWidget extends StatelessWidget {
  ///User profile information tab summary row constructor
  const UserProfileEditItemWidget({
    Key? key,
    required this.title,
    required this.value,
    required this.onClick,
  }) : super(key: key);

  /// Title of summary row
  final String title;

  /// Value of summary row
  final String value;

  /// Click callback
  final void Function({required String key}) onClick;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Padding(
          padding:
          const EdgeInsets.only(left: 16, top: 8, bottom: 8, right: 32),
          child: Text(title),
        ),
        const Spacer(),
        Text(value),
        IconButton(
          padding:
          const EdgeInsets.only(left: 16, top: 8, bottom: 8, right: 16),
          onPressed: () {
            onClick(key: title);
          },
          icon: const Icon(Icons.chevron_right),
        ),
      ],
    );
  }
}
