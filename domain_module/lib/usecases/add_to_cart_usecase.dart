import 'package:domain_module/models/book.dart';
import 'package:domain_module/repo/app_config_repository.dart';
import 'package:domain_module/repo/cart_repository.dart';
import 'package:domain_module/repo/shop_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddToCartUsecase {
  CartRepository cartRepository;
  //ShopRepository shopRepository;


  //AddToCartUsecase(this.cartRepository, this.shopRepository);
  AddToCartUsecase(this.cartRepository);

  void call(Book book) {
    cartRepository.addToCart(book);
  }
}
