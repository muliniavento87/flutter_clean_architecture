import 'package:common_module/flavors.dart';
import 'package:data_module/repositories/magazzino_repository.dart';
import 'package:data_module/repositories/shop_repository.dart';
import 'package:secondo_progetto/mock/mock_shop_remote_datasource.dart';
import 'package:secondo_progetto/my_app/my_app.dart';
import 'mock/mock_magazzino_remote_datasource.dart';


void main() async {
  F.appFlavor = Flavor.mock;

  // override datasources
  ShopRepository.remoteDatasource = MockShopRemoteDatasource();
  MagazzinoRepository.remoteDatasource = MockMagazzinoRemoteDatasource();

  appMain();
}
