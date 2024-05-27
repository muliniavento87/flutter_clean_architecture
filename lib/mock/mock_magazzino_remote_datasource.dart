import 'package:data_module/datasources/magazzino_remote_datasource.dart';
import 'package:data_module/models/rest/RestBook.dart';

///
class MockMagazzinoRemoteDatasource implements MagazzinoRemoteDatasource {

  @override
  Future<List<$RestBook>> getCatalogo() async {
    const int ELEMS = 10;
    List<$RestBook> catalogo = [];

    for(var i=0;i<ELEMS;i++) {
      catalogo.add(newRestBook(i));
    }
    return catalogo;
  }

  ///
  $RestBook newRestBook(int index) {
    return $RestBook.fromJson({
      'id': index,
      'name': "Book Magazzino mocked $index",
      "status": 0,
      "price": 2.1,
    });
  }
}