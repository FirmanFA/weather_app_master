import 'package:dio/dio.dart';
import 'package:get/get.dart';


/// A class that holds intercepting logic for API related requests. This is
/// the first interceptor in case of both request and response.
///
/// Primary purpose is to handle token injection and response success validation
///
/// Since this interceptor isn't responsible for error handling, if an exception
/// occurs it is passed on the next [Interceptor] or to [Dio].
class ApiInterceptor extends Interceptor {

  ApiInterceptor() : super();

  /// This method intercepts an out-going request before it reaches the
  /// destination.
  ///
  /// [options] contains http request information and configuration.
  /// [handler] is used to forward, resolve, or reject requests.
  ///
  /// This method is used to inject any token/API keys in the request.
  ///
  /// The [RequestInterceptorHandler] in each method controls the what will
  /// happen to the intercepted request. It has 3 possible options:
  ///
  /// - [handler.next]/[super.onRequest], if you want to forward the request.
  /// - [handler.resolve]/[super.onResponse], if you want to resolve the
  /// - [handler.reject]/[super.onError], if you want to fail the request
  /// with your custom [DioException].
  @override
  Future<void> onRequest(
      RequestOptions options,
      RequestInterceptorHandler handler,
      ) async {

    ///Not used since this project don't store any user token
    ///
    // final userToken = await Get.find<SecureStorage>().getUserToken();
    // options.headers.addAll(
    //   <String, Object?>{'Authorization': 'Bearer $userToken'},
    // );

    if (options.extra.containsKey('requiresAuthToken')) {
      options.extra.remove('requiresAuthToken');
    }
    return handler.next(options);
  }


}