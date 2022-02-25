import 'package:flutter/material.dart';
import 'package:moony_app/common/resources/themes.dart';

///User profile header for category
class UserProfileHeaderWidget extends StatelessWidget {
  ///User profile header for category
  const UserProfileHeaderWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  /// Title of the category
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: <Color>[AppTheme.secondary, AppTheme.primary],
        ),
      ),
      child: Text(
        title,
        style: Theme.of(context).textTheme.subtitle1?.copyWith(
          color: Colors.white,
        ),
      ),
    );
  }
}
