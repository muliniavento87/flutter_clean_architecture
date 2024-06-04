import 'package:data_module/src/abstractions/shop_api_datasource.dart';
import 'package:data_module/src/di/providers/di_app_config_provider.dart';
import 'package:data_module/src/di/providers/di_cart_provider.dart';
import 'package:data_module/src/di/providers/di_shared_pref_provider.dart';
import 'package:data_module/src/di/providers/di_shop_provider.dart';
import 'package:data_module/src/repositories/app_config_repository_impl.dart';
import 'package:data_module/src/repositories/cart_repository_impl.dart';
import 'package:data_module/src/repositories/shop_api_repository_impl.dart';
import 'package:domain_module/repo/app_config_repository.dart';
import 'package:domain_module/repo/cart_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Repositories del data_module (espongono
/// le risorse con i providers)

//to manage base app configuration
final appConfigRepositoryProvider = Provider<AppConfigRepository>((ref) {
  return AppConfigRepositoryImpl(
      ref,
      sharedPrefDataSource: ref.read(sharedPrefDataSourceProvider),
      appConfigDataSource: ref.read(appConfigDataSourceProvider)
  );
});

///
final isDarkModeProvider = Provider<bool>((ref) {
  return ref.watch(ref.read(appConfigRepositoryProvider).isDarkModeProvider());
});

///
final shopApiRepositoryProvider = Provider<ShopApiRepositoryImpl>((ref) {
  return ShopApiRepositoryImpl(
    ref,
    shopApiDatasource: ref.read(shopDatasourceProvider)
  );
});


final cartRepositoryProvider = Provider<CartRepository>((ref) {
  return CartRepositoryImpl(
      ref,
    ref.read(cartDataSourceProvider)
  );
});
