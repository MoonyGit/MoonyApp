import 'package:dartz/dartz.dart';
import 'package:moony_app/activity_swipe/domain/model/swipe_item.dart';
import 'package:moony_app/activity_swipe/domain/repository/swipe_repositories_facade.dart';
import 'package:moony_app/common/base/domain/model/value_object.dart';
import 'package:moony_app/common/base/domain/usecase/usecase.dart';

/// Use case to retrieve swipe activities
class GetSwipeItemListUseCase
    extends AsyncUseCase<Either<Failure, List<SwipeItem>>> {
  /// Constructor
  GetSwipeItemListUseCase(this._swipeRepository);

  final ISwipeItemRepository _swipeRepository;

  @override
  Future<Either<Failure, List<SwipeItem>>> call({void input}) =>
      _swipeRepository.getSwipeItemList(number: swipeItemNumberToLoad);

  /// Swipe item number to load
  static const int swipeItemNumberToLoad = 10;
}
