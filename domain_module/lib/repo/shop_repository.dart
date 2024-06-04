import 'package:domain_module/models/book.dart';

abstract class ShopRepository {

  Future<List<Book>> getCatalogo();

  Future addToRemoteCart(Book book);
}
