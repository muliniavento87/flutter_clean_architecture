
import 'package:domain_module/models/book.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class CartRepository{

  addToCart(Book book);

  removeFromCart(Book book);

  StateProvider<List<Book>> currentCartProvider();

}