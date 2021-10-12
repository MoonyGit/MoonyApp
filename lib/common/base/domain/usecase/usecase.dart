import 'package:flutter/cupertino.dart';

/// All usecases should inherit from one of those classes

/// Base class: return data
@immutable
abstract class ParamUseCase<Input, Output> {
  /// call method to use like
  /// Usecase u = UseCase();
  /// Output myOutput = u();
  Output call({required Input input});
}

/// Base class: return data
@immutable
abstract class UseCase<Output> extends ParamUseCase<void, Output> {
  /// call method to use like
  /// Usecase u = UseCase();
  /// Output myOutput = u();
  Output call({void input});
}

/// Support for async use case: return Future of data
@immutable
abstract class AsyncParamUseCase<Input, Output> {
  /// call method to use like
  /// Usecase u = UseCase();
  /// Output myOutput = u();
  Future<Output> call({required Input input});
}

/// Support for async use case: return Future of data
@immutable
abstract class AsyncUseCase<Output> extends AsyncParamUseCase<void, Output> {
  /// call method to use like
  /// Usecase u = UseCase();
  /// Output myOutput = u();
  @override
  Future<Output> call({void input});
}

/// Support for reactive use case: return Stream of data
@immutable
abstract class ReactiveParamUseCase<Input, Output> {
  /// call method to use like
  /// Usecase u = UseCase();
  /// Output myOutput = u();
  Stream<Output> call({required Input input});
}

/// Support for reactive use case: return Stream of data
@immutable
abstract class ReactiveUseCase<Output>
    extends ReactiveParamUseCase<void, Output> {
  /// call method to use like
  /// Usecase u = UseCase();
  /// Output myOutput = u();
  @override
  Stream<Output> call({void input});
}
