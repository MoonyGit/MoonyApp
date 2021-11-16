import 'dart:core';

import 'package:moony_app/activity_swipe/domain/model/swipe_activity_info.dart';
import 'package:moony_app/activity_swipe/domain/model/swipe_creator_info.dart';
import 'package:moony_app/common/base/domain/model/entity.dart';

/// SwipeItem entity class
class SwipeItem extends Entity<String> {
  /// Constructor
  SwipeItem({required this.id, required this.creator, required this.activity});

  @override
  final String id;

  /// User
  final SwipeCreatorInfo creator;

  /// Activity
  final SwipeActivityInfo activity;
}
