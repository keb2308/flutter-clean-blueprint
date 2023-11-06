import 'package:clean_auth/src/infrastructure/auth/data_sources/local/tokens_local_storage.dart';
import 'package:dio/dio.dart';

/// [AccessTokenInterceptor] adds the access token to requests.
class AccessTokenInterceptor extends Interceptor {
  final TokensLocalStorage tokensDataSource;

  AccessTokenInterceptor(this.tokensDataSource);

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final accessToken = await tokensDataSource.getAccessToken();
    options.data.putIfAbsent("idToken", () => accessToken!);
    super.onRequest(options, handler);
  }
}
