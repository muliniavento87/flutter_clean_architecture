
import 'package:data_module/models/realm/RealmBook.dart';
import 'package:data_module/models/rest/RestBook.dart';

class Book {
  final int id;
  final String name;
  final int status;
  final double price;

  Book(this.id, this.name, this.status, this.price);

  ///
  static Book fromRestData($RestBook rb) {
    return Book(
      rb.id,
      rb.name ?? "",
      rb.status ?? 0,
      rb.price ?? 0.0,
    );
  }

  ///
  static Book fromRealmData($RealmBook rb) {
    return Book(
      rb.id,
      rb.name ?? "",
      rb.status ?? 0,
      rb.price ?? 0.0,
    );
  }
}