import 'package:data_module/src/abstractions/cart_datasource.dart';
import 'package:data_module/src/abstractions/shop_api_datasource.dart';
import 'package:domain_module/models/book.dart';
import 'package:domain_module/repo/cart_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CartRepositoryImpl extends CartRepository {
  ProviderRef ref;
  CartDataSource cartDataSource;
  //ShopApiDatasource shopDataSource;


  //CartRepositoryImpl(this.ref, this.cartDataSource, this.shopDataSource);
  CartRepositoryImpl(this.ref, this.cartDataSource);

  /// aggiunge un book al carrello
  @override
  addToCart(Book book) {
    //shopDataSource.addToRemoteCart(book);
    cartDataSource.addToCart(book);
  }

  @override
  StateProvider<List<Book>> currentCartProvider() {
    return cartDataSource.getCartProvider();
  }

  @override
  removeFromCart(Book book) {
    cartDataSource.removeFromCart(book);
  }


}