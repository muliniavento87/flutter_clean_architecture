import 'package:data_module/datasources/shop_remote_datasource.dart';
import 'package:data_module/models/rest/RestBook.dart';

///
class MockShopRemoteDatasource implements ShopRemoteDatasource {

  @override
  Future<List<$RestBook>> getCatalogo() async {
    const int ELEMS = 10;
    List<$RestBook> catalogo = [];

    for(var i=0;i<ELEMS;i++) {
      catalogo.add(newRestBook(i));
    }
    return catalogo;
  }

  /// Crea un Book mockato
  $RestBook newRestBook(int index) {
    return $RestBook.fromJson({
      'id': index,
      'name': "Book Shop mocked $index",
      "status": 0,
      "price": 3.4,
    });
  }
}