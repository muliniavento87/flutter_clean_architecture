import 'package:data_module/src/abstractions/shop_api_datasource.dart';
import 'package:domain_module/models/book.dart';
import 'package:domain_module/repo/shop_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ShopApiRepositoryImpl extends ShopRepository {
  ShopApiDatasource shopApiDatasource;
  ProviderRef ref;

  ShopApiRepositoryImpl(this.ref, {required this.shopApiDatasource});


  @override
  Future<List<Book>> getCatalogo() {
    return shopApiDatasource.getCatalogo();
  }

  @override
  Future addToRemoteCart(Book book) {
    // TODO: implement addToRemoteCart
    throw UnimplementedError();
  }
}