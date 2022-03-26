import 'package:flutter/material.dart';

///User profile information tab summary row
class SettingHeaderWidget extends StatelessWidget {
  ///User profile information tab summary row constructor
  const SettingHeaderWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  /// Title of summary row
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Text(
        title,
        textAlign: TextAlign.left,
        style: Theme.of(context).textTheme.titleMedium?.apply(
          color: Colors.white,
        ),
      ),
    );
  }
}
