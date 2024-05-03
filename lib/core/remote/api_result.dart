
// part 'ui_state.g.dart';

sealed class UIState<T> extends SealedResult<T> {}

class UiSuccess<T> extends UIState<T> {
  T value;

  UiSuccess(this.value);
}

class UiFailure<T> extends UIState<T> {
  String errorMessage;
  UiFailure(this.errorMessage);
}

class UiLoading<T> extends UIState<T> {}

class SealedResult<T> {
  R when<R>({
    required R Function(UiSuccess<T> data) success,
    required R Function(UiFailure<T> error) failure,
    required R Function() loading,
  }) {
    if (this is UiSuccess<T>) {
      return success(this as UiSuccess<T>);
    }
    if (this is UiFailure<T>) {
      return failure(this as UiFailure<T>);
    }
    if (this is UiLoading<T>) {
      return loading();
    }
    throw Exception('Should never get here');
  }
}