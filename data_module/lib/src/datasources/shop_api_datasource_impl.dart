import 'package:awesome_dio_interceptor/awesome_dio_interceptor.dart';
import 'package:data_module/data_module.dart';
import 'package:data_module/src/abstractions/shop_api_datasource.dart';
import 'package:data_module/src/constants/urls.dart';
import 'package:dio/dio.dart';
import 'package:domain_module/models/book.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ShopApiDatasourceImpl implements ShopApiDatasource {
  ProviderRef ref;
  Dio client;

  ShopApiDatasourceImpl(this.ref, {required this.client});

  @override
  Future<List<Book>> getCatalogo() async {
    //return client.get(path);
    final Map<String, dynamic> queryParams = {
      "lang": "it"
    };

    List<Book> books = [];

    try{
      // chiamata reale
      Response<dynamic> response = await client.get(
          Urls.getCatalogoShop,
          options: Options(headers: {
            "Accept": "application/json",
          }),
          queryParameters: queryParams
      );

      if(response.data is List<dynamic>) {
        for (var r in response.data) {
          books.add(Book.fromJson(r));
        }
        return books;
      }
    }
    catch(e) {
      print(e);
    }

    return [];
  }
}


