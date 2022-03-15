import 'package:flutter/material.dart';
import 'package:moony_app/common/resources/themes.dart';

///User profile header for category
class UserProfileEditHeaderWidget extends StatelessWidget {
  ///User profile header for category
  const UserProfileEditHeaderWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  /// Title of the category
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.all(12),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: <Color>[AppTheme.secondary, AppTheme.primary],
        ),
      ),
      child: Text(
        title,
        style: const TextStyle(fontSize: 16.0, color: Colors.white),
      ),
    );
  }
}
