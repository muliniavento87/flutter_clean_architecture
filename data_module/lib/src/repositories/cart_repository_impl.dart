import 'package:data_module/src/abstractions/cart_datasource.dart';
import 'package:data_module/src/abstractions/shop_api_datasource.dart';
import 'package:domain_module/models/book.dart';
import 'package:domain_module/repo/cart_repository.dart';
import 'package:domain_module/repo/shop_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CartRepositoryImpl extends CartRepository {
  ProviderRef ref;
  CartDataSource cartDataSource;


  CartRepositoryImpl(this.ref,this.cartDataSource);

  @override
  addToCart(Book book) {
    cartDataSource.addToCart(book);
  }

  @override
  StateProvider<List<Book>> currentCartProvider() {
    return cartDataSource.getCartProvider();
  }

  @override
  removeFromCart(Book book) {
    cartDataSource.removeToCart(book);
  }


}