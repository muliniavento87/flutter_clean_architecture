import 'package:data_module/models/rest/RestBook.dart';
import 'package:data_module/rest_client/magazzino_rest_client.dart';
import 'package:dio/dio.dart';
import 'package:common_module/constants/rest_magazzino_endpoints.dart';

///
class MagazzinoRemoteDatasource {

  static Dio dio = RestClient().dioMagazzino();

  // questa può essere overraidata dal mock
  Future<List<$RestBook>> getCatalogo() async {
    final Map<String, dynamic> queryParams = {
      "lang": "it"
    };

    List<$RestBook> restBooks = [];

    // chiamata reale
    Response<dynamic> response = await dio.get(
          RestMagazzinoEndpoints.getCatalogo,
          options: Options(headers: {
            "Accept": "application/json",
          }),
          queryParameters: queryParams
    );

    if(response.data is List<dynamic>) {
      for (var r in response.data) {
        restBooks.add($RestBook.fromJson(r));
      }
      return restBooks;
    }
    return [];
  }
}