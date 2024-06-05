import 'package:domain_module/models/book.dart';
import 'package:domain_module/repo/app_config_repository.dart';
import 'package:domain_module/repo/cart_repository.dart';
import 'package:domain_module/repo/shop_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RemoveFromCartUsecase {
  CartRepository cartRepository;
  //ShopRepository shopRepository;


  //AddToCartUsecase(this.cartRepository, this.shopRepository);
  RemoveFromCartUsecase(this.cartRepository);

  void call(Book book) {
    cartRepository.removeFromCart(book);
  }
}
