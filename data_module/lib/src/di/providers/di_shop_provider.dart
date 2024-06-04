import 'package:awesome_dio_interceptor/awesome_dio_interceptor.dart';
import 'package:data_module/data_module.dart';
import 'package:data_module/src/abstractions/shop_api_datasource.dart';
import 'package:data_module/src/datasources/shop_api_datasource_impl.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// ----- Client Api REST -----

/// provider dio
final dioShopProvider = Provider<Dio>((ref) {
  return Dio()
    ..options.baseUrl = F.config.baseUrl
    ..options.connectTimeout = const Duration(seconds: 30)
    ..options.receiveTimeout = const Duration(seconds: 30)
    ..interceptors.add(AwesomeDioInterceptor(
    logRequestTimeout: F.appFlavor != Flavor.prod,
    logRequestHeaders: F.appFlavor != Flavor.prod,
    logResponseHeaders: F.appFlavor != Flavor.prod,
    ));
});

///
final shopDatasourceProvider = Provider<ShopApiDatasource>((ref) {
  return ShopApiDatasourceImpl(
    ref,
    client: ref.read(dioShopProvider)
  );
});