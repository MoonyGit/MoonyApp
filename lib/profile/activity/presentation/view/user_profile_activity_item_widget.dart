import 'package:flutter/material.dart';
import 'package:kt_dart/standard.dart';
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
    return ListTile(
      title: Text("${item.activityName} - ${item.location}"),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "(${item.numberWaitingPartner}/${item.maxWaitingPartner} ${userProfileActivityPartnerWaiting.translate()})",
          ),
          if (item.delay < 5) addDelayItem(context: context)
        ],
      ),
      isThreeLine: item.delay < 5,
      trailing: ElevatedButton(
        style: ButtonStyle(
          shape: ButtonStyleButton.allOrNull<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(64),
            ),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
          elevation: MaterialStateProperty.all<double>(0.0),
        ),
        onPressed: () => {throw NotImplementedException()},
        child: Text(
          userProfileActivityItemSelectable.translate(),
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  /// Add line to display the delay remaining of activity
  Widget addDelayItem({required BuildContext context}) {
    return Padding(
      padding: const EdgeInsets.only(top: 4),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const Icon(Icons.timer, color: Colors.red, size: 16),
          Text(
            "${item.delay} $userProfileActivityDelay",
            style: Theme.of(context).textTheme.bodyText2?.copyWith(
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
