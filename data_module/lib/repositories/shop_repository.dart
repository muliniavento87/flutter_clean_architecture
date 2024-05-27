import 'package:data_module/datasources/shop_local_datasource.dart';
import 'package:data_module/datasources/shop_remote_datasource.dart';
import 'package:data_module/models/realm/RealmBook.dart';
import 'package:data_module/models/rest/RestBook.dart';

///
class ShopRepository {

  static ShopRemoteDatasource remoteDatasource = ShopRemoteDatasource();
  static ShopLocalDatasource localDatasource = ShopLocalDatasource();

  ///
  Future<List<$RestBook>> getCatalogoDataRemote() async {
    return await remoteDatasource.getCatalogo();
  }

  ///
  Future<List<$RealmBook>> getCatalogoDataLocal() async {
    return [];
  }

  ///
  List<$RealmBook> saveCatalogoDataLocal() {
    return [];
  }
}
