import 'package:flutter/material.dart';
import 'package:moony_app/common/resources/strings.dart';
import 'package:moony_app/profile/activity/presentation/model/user_profile_activity_item_ui.dart';
import 'package:moony_app/profile/resources/strings.dart';

/// widget with delay for activity in user profile
class UserProfileActivityItemWidget extends StatelessWidget {
  /// Constructor
  const UserProfileActivityItemWidget({
    required this.item,
  });

  /// activity item
  final UserProfileActivityItemUi item;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(border: Border(bottom: BorderSide())),
      padding: const EdgeInsets.all(12),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "${item.activityName} - ${item.location}",
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "(${item.numberWaitingPartner}/${item.maxWaitingPartner} ${userProfileActivityPartnerWaiting.translate()})",
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.caption,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ElevatedButton(
              style: ButtonStyle(
                shape: ButtonStyleButton.allOrNull<OutlinedBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(64),
                  ),
                ),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                elevation: MaterialStateProperty.all<double>(0.0),
              ),
              onPressed: () => {},
              child: Text(
                userProfileActivityItemSelectable.translate(),
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
