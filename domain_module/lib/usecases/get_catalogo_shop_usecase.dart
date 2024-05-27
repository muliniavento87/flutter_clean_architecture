import 'package:common_module/utilities/check_connectivity.dart';
import 'package:data_module/models/realm/RealmBook.dart';
import 'package:data_module/models/rest/RestBook.dart';
import 'package:data_module/repositories/shop_repository.dart';
import 'package:domain_module/models/Book.dart';


///
class GetCatalogoShopUsecase {

  /// Recupera la lista di Book
  Future<List<Book>> call() async {
    List<Book> books = [];
    try {
      if(await CheckConnectivity().isOnline()) {
        List<$RestBook> rb = await ShopRepository().getCatalogoDataRemote();
        for(var r in rb) {
          books.add(Book.fromRestData(r));
        }
      }
      else {
        List<$RealmBook> rb = await ShopRepository().getCatalogoDataLocal();
        for(var r in rb) {
          books.add(Book.fromRealmData(r));
        }
      }
    }
    catch(e) {
      print(e);
    }
    return books;
  }

}