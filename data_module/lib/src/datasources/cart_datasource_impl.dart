import 'package:data_module/data_module.dart';
import 'package:data_module/src/abstractions/cart_datasource.dart';
import 'package:data_module/src/di/providers/di_app_config_provider.dart';
import 'package:data_module/src/di/providers/di_cart_provider.dart';
import 'package:domain_module/models/book.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CartDataSourceImpl implements CartDataSource {
  ProviderRef ref;
  CartDataSourceImpl(this.ref);

  @override
  addToCart(Book book) {
    var pr = ref.read(cartProvider.notifier);
    pr.state = [...pr.state,book];
  }

  @override
  clearAll() {
    ref.read(cartProvider.notifier).state = [];
  }

  @override
  StateProvider<List<Book>> getCartProvider() {
    return cartProvider;
  }

  @override
  removeToCart(Book book) {
    var pr = ref.read(cartProvider.notifier);
    pr.state = pr.state.where((element) => element != book).toList();
  }
}

final _isDarkModeProvider = Provider<bool>((ref) {
  return ref.watch(appConfigProvider).isDark;
});