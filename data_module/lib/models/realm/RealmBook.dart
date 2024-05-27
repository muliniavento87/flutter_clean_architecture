import 'package:json_annotation/json_annotation.dart';
import 'package:realm/realm.dart';
part 'RealmBook.g.dart';


/// Modello Book per dati locali db REALM
@RealmModel()
@JsonSerializable()
class $RealmBook {
  @PrimaryKey()
  late int id;

  late String? name;
  late int? status;
  late double? price;

  static $RealmBook fromJson(Map<String, dynamic> json) => _$$RealmBookFromJson(json);

  Map<String, dynamic> toJson() => _$$RealmBookToJson(this);
}