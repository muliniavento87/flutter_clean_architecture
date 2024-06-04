import 'package:domain_module/models/book.dart';

abstract class ShopApiDatasource {
  Future<List<Book>> getCatalogo();
}