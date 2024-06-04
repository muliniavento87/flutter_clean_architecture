import 'package:data_module/src/abstractions/app_config_datasource.dart';
import 'package:data_module/src/abstractions/shared_pref_datasource.dart';
import 'package:domain_module/repo/shop_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ShopRepositoryImpl extends ShopRepository {
  SharedPrefDataSource sharedPrefDataSource;
  AppConfigDataSource appConfigDataSource;
  ProviderRef ref;

  ShopRepositoryImpl(this.ref, {required this.sharedPrefDataSource, required this.appConfigDataSource});


  @override
  void getCatalogo() {

  }
}