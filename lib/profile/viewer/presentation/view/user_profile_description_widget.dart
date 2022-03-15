import 'package:flutter/material.dart';

/// User profile description widget class
class UserProfileDescriptionWidget extends StatelessWidget {
  /// User profile description
  const UserProfileDescriptionWidget({
    Key? key,
    required this.content,
  }) : super(key: key);

  /// Title of the category
  final String content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      child: Text(
        content,
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
        style: Theme.of(context).textTheme.bodyText2?.copyWith(
          color: Colors.black,
        ),
      ),
    );
  }
}
