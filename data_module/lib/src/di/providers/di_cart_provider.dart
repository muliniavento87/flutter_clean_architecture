import 'package:data_module/data_module.dart';
import 'package:data_module/src/abstractions/cart_datasource.dart';
import 'package:data_module/src/datasources/app_config_datasource_impl.dart';
import 'package:data_module/src/datasources/cart_datasource_impl.dart';
import 'package:data_module/src/di/providers/di_shared_pref_provider.dart';
import 'package:data_module/src/models/app_config_state.dart';
import 'package:domain_module/models/book.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final cartProvider = StateProvider<List<Book>>((ref) => []);

final cartDataSourceProvider = Provider<CartDataSource>((ref) {
  return CartDataSourceImpl(
    ref,
  );
});
