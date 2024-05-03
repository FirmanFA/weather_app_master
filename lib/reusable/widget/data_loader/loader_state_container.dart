import 'package:flutter/material.dart';
import 'package:weather_app_master/core/remote/api_result.dart';

class LoaderStateContainer<T> extends StatelessWidget {
  final UIState<T> state;
  final Widget Function(UiSuccess<T> data) success;
  final Widget Function() loading;
  final Widget Function(UiFailure<T> error) failure;

  const LoaderStateContainer({
    super.key,
    required this.state,
    required this.success,
    required this.loading,
    required this.failure,
  });

  @override
  Widget build(BuildContext context) {
    return state.when<Widget>(
        success: success, failure: failure, loading: loading);
  }
}
