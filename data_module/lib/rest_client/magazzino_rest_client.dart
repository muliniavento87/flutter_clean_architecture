import 'package:awesome_dio_interceptor/awesome_dio_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:common_module/flavors.dart';

///
class RestClient {

  ///
  Dio dioMagazzino() => Dio()
      //..options.baseUrl = F.config.baseUrlMagazzino
      ..options.connectTimeout = const Duration(seconds: 30)
      ..options.receiveTimeout = const Duration(seconds: 30)
      ..interceptors.add(AwesomeDioInterceptor(
        logRequestTimeout: F.appFlavor != Flavor.prod,
        logRequestHeaders: F.appFlavor != Flavor.prod,
        logResponseHeaders: F.appFlavor != Flavor.prod,
      ));

  ///
  Dio dioShop() => Dio()
      //..options.baseUrl = F.config.baseUrlShop
      ..options.connectTimeout = const Duration(seconds: 30)
      ..options.receiveTimeout = const Duration(seconds: 30)
      ..interceptors.add(AwesomeDioInterceptor(
        logRequestTimeout: F.appFlavor != Flavor.prod,
        logRequestHeaders: F.appFlavor != Flavor.prod,
        logResponseHeaders: F.appFlavor != Flavor.prod,
      ));


  /// es. gestione OAUTH con access_token e refresh_token
  setDioAuthorityManaging (Dio dioToCustomize) {
    dioToCustomize.interceptors.add(QueuedInterceptorsWrapper(
      /// onRequest
      onRequest: (
          RequestOptions options,
          RequestInterceptorHandler handler,
          ) async {
        String? token = "FAKE_ACCESS_TOKEN";
        if (token != null) {
          options.headers["Authorization"] = "Bearer $token";
        }
        return handler.next(options);
      },
      /// onError
      onError: (DioException error, handler) async {
        // Errore 401: provo refresh access_token forse scaduto
        if (error.response?.statusCode == 401) {
          try {
            String? currentAccessToken = "CURRENT_ACCESS_TOKEN";
            if(currentAccessToken != null) {
              // method to refresh token
              bool refreshTokenFailed = false;
              if(refreshTokenFailed) {
                // navigation to login page
              }
            }
          }
          catch(e) {
            print(e);
          }
          return handler.next(error);
        }
        // Gestione altri errori
        else {
          return handler.next(error);
        }
      }
    ));
  }
}