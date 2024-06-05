import 'package:data_module/src/flavors.dart';
import 'package:domain_module/models/book.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class CartDataSource {

  StateProvider<List<Book>> getCartProvider();

  addToCart(Book book);

  removeFromCart(Book book);

  clearAll();
}