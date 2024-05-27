import 'package:data_module/datasources/magazzino_local_datasource.dart';
import 'package:data_module/datasources/magazzino_remote_datasource.dart';
import 'package:data_module/models/realm/RealmBook.dart';
import 'package:data_module/models/rest/RestBook.dart';

///
class MagazzinoRepository {

  static MagazzinoRemoteDatasource remoteDatasource = MagazzinoRemoteDatasource();
  static MagazzinoLocalDatasource localDatasource = MagazzinoLocalDatasource();

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