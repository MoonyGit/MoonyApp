import 'package:moony_app/activity_swipe/domain/model/decision.dart';
import 'package:moony_app/activity_swipe/domain/repository/swipe_repositories_facade.dart';
import 'package:moony_app/common/base/domain/model/value_object.dart';
import 'package:moony_app/common/base/domain/usecase/usecase.dart';

/// Use case to set user swipe decision
class SetSwipeDecisionUseCase
    extends AsyncParamUseCase<SetSwipeDecisionParam, Failure?> {
  /// Constructor
  SetSwipeDecisionUseCase(this._swipeRepository);

  final ISwipeDecisionRepository _swipeRepository;

  @override
  Future<Failure?> call({required SetSwipeDecisionParam input}) =>
      _swipeRepository.setSwipeDecision(
          activityId: input.activityId,
          decision: input.decision);

  /// Swipe item number to load
  static const int swipeItemNumberToLoad = 10;
}

/// SetSwipeDecision usecase parameter
class SetSwipeDecisionParam {
  /// Constructor
  SetSwipeDecisionParam(
      {required this.activityId, required this.decision});

  /// Activity id
  final String activityId;

  /// DecisionState
  final Decision decision;
}
