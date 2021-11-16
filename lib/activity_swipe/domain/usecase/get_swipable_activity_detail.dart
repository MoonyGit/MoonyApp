import 'package:dartz/dartz.dart';
import 'package:moony_app/activity_swipe/domain/model/swipe_item_detail.dart';
import 'package:moony_app/activity_swipe/domain/repository/swipe_repositories_facade.dart';
import 'package:moony_app/common/base/domain/model/value_object.dart';
import 'package:moony_app/common/base/domain/usecase/usecase.dart';

/// Use case to retrieve swipe activities
class GetSwipeItemDetailUseCase
    extends AsyncParamUseCase<String, Either<Failure, SwipeItemDetail>> {
  /// Constructor
  GetSwipeItemDetailUseCase(this._swipeRepository);

  final ISwipeItemRepository _swipeRepository;

  @override
  Future<Either<Failure, SwipeItemDetail>> call({required String input}) =>
      _swipeRepository.getSwipeItemById(id: input);
}
